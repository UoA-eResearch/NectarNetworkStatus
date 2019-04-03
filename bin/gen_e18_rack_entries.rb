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
  (8..20).each do |u|
    puts host_lines(u: u, port: 48 - (u-8)*2)
  end

  (23..34).each do |u|
    puts host_lines(u: u, port: (u-23)*2 + 25 )
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
    (8..20).each do |u|
      o << switch_lines(u: u, port: 48 - (u-8)*2, host_port: host_interface)
    end

    (23..34).each do |u|
      o << switch_lines(u: u, port: (u-23)*2 + 25, host_port: host_interface)
    end
    puts o.sort, "\n"
  end
end

def lacp_lines(u:, port:)
  pc = port + 50
  return "['e18u#{"%02d"%u}-p', 'bond0', #{pc}],"
end
  
def gen_lacp_entries
  o = []
  (8..20).each do |u|
    o << lacp_lines(u: u, port: 48 - (u-8)*2)
  end

  (23..34).each do |u|
    o << lacp_lines(u: u, port: (u-23)*2 + 25)
  end
  puts o.sort, "\n"
end

gen_host_entries
puts
gen_switch_entries
puts
gen_lacp_entries
