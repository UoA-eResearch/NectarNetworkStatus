class Nodes
    
  def initialize
    #Dynamically load the host definitions, by requiring all files in the directory
    path = "#{File.dirname(__FILE__)}/.." #File.expand_path(File.dirname(__FILE__))
    @host_defs = load_node_spec(path: path, folder: 'hosts')
    @switch_defs = load_node_spec(path: path, folder: 'switches')
  end
  
  def each_host
    @host_defs.each { |k,v| yield k,v }
  end
  
  def each_switch
    @switch_defs.each { |k,v| yield k,v }
  end
  
  def each_node
    @host_defs.each { |k,v| yield k,v }
    @switch_defs.each { |k,v| yield k,v }
  end
      
  def load_node_spec(path:, folder:)
    result = {}
    Dir.open("#{path}/#{folder}").each do |filename|
      if filename =~ /^[a-z].*\.rb$/
        begin
          load "#{path}/#{folder}/#{filename}"
          result = result.merge(HOSTS::hosts)
        rescue Exception => error
          puts "Skipping loading '#{path}/#{folder}/#{filename}' Error: #{error}"
        end
      end
    end
    return result
  end
  
  def [](index)
    @host_defs[index] || @switch_defs[index]
  end

  def admin_up?(host_name:, port_name:)
    return (host = self[host_name]) != nil && 
           (port = host['ports'][port_name]) != nil &&
           (port['remote']['host'] != '')
  end
  
  def set_port_rect(host_name:, port_name:, rectangle:, attach: :calc, id: nil )
    if self[host_name] != nil && self[host_name]['ports'][port_name] != nil
      self[host_name]['ports'][port_name]['rect'] = rectangle 
      self[host_name]['ports'][port_name]['attach'] = attach
      self[host_name]['ports'][port_name]['id'] = id
    end 
  end
  
  def port_label(host_name:, port_name: )
    self[host_name] != nil && self[host_name]['ports'][port_name] != nil ?  self[host_name]['ports'][port_name]['label'] : ''
  end
  
  def line(switch_name:, switch_port:, host_name:, host_port:)
    a = attachment_point(host_name: switch_name, port_name: switch_port)
    b = attachment_point(host_name: host_name, port_name: host_port, source_point: a)
    return a,b
  end
  
  def remote_node_port(host_name:, port:)
    if self[host_name] != nil && self[host_name]['ports'][port] != nil 
      self[host_name]['ports'][port]['remote']
    else
      nil
    end
  end
  
  def attachment_point(host_name:, port_name:, source_point: nil)
    if self[host_name] != nil && self[host_name]['ports'][port_name] != nil &&  self[host_name]['ports'][port_name]['rect'] != nil
      x = self[host_name]['ports'][port_name]['rect'].origin.x + self[host_name]['ports'][port_name]['rect'].width/2
      y = self[host_name]['ports'][port_name]['rect'].origin.y
      if source_point != nil && source_point.y > y && source_point.y < y + self[host_name]['ports'][port_name]['rect'].height
        return Point.new(x, source_point.y) #Same level as the source
      else
        case self[host_name]['ports'][port_name]['attach']
        when :high
          return Point.new(x, y + self[host_name]['ports'][port_name]['rect'].height/3)
        when :low
          return Point.new(x, y + self[host_name]['ports'][port_name]['rect'].height*2/3)
        when :calc #Center
          return Point.new(x, y + self[host_name]['ports'][port_name]['rect'].height/2)
        end
      end 
    else
      return nil
    end
  end
    
end
