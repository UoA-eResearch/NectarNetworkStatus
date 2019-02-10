#!/usr/local/bin/ruby
require 'wikk_configuration'
require_relative "../rlib/check_switch_ports.rb"
require_relative "../rlib/check_host_ports.rb"

conf_file = "#{File.expand_path(File.dirname(__FILE__))}/../conf/config.json"
@conf = WIKK::Configuration.new(conf_file)

File.open("#{File.dirname(__FILE__)}/../www/host_status.json.new", 'w') do |fd|
  fd.puts "{"
    Host_Port_Status::host_port_status(conf: @conf).each do |hb, l|
      if l != ""
        fd.print l
      end
    end
    Switch_Port_Status::switch_port_status(conf: @conf).each do |s, l|
      if l != ""
        fd.print l
      end
    end
  fd.puts "\"date\": { \"state\": \"#{Time.now.strftime("%Y-%m-%dT%H:%M")}\" }"
  fd.puts "}"
end
`/bin/mv -f #{File.dirname(__FILE__)}/../www/host_status.json.new #{File.dirname(__FILE__)}/../www/host_status.json`
`/bin/cp -f #{File.dirname(__FILE__)}/../www/host_status.json #{@conf.web_dir}`
