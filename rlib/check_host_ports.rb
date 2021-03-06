require 'net/ssh'
require 'open3'
require 'net/ping'

module Host_Port_Status
  require_relative '../rlib/nodes.rb'   

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

=begin
  def self.ssh_host(host:, cmd:)
    r = ''
    Open3.popen3("/usr/bin/ssh -i ~/.ssh/ntr_srv_id_rsa root@#{host} #{cmd}") do |stdin, stdout, stderr, wait_thr|
      while line = stdout.gets
        r << line
      end
    end
    return r
  end
=end

  def self.lacp_report(host:, bond_interface:, conf:)
    status = {}
    interface = bond_interface #First time through, we get the overall status, then we get the slave interface status reports
    lacp_rate = partner_mac = link_count = local_pc = remote_pc = interface = ''
    #File.open("/proc/net/bonding/#{bond_interface}","r") do |fd|  #If done on the local host
    ssh_host(host: host, cmd: "cat /proc/net/bonding/#{bond_interface}", key_type: :keys, key: conf.host_ssh_key, user: conf.host_ssh_user) do |o|
      o.each_line do |l| #if done on the local host.
      	case l.strip!
      	when /LACP rate:/
      	  lacp_rate = l.split(' ')[-1]
      	when /Partner Mac Address:/
      	  partner_mac = l.split(' ')[-1]
      	when /Number of ports:/
      	  link_count = l.split(' ')[-1]
      	when /Actor Key:/
      	  local_pc = l.split(' ')[-1]
      	when /Partner Key:/
      	  remote_pc = l.split(' ')[-1]
      	when /Slave Interface:/
      	  interface = l.split(' ')[-1]
      	when /MII Status:/
      	  status[interface] = l.split(' ')[-1]
      	end
      end
    end

    puts host
    puts "Local PC: #{local_pc} Remote PC: #{remote_pc} Link Count: #{link_count} Partner: #{partner_mac} LACP: #{lacp_rate}"
    print "#{bond_interface}: #{status[bond_interface]}"
    status.sort.each do |interface, state|
      print "    #{interface}: #{state}" if interface != bond_interface
    end
    puts
  end

  def self.lacp_status_of_known_sites(host:, bond_interface:, switch_lacp_key: nil, conf:)
    output = ""
    status = {}
    interface = bond_interface #First time through, we get the overall status, then we get the slave interface status reports
    lacp_rate = partner_mac = link_count = local_pc = partner_key = oper_key = ''
    port_state = '0'
    ssh_host(host: host, cmd: "cat /proc/net/bonding/#{bond_interface}", key_type: :keys, key: conf.host_ssh_key, user: conf.host_ssh_user) do |o|
      o.each_line do |l| #if done on the local host.
        case l.strip!
        when /LACP rate:/
          lacp_rate = l.split(' ')[-1].strip
        when /Partner Mac Address:/
          partner_mac = l.split(' ')[-1].strip
        when /Number of ports:/
          link_count = l.split(' ')[-1].strip
        when /Actor Key:/
          local_pc = l.split(' ')[-1].strip
        when /Partner Key:/
          partner_key = l.split(' ')[-1].strip
        when /Slave Interface:/
          interface = l.split(' ')[-1].strip
          partner_key = oper_key = ''#overwrite later.
          status[interface] = 'down' #overwrite later.
          port_state = '0'           #overwrite later.
        when /port state:/
          port_state = l.split(' ')[-1].strip
        when /MII Status:/
          status[interface] = l.split(' ')[-1].strip
        when /oper key:/
          oper_key = l.split(' ')[-1].strip
          status[interface] = 'key_error' if partner_key != '' && ( oper_key != partner_key || partner_key != switch_lacp_key || port_state != '63' ) && status[interface] == 'up'
        end
      end
    end
    #Want output of form
    #  "adm01_T1": { "state": "up" }, // where "adm01_T1" is of the form "<host>_<port>"
    status.sort.each do |interface, state|
      output << "\"#{host}_#{interface}\":  { \"state\": \"#{state}\", \"description\": \"link count #{link_count} partner_key #{partner_key} oper_key #{oper_key} lacp_rate #{lacp_rate} Expected_lacp_key #{switch_lacp_key} port_state #{port_state}\" },\n"
    end
    return output
  end

  def self.ping_site(host:, interface:, ip:)
    output = ""
    state = Net::Ping::External.new(ip, 7, 10).ping? ? 'up' : 'down'
    output << "\"#{host}_#{interface}\":  { \"state\": \"#{state}\", \"description\": \"ip: #{ip}\" },\n"
    return output
  end

  def self.host_port_status(conf:)
    threads = []  
    output = {}

    @nodes = Nodes.new
    
    @nodes.each_switch do |host_name, host_record|
      host_record['ports'].each do |port_name, port_record|
        if port_record['ip'] != nil && port_record['ip'] != ''
          threads << Thread.new(host_name,port_name,port_record['ip']) do |hn,pn,ip| 
            output["#{hn.gsub(/ /,'_')}_#{pn.gsub(/ /,'_')}"] = ping_site(host: hn, interface: pn.gsub(/ /,'_'), ip: ip)
          end 
        end
      end
    end
    
    @nodes.each_host do |host_name, host_record|
      host_record['ports'].each do |port_name, port_record|
        if port_record['bond'] != nil
          lacp_key = port_record['remote']['Port-Channel'] != nil ? port_record['remote']['Port-Channel'].to_s : nil
          threads << Thread.new(host_name,port_record['bond'],lacp_key) do |hn,bond,lk| -
            output["#{hn}_bond#{bond}"] = lacp_status_of_known_sites(host: hn, bond_interface: "bond#{bond}", switch_lacp_key: lk, conf: conf)
          end
        end
        if port_record['ip'] != nil && port_record['ip'] != ''
          threads << Thread.new(host_name,port_name, port_record['ip']) do |hn,pn,ip| 
            output["#{hn.gsub(/ /,'_')}_#{pn.gsub(/ /,'_')}"] = ping_site(host: hn, interface: pn.gsub(/ /,'_'), ip: ip)
          end
        end
      end
    end

    threads.each { |thr| thr.join }
    return output.sort
  end

end
