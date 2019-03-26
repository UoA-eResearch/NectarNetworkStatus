require_relative 'svg'

PORT_SIDE = 16  # side of square port
INTER_PORT = PORT_SIDE/2 # Gap between ports
SERVER_HEIGHT = PORT_SIDE + INTER_PORT
SWITCH_WIDTH = PORT_SIDE * 3 + INTER_PORT
SERVER_WIDTH4 = ((PORT_SIDE + INTER_PORT) * (4 - 1) + PORT_SIDE) + PORT_SIDE 
INTERSWITCH_DISTANCE = SWITCH_WIDTH * 2 + SERVER_WIDTH4 
COLOUR_PORT_TEXT =    'white'
COLOUR_PORT_OFF =     'black'
COLOUR_PORT_ON =      'green'
COLOUR_PORT_FAIL =    'red'
COLOUR_PORT_ERRORS =  'orange'

def port_border_colour(host_name:, port_name:)
  @nodes.admin_up?(host_name: host_name, port_name: port_name) ? COLOUR_PORT_ON : COLOUR_PORT_OFF 
end
  
def draw_port(svg:, label:, origin:, host_name:, port_name:, attach: :calc, onclick: "window.parent.flash_pair(this.id)")
  id = "#{host_name.gsub(/ /,'_')}_#{port_name.gsub(/ /,'_')}"
  port_rect = Rectangle.new(origin, PORT_SIDE, PORT_SIDE)
  port_colour = port_border_colour(host_name: host_name, port_name: port_name)
  svg.group(id: id, onclick: onclick) do |g|
    svg.rectangle(id: 'rect_' + id, top_left: origin, width: PORT_SIDE, height: PORT_SIDE, 
                  style: {:fill=>COLOUR_PORT_OFF, :stroke=>port_colour, "stroke-width"=>(port_colour=='green' ? 2 : 1)})
    svg.text(text: label, bottom_left: Point.new(origin.x+PORT_SIDE/2, origin.y+PORT_SIDE),  dy: -4, 
             style: {"fill"=>COLOUR_PORT_TEXT,"font-size"=>"10"}, textAnchor: 'middle')
  end
  @nodes.set_port_rect(host_name: host_name, port_name: port_name, rectangle: port_rect, attach: attach, id: id)
end

#Simple linear rectangle with ports.
def draw_switch(svg:, origin:, ports:, name:)
  nports = ports.length
  width = SWITCH_WIDTH
  height = ((PORT_SIDE + INTER_PORT) * (nports - 1) + PORT_SIDE)/2 + PORT_SIDE 
  svg.rectangle(top_left: origin, width: width, height: height, style: {:fill=>"white", :stroke=>"black"})
  svg.text(text: name, bottom_left: Point.new(origin.x + width/2, origin.y + height + PORT_SIDE), style: {"font-family"=>"Arial Black", "fill"=>'black',"font-size"=>"12", 'font-weight'=>'bold'}, textAnchor: 'middle')

  c = origin.x + PORT_SIDE/2
  y = origin.y + PORT_SIDE/2
  (1..nports/2).each do |offset|
    draw_port(svg: svg, origin: Point.new(c, y), label: @nodes.port_label(host_name: name, port_name: ports[(offset-1)*2+1]), host_name: name, port_name: ports[(offset-1)*2+1], attach: :low)
    draw_port(svg: svg, origin: Point.new(c + PORT_SIDE + INTER_PORT, y), label: @nodes.port_label(host_name: name, port_name: ports[(offset-1)*2]), host_name: name, port_name: ports[(offset-1)*2], attach: :high)
    y += PORT_SIDE + INTER_PORT
  end
end

def draw_server(svg:, origin:, ports:, name:)
  nports = ports.length
  height = SERVER_HEIGHT
  width = ((PORT_SIDE + INTER_PORT) * (nports - 1) + PORT_SIDE) + PORT_SIDE
  svg.rectangle(top_left: origin, width: width, height: height, style: {:fill=>"white", :stroke=>"black", "stroke-width" => 3})
  svg.text(text: name, bottom_left: Point.new(origin.x, origin.y + height/2), dx: -3, dy: 3, style: {"font-family"=>"Arial Black","fill"=>'black',"font-size"=>"10"}, textAnchor: 'end')

  c = origin.x + PORT_SIDE/2
  y = origin.y + INTER_PORT/2
  (1..nports).each do |offset|
    draw_port(svg: svg, origin: Point.new(c, y), label: @nodes.port_label(host_name: name, port_name: ports[offset - 1]), host_name: name, port_name: ports[offset - 1])    
    c += PORT_SIDE + INTER_PORT
  end
end

