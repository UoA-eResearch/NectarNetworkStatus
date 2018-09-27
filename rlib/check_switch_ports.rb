require 'open3'
module Switch_Port_Status

  def self.ssh_host(host:, user: , key: , cmd:,  key_type: :password)
    running = false
    r = ''
    Open3.popen3("/usr/bin/ssh -i #{key[0]} #{host} #{cmd}") do |stdin, stdout, stderr, wait_thr|
      while line = stdout.gets
        if line =~ /^.*[%>#]/
  	break if running
          running = true
        elsif running
          #puts line
          r << line
        end
      end
    end
    return r
  end

=begin #Not sure why the switches don't like the ruby ssh library
  def self.ssh_host(host:, user: , key: , cmd:,  key_type: :password)
    begin
      Net::SSH.start(host, user, key_type => key) do |ssh|
        # capture all stderr and stdout output from a remote process
        #output = ssh.exec!(host)
        # capture only stdout matching a particular pattern
        stdout = ""
        ssh.exec!(cmd) do |channel, stream, data|
          stdout << data if (stream == :stdout)
        end
        yield stdout
      end
    rescue StandardError => error
      puts "#{error.message}"
      yield ""
    end
  end
=end

  def self.init_bounds
    #Header gives us fixed width field sizes
    @port_s = 0
    @port_l = "Port                 ".length

    @description_s = @port_l
    @description_l = "Description  ".length

    @status_s = @description_s + @description_l
    @status_l = "Status ".length

    @speed_s = @status_s + @status_l
    @speed_l = "Speed        ".length

    @duplex_s = @speed_s + @speed_l
    @duplex_l = "Duplex ".length

    @vlan_s = @duplex_s + @duplex_l
    @vlan_l = "Vlan".length
  end

  def self.process_switch(host:, conf: )
    header = true
    output = ""
  
    begin
      response = ssh_host(host: host, cmd: "show int stat", key_type: :keys, key: conf.switch_ssh_key, user: conf.switch_ssh_user )
    rescue StandardError => e
      puts e
    rescue NotImplementedError => e
      puts e
    end

    response.each_line do |l|
      if header
        header = false
        next
      end
      if l != nil && l.length > 0
        tokens = [ l[@port_s,@port_l].strip, 
                   l[@description_s,@description_l].gsub(/"/,'').strip, 
                   l[@status_s,@status_l].strip.downcase, 
                   l[@speed_s, @speed_l].strip, 
                   l[@duplex_s,@duplex_l].strip, 
                   l[@vlan_s,@vlan_l].strip 
                 ]
        output << "\"#{host}_#{tokens[0].gsub(/ /,'_')}\": { \"state\": \"#{tokens[2]}\", \"description\": \"#{tokens[1]}\", \"speed\": \"#{tokens[3]}\" },\n"
      end
    end
    return output
  end

  def self.switch_port_status(conf:)
    init_bounds
    threads = []  
    output = {}
    conf.switches.each do |host|
      threads << Thread.new { output[host] = process_switch(host: host, conf: conf) }
    end
    threads.each { |thr| thr.join }
    return output.sort
  end

end