module HOSTS
  def HOSTS::hosts
    { 
      'k02' => { 
        'port_types' => {'G' => 1},
        'ports' => { 
          'G1'  => { 'label' => 'G1', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/41'}, 'ip'=>'172.31.80.252' },
        }
      },
      'TDC_BR' => { 
        'port_types' => {'T' => 1},
        'ports' => { 
          'c4'  => { 'label' => 'T1', 'remote' => {'host' => 'x1', 'port' => 'Te 1/51'}, 'ip'=>'130.216.252.86'},
        }
      },
      'OGG_BR' => { 
        'port_types' => {'T' => 1},
        'ports' => { 
          'c4'  => { 'label' => 'T1', 'remote' => {'host' => 'x1', 'port' => 'Te 1/52'}, 'ip'=>'130.216.252.82' },
        }
      },
    }
  end
end