def draw_server_6_inner(svg:, origin:, name:, ports: [])
  height = SERVER_HEIGHT
  width = ((PORT_SIDE + INTER_PORT) * (4 - 1) + PORT_SIDE) + PORT_SIDE
  points = [ [origin.x, origin.y], 
             [origin.x + width, origin.y], 
             [origin.x + width, origin.y + height], 
             [origin.x + width - (PORT_SIDE + INTER_PORT * 1.5), origin.y + height],
             [origin.x + width - (PORT_SIDE + INTER_PORT * 1.5), origin.y + height*2],
             [origin.x + (PORT_SIDE + INTER_PORT * 1.5), origin.y + height*2],
             [origin.x + (PORT_SIDE + INTER_PORT * 1.5), origin.y + height],
             [origin.x, origin.y + height]
            ]
  svg.polygon(points:points, style: {:fill=>"white", :stroke=>"black"})        
  svg.text(text: name, bottom_left: Point.new(origin.x, origin.y + height/2),  dx: -3, dy: 3, style: {"fill"=>'black',"font-size"=>"10"}, textAnchor: 'end')

  c = origin.x + PORT_SIDE/2
  y = origin.y + INTER_PORT/2
  (1..4).each do |offset|
    draw_port(svg: svg, origin: Point.new(c, y), label: @nodes.port_label(host_name: name, port_name: ports[offset - 1]), host_name: name, port_name: ports[offset - 1])    
    c += PORT_SIDE + INTER_PORT
  end

  c = origin.x + PORT_SIDE*2
  y = origin.y + height + INTER_PORT/2
  (5..6).each do |offset|
    draw_port(svg: svg, origin: Point.new(c, y), label: @nodes.port_label(host_name: name, port_name: ports[offset - 1]), host_name: name, port_name: ports[offset - 1])    
    c += PORT_SIDE + INTER_PORT
  end
end

def draw_server_6_outer(svg:, origin:, name:, ports: [])
  height = SERVER_HEIGHT
  width = ((PORT_SIDE + INTER_PORT) * (4 - 1) + PORT_SIDE) + PORT_SIDE
  points = [  [origin.x, origin.y], 
              [origin.x + (PORT_SIDE + INTER_PORT * 1.5), origin.y],
              [origin.x + (PORT_SIDE + INTER_PORT * 1.5), origin.y + height],
              [origin.x + width - (PORT_SIDE + INTER_PORT * 1.5), origin.y + height],
              [origin.x + width - (PORT_SIDE + INTER_PORT * 1.5), origin.y],
              [origin.x + width, origin.y], 
              [origin.x + width, origin.y + height * 2],
              [origin.x, origin.y + height * 2]
             ]
  svg.polygon(points:points, style: {:fill=>"white", :stroke=>"black"})        
  svg.text(text: name, bottom_left: Point.new(origin.x, origin.y + height * 1.5),  dx: -3, dy: 3, style: {"fill"=>'black',"font-size"=>"10"}, textAnchor: 'end')

  c = origin.x + PORT_SIDE/2
  y = origin.y + INTER_PORT/2
  (1..2).each do |offset|
    draw_port(svg: svg, origin: Point.new(c, y), label: @nodes.port_label(host_name: name, port_name: ports[offset - 1]), host_name: name, port_name: ports[offset - 1])    
    c += (PORT_SIDE + INTER_PORT)*3
  end

  c = origin.x + PORT_SIDE/2
  y = origin.y + height + INTER_PORT/2
  (3..6).each do |offset|
    draw_port(svg: svg, origin: Point.new(c, y), label: @nodes.port_label(host_name: name, port_name: ports[offset - 1]), host_name: name, port_name: ports[offset - 1])    
    c += PORT_SIDE + INTER_PORT
  end
end

def draw_server_8(svg:, origin:, name:, ports: [])
  nports = 8
  height = SERVER_HEIGHT * 2
  width = ((PORT_SIDE + INTER_PORT) * (nports/2 - 1) + PORT_SIDE) + PORT_SIDE
  svg.rectangle(top_left: origin, width: width, height: height, style: {:fill=>"white", :stroke=>"black", "stroke-width" => 3})
  svg.text(text: name, bottom_left: Point.new(origin.x, origin.y + height/2), dx: -3, dy: 3, style: {"font-family"=>"Arial Black", "fill"=>'black',"font-size"=>"10"}, textAnchor: 'end')

  c = origin.x + PORT_SIDE/2
  y = origin.y + INTER_PORT/2
  (1..4).each do |offset|
    draw_port(svg: svg, origin: Point.new(c, y), label: @nodes.port_label(host_name: name, port_name: ports[offset - 1]), host_name: name, port_name: ports[offset - 1])    
    c += PORT_SIDE + INTER_PORT
  end

  c = origin.x + PORT_SIDE/2
  y = origin.y + height/2 + INTER_PORT/2
  (5..8).each do |offset|
    draw_port(svg: svg, origin: Point.new(c, y), label: @nodes.port_label(host_name: name, port_name: ports[offset - 1]), host_name: name, port_name: ports[offset - 1])    
    c += PORT_SIDE + INTER_PORT
  end
end

