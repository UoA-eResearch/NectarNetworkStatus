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
      'x8' => { 
        'port_types' => {'G' => 1},
        'ports' => { 
          'Ma 1/1'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/23'}, 'ip'=>'172.31.80.8' },
        }
      },
      'x9' => { 
        'port_types' => {'G' => 1},
        'ports' => { 
          'Ma 1/1'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/24'}, 'ip'=>'172.31.80.9' },
        }
      },
    }
  end
end
