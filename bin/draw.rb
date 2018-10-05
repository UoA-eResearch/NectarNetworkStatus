#!/usr/local/bin/ruby
require_relative '../rlib/svg_routines.rb'        
require_relative '../rlib/drawing_layout.rb'        
require_relative '../rlib/nodes.rb'   

SVG_FILE = "#{File.dirname(__FILE__)}/../www/net.svg"
KNOWN_SERVERS = "#{File.dirname(__FILE__)}/../www/knownsites.js"

@nodes = Nodes.new

drawing_layout #Load the server and switch box layout.

File.open(SVG_FILE, "w") do |f|
  SVG.output(width: 1600, height: 1000, fd: f) do |svg|
    @switch_pairs.each do |pair|
      pair[:switches].each do |switch|
        draw_switch( svg: svg, name: switch[0], origin: switch[1], ports: switch[2] )
      end
      pair[:hosts].each_with_index do |host, i|
        unless host == nil
          case host[:type]
          when '1l'
            draw_server_1l(svg: svg, origin: Point.new(pair[:host_origin_x]-1, pair[:host_origin_y] + INTER_PORT/2 + SERVER_HEIGHT * (i/2).floor ), ports: host[:ports], name: host[:name])
          when '1r'
            draw_server_1r(svg: svg, origin: Point.new(pair[:host_origin_x]+1, pair[:host_origin_y] + INTER_PORT/2 + SERVER_HEIGHT * (i/2).floor ), ports: host[:ports], name: host[:name])
          when '2l'
            draw_server_2l(svg: svg, origin: Point.new(pair[:host_origin_x]-1, pair[:host_origin_y] + INTER_PORT/2 + SERVER_HEIGHT * (i/2).floor ), ports: host[:ports], name: host[:name])
          when '2r'
            draw_server_2r(svg: svg, origin: Point.new(pair[:host_origin_x]+1, pair[:host_origin_y] + INTER_PORT/2 + SERVER_HEIGHT * (i/2).floor ), ports: host[:ports], name: host[:name])
          when '4'
            draw_server(svg: svg, origin: Point.new(pair[:host_origin_x], pair[:host_origin_y] + INTER_PORT/2 + SERVER_HEIGHT * i ), ports: host[:ports], name: host[:name])
          when '6i'
            draw_server_6_inner(svg: svg, origin: Point.new(pair[:host_origin_x], pair[:host_origin_y] + INTER_PORT/2 + SERVER_HEIGHT * i ), ports: host[:ports], name: host[:name])
          when '6o'
            draw_server_6_outer(svg: svg, origin: Point.new(pair[:host_origin_x], pair[:host_origin_y] + INTER_PORT/2 + SERVER_HEIGHT * i ), ports: host[:ports], name: host[:name])
          when '8'
            draw_server_8(svg: svg, origin: Point.new(pair[:host_origin_x], pair[:host_origin_y] + INTER_PORT/2 + SERVER_HEIGHT * i ), ports: host[:ports], name: host[:name])
          end
        end
      end
    end
    @switch_pairs.each do |pair|
      pair[:switches].each do |switch|
        switch[2].each do |interface|
          remote = @nodes.remote_node_port(host_name: switch[0], port: interface)
          if remote != nil && remote != ''
            #draw_line(svg: svg, switch_name: switch[0], switch_port: interface, host_name: remote['host'], host_port: remote['port'])
            draw_split_line(svg: svg, switch_name: switch[0], switch_port: interface, host_name: remote['host'], host_port: remote['port'])
          end
        end
      end
    end
  end
end

File.open(KNOWN_SERVERS, "w") do |fd|
  fd.puts "var known_sites = {"
  @nodes.each_node do |host_name,attributes|
    attributes['ports'].each do |port, port_attributes|
      remote_id = (port_attributes['remote'] != nil && port_attributes['remote']['host'] != '') ? port_attributes['remote']['host'].gsub(/ /,'_') + '_' + port_attributes['remote']['port'].gsub(/ /,'_') : ''
      fd.puts " \"#{host_name.gsub(/ /,'_')}_#{port.gsub(/ /,'_')}\": { \"host_name\": \"#{host_name}\", \"port_name\": \"#{port}\", \"type\": \"rect\" , \"url\": \"\", \"remote_id\": \"#{remote_id}\" },"
    end
  end
  fd.puts " \"null\": { \"host_name\": \"\", \"port_name\": \"\", \"type\": \"filler\" , \"url\": \"\", \"remote_id\": \"\" }"
  fd.puts "};"
end