def draw_server_2l(svg: , origin:, ports: , name:)
  nports = ports.length
  height = SERVER_HEIGHT
  width = ((PORT_SIDE + INTER_PORT) * (nports - 1) + PORT_SIDE) + PORT_SIDE
  origin.x -=  1
  svg.rectangle(top_left: origin, width: width, height: height, style: {:fill=>"white", :stroke=>"black", "stroke-width" => 3})
  svg.text(text: name, bottom_left: Point.new(origin.x, origin.y + height/2), dx: -3, dy: 3, style: {"font-family"=>"Arial Black", "fill"=>'black',"font-size"=>"10"}, textAnchor: 'end')

  c = origin.x + PORT_SIDE/2
  y = origin.y + INTER_PORT/2
  (1..nports).each do |offset|
    draw_port(svg: svg, origin: Point.new(c, y), label: @nodes.port_label(host_name: name, port_name: ports[offset - 1]), host_name: name, port_name: ports[offset - 1])    
    c += PORT_SIDE + INTER_PORT
  end
end

def draw_server_2r(svg: , origin:, ports: , name:)
  nports = ports.length
  height = SERVER_HEIGHT
  width = ((PORT_SIDE + INTER_PORT) * (nports - 1) + PORT_SIDE) + PORT_SIDE
  origin.x +=  width + 2
  svg.rectangle(top_left: origin, width: width, height: height, style: {:fill=>"white", :stroke=>"black", "stroke-width" => 3})
  svg.text(text: name, bottom_left: Point.new(origin.x + width, origin.y + height/2), dx: +3, dy: 3, style: {"font-family"=>"Arial Black", "fill"=>'black',"font-size"=>"10"}, textAnchor: 'start')

  c = origin.x + PORT_SIDE/2
  y = origin.y + INTER_PORT/2
  (1..nports).each do |offset|
    draw_port(svg: svg, origin: Point.new(c, y), label: @nodes.port_label(host_name: name, port_name: ports[offset - 1]), host_name: name, port_name: ports[offset - 1])    
    c += PORT_SIDE + INTER_PORT
  end
end

def draw_server_1l(svg: , origin:, ports: , name:)
  nports = ports.length
  height = SERVER_HEIGHT
  width = ((PORT_SIDE + INTER_PORT) * (nports - 1) + PORT_SIDE) + PORT_SIDE
  origin.x -= 1
  svg.rectangle(top_left: origin, width: width, height: height, style: {:fill=>"white", :stroke=>"black", "stroke-width" => 3})
  svg.text(text: name, bottom_left: Point.new(origin.x, origin.y + height/2), dx: -3, dy: 3, style: {"font-family"=>"Arial Black", "fill"=>'black',"font-size"=>"10"}, textAnchor: 'end')

  c = origin.x + PORT_SIDE/2
  y = origin.y + INTER_PORT/2
  (1..nports).each do |offset|
    draw_port(svg: svg, origin: Point.new(c, y), label: @nodes.port_label(host_name: name, port_name: ports[offset - 1]), host_name: name, port_name: ports[offset - 1])    
    c += PORT_SIDE + INTER_PORT
  end
end

def draw_server_1r(svg: , origin:, ports: , name:)
  nports = ports.length
  height = SERVER_HEIGHT
  width = ((PORT_SIDE + INTER_PORT) * (nports - 1) + PORT_SIDE) + PORT_SIDE
  origin.x +=  width + 2
  svg.rectangle(top_left: origin, width: width, height: height, style: {:fill=>"white", :stroke=>"black", "stroke-width" => 3})
  svg.text(text: name, bottom_left: Point.new(origin.x + width, origin.y + height/2), dx: +3, dy: 3, style: {"font-family"=>"Arial Black", "fill"=>'black',"font-size"=>"10"}, textAnchor: 'start')

  c = origin.x + PORT_SIDE/2
  y = origin.y + INTER_PORT/2
  (1..nports).each do |offset|
    draw_port(svg: svg, origin: Point.new(c, y), label: @nodes.port_label(host_name: name, port_name: ports[offset - 1]), host_name: name, port_name: ports[offset - 1])    
    c += PORT_SIDE + INTER_PORT
  end
end

def draw_line(svg:, switch_name: , switch_port: , host_name:  , host_port:  )
  line_start, line_end = @nodes.line(switch_name: switch_name, switch_port: switch_port, host_name: host_name, host_port: host_port)
  if line_start != nil && line_end != nil
    line_id = ('line_' + switch_name + '_' + switch_port + '-' + host_name + '_' + host_port).gsub(/ /, '_') 
    svg.line(line_start: line_start, line_end: line_end, style: {:stroke=>"2"}, id: line_id)
  end
end

def draw_split_line(svg:, switch_name: , switch_port: , host_name:  , host_port:  )
  line_start, line_end = @nodes.line(switch_name: switch_name, switch_port: switch_port, host_name: host_name, host_port: host_port)
  if line_start != nil && line_end != nil
    mid_point = Point.new(line_start.x + (line_end.x - line_start.x)/2,
                          line_start.y + (line_end.y - line_start.y)/2)
    line_id = ('line_' + switch_name + '_' + switch_port + '-' + host_name + '_' + host_port).gsub(/ /, '_') 
    svg.line(line_start: line_start, line_end: mid_point, style: {:stroke=>"2"}, id: line_id)

    line_id = ('line_' +  host_name + '_' + host_port + '-' +  switch_name + '_' + switch_port).gsub(/ /, '_') 
    svg.line(line_start: mid_point, line_end: line_end, style: {:stroke=>"2"}, id: line_id)
  end
end



