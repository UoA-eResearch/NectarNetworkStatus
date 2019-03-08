#!/usr/local/bin/ruby
require 'ostruct'
require 'snmp'
require 'json'

require_relative '../rlib/snmp_override.rb'

class Switch_Interface_Status
  attr_accessor :switch

  def initialize
    @community = JSON.parse(File.read("#{File.expand_path(File.dirname(__FILE__))}/../conf/auth.json"))
    @switch = {}
    (1..11).each do |s|
      switch_name = "x#{s}"
      @switch[switch_name] = OpenStruct.new
      @switch[switch_name].interface = {}
      @switch[switch_name].interface_id = {}      
      collect_all_interface_ids(switch: switch_name)
    end

    (1..11).each do |s|
      switch_name = "x#{s}"
      collect_interface_status(switch: switch_name)
      collect_interface_speed(switch: switch_name)
    end
  end

  #Collect the local interface names.
  # @param switch [String] host name of the switch we are to query
  def collect_all_interface_ids(switch:)
    snmp_walk(host: switch, oid: ['IF-MIB::ifName']) do |k,v|
      interface_id = k[-1] #Last member of array, created by split('.')
      if interface_id
        @switch[switch].interface[interface_id] = OpenStruct.new
        @switch[switch].interface[interface_id].name = v
        @switch[switch].interface[interface_id].state = 2
        @switch[switch].interface_id[v] = interface_id
      end
    end
  end

  #Collect the remote host name, and remote interface name, for each local interface
  # @param switch [String] host name of the switch we are to query
  def collect_interface_status(switch:)
    snmp_walk(host: switch, oid: ['IF-MIB::ifOperStatus']) do |k,v|
      interface_id = k[-1] #Last member of array, created by split('.')
      if interface_id && @switch[switch].interface[interface_id]
        @switch[switch].interface[interface_id].state = (v == '1' ? "up" : "down") #Down == 2, but have seen 6 as a response.
      end
    end
  end

  #Collect the remote host name, and remote interface name, for each local interface
  # @param switch [String] host name of the switch we are to query
  def collect_interface_speed(switch:)
    snmp_walk(host: switch, oid: ['IF-MIB::ifHighSpeed']) do |k,v|
      interface_id = k[-1] #Last member of array, created by split('.')
      if interface_id && @switch[switch].interface[interface_id]
        @switch[switch].interface[interface_id].speed = "#{v} Mbit" 
      end
    end
  end

  def interface_name(switch:, interface_id:)
    @switch[switch].interface[interface_id].name
  end
  
  def abbreviate_interface_name(long_name:)
    long_name.gsub(/TenGigabitEthernet/,'Te').gsub(/fortyGigE/,'fo').gsub(/GigabitEthernet/,'Gi').gsub(/ethernet1/,'eth 1')
  end
  
  def gen_json_rows()
    output = ""
    @switch.each do |s,v1|
      v1.interface.each do |i,v2|
        short_name = abbreviate_interface_name(long_name: v2.name)
        output << "\"#{s}_#{short_name.gsub(/ /,'_')}\": { \"state\": \"#{v2.state}\", \"description\": \"#{v2.name}\", \"speed\": \"#{v2.speed}\" },\n"
      end
    end
    return output
  end

  #Run a single SNMP query to retrieve the OID or OIDS passed in.
  # @param host [String] Hostname to connect to.
  # @param oid [String, Array<String>] The OIDS we want to retrieve from this switch.
  private def snmp_walk(host:, oid:)
    begin
      SNMP::Manager.open(:Host => host, :Community => "#{@community['snmp_community_r']}", :Version => :SNMPv2c) do |manager|
        manager.walk(oid) do |row|
          row.each do |vb| 
              oid = vb.name.to_s.split('.')
              yield oid, vb.value.to_s
          end
        end
      end
    rescue Exception => message
      print "#{@name}: #{message}\n"
    end
  end
end

#sx = Switch_Interface_Status.new
#sx.switch.each do |s,v1|
#  v1.interface.each do |i,v2|
#    puts "#{s} #{v2.name} #{v2.state} #{v2.speed}"
#  end
#end
