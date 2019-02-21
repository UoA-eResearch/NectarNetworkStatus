class MacTable
  attr_accessor :macs
  def initialize(switch)
    #SNMP OID is missing, so ssh to switch and get the individual ports client's mac address
    lines = `/usr/bin/ssh #{switch} show mac-address | /bin/grep '/'`
    @macs = {}
    lines.each_line do |l|
      tokens = l.split("\t")
      port_type, port_number, discard = tokens[3].split(' ')
      @macs["#{expand_port_name(port_type)} #{port_number}"] = tokens[1]
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
