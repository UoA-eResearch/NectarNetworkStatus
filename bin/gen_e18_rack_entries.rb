def host_lines(u:, port:)
  pc = port + 50
s = <<-EOF
      'e18u#{"%02d"%u}-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/#{port}', 'Port-Channel' => #{pc} }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/#{port}', 'Port-Channel' => #{pc} }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/#{u}'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.#{u}' }
        }
      },
EOF
end

def gen_host_entries
  (1..7).each do |u|
    puts host_lines(u: u, port: 22 - (7-u)*2)
  end
  
  (8..20).each do |u|
    puts host_lines(u: u, port: 48 - (u-8)*2)
  end

  (23..34).each do |u|
    puts host_lines(u: u, port: (u-23)*2 + 25 )
  end

  (35..42).each do |u|
    puts host_lines(u: u, port: 23 - (u-35)*2)
  end
end

def switch_lines(u:, port:, host_port:)
s = <<-EOF
'eth 1/1/#{port}' => {  'label' => '#{port}', 'remote' => {'host' => 'e18u#{"%02d"%u}-p', 'port' => '#{host_port}'} },
EOF
end

def gen_switch_entries
  ['enp32s0f0','enp32s0f1d1'].each do |host_interface|
    o = []
    (1..7).each do |u|
      o << switch_lines(u: u, port: 22 - (7-u)*2, host_port: host_interface)
    end
    
    (8..20).each do |u|
      o << switch_lines(u: u, port: 48 - (u-8)*2, host_port: host_interface)
    end

    (23..34).each do |u|
      o << switch_lines(u: u, port: (u-23)*2 + 25, host_port: host_interface)
    end
  
    (35..42).each do |u|
      o << switch_lines(u: u, port: 23 - (u-35)*2, host_port: host_interface)
    end
    puts o.sort, "\n"
  end
end

def draw_switch_lines(u:, port:)
  "{ :type => '2#{(port & 1) == 1 ? 'l':'r'}', :name => 'e18u#{"%02d"%u}-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, ##{"%2d"%port}"
end

def gen_draw_switch_lines
  o = []
  (1..7).each do |u|
    port = 22 - (7-u)*2
    o[port] = draw_switch_lines(u: u, port: port)
  end
  
  (8..20).each do |u|
    port = 48 - (u-8)*2
    o[port] = draw_switch_lines(u: u, port: port)
  end

  (23..34).each do |u|
    port = (u-23)*2 + 25
    o[port] = draw_switch_lines(u: u, port: port)
  end
  
  (35..42).each do |u|
    port = 23 - (u-35)*2
    o[port] = draw_switch_lines(u: u, port:  port)
  end
  
  puts o, "\n"
end

def lacp_lines(u:, port:)
  pc = port + 50
  return "['e18u#{"%02d"%u}-p', 'bond0', #{pc}],"
end
  
def gen_lacp_entries
  o = []
  (1..7).each do |u|
    o << lacp_lines(u: u, port: 22 - (7-u)*2)
  end
  
  (8..20).each do |u|
    o << lacp_lines(u: u, port: 48 - (u-8)*2)
  end

  (23..34).each do |u|
    o << lacp_lines(u: u, port: (u-23)*2 + 25)
  end
  
  (35..42).each do |u|
    o << lacp_lines(u: u, port: 23 - (u-35)*2 )
  end
  
  puts o.sort, "\n"
end

gen_host_entries
puts
gen_switch_entries
puts
gen_lacp_entries
puts
gen_draw_switch_lines
