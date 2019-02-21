require 'open3'

#Fetch mac addresses on ports on the switch. 
#There may be many to one, but we don't care in this case.
#Only the ports with a single host connected, with no VMs running, are of interest.
class MacTable
  attr_accessor :macs
  def initialize(switch)
    #SNMP OID is missing, so ssh to switch and get the individual ports client's mac address
    @macs = {}
    Open3.popen3("/usr/bin/ssh #{switch} show mac-address | /bin/grep '/'") do |stdin, stdout, stderr, wait_thr|
      while line = stdout.gets
        tokens = line.split("\t")
        port_type, port_number, discard = tokens[3].split(' ')
        @macs["#{expand_port_name(port_type)} #{port_number}"] = tokens[1]
      end
    end
  end

  def expand_port_name(pn)
    case pn.downcase
    when "gi"; "GigabitEthernet"
    when "te"; "TenGigabitEthernet"
    when "fo"; "fortyGigE"
    else pn
    end
  end

end

#x1 = MacTable.new('x1')
#p x1.macs
