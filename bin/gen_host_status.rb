#!/usr/local/bin/ruby
require_relative "../rlib/check_switch_ports.rb"
require_relative "../rlib/check_host_ports.rb"

File.open('/home/rbur004/www/host_status.json.new', 'w') do |fd|
  fd.puts "{"
    Host_Port_Status::host_port_status.each do |hb, l|
      if l != ""
        fd.print l
      end
    end
    Switch_Port_Status::switch_port_status.each do |s, l|
      if l != ""
        fd.print l
      end
    end
  fd.puts "\"date\": { \"state\": \"#{Time.now.strftime("%Y-%m-%dT%H:%M")}\" }"
  fd.puts "}"
end
`/bin/mv -f /home/rbur004/www/host_status.json.new /home/rbur004/www/host_status.json`
