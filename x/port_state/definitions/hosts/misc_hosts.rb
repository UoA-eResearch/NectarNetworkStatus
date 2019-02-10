module HOSTS
  def HOSTS::hosts
    { 
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
