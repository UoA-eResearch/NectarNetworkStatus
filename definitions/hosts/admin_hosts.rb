module HOSTS
  def HOSTS::hosts
    { 
      'adm01-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/12', 'Port-Channel' => 11 }, 'bond' => 0 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/12', 'Port-Channel' => 11 }, 'bond' => 0 },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/13', 'Port-Channel' => 11 }, 'bond' => 0 },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/13', 'Port-Channel' => 11 }, 'bond' => 0 },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/12'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'T2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/12'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/12'}, 'ip'=>'172.31.80.31' }
        }
      },
      'adm02-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/12', 'Port-Channel' => 12 }, 'bond' => 0 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/12', 'Port-Channel' => 12 }, 'bond' => 0 },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/13', 'Port-Channel' => 12 }, 'bond' => 0 },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/13', 'Port-Channel' => 12 }, 'bond' => 0 },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/15'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/15'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/15'}, 'ip'=>'172.31.80.32' }
        }
      },
      'ctr01-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/14', 'Port-Channel' => 13 }, 'bond' => 0 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/14', 'Port-Channel' => 13 }, 'bond' => 0 },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/15', 'Port-Channel' => 13 }, 'bond' => 0 },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/15', 'Port-Channel' => 13 }, 'bond' => 0 },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/13'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/13'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/13'}, 'ip'=>'172.31.80.41' }
        }
      },
      'ctr02-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/14', 'Port-Channel' => 14 }, 'bond' => 0 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/14', 'Port-Channel' => 14 }, 'bond' => 0 },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/15', 'Port-Channel' => 14 }, 'bond' => 0 },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/15', 'Port-Channel' => 14 }, 'bond' => 0 },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/16'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/16'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/16'}, 'ip'=>'172.31.80.42' }
        }
      },
      'ctr03-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/16', 'Port-Channel' => 15 }, 'bond' => 0 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/16', 'Port-Channel' => 15 }, 'bond' => 0 },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/17', 'Port-Channel' => 15 }, 'bond' => 0 },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/17', 'Port-Channel' => 15 }, 'bond' => 0 },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/14'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/14'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/14'}, 'ip'=>'172.31.80.43' }
        }
      },
    }
  end
end
