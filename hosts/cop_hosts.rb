module HOSTS
  def HOSTS::hosts
    { 
      'cop01-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/1', 'Port-Channel' => 21 }, 'bond' => 0 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/1', 'Port-Channel' => 21 }, 'bond' => 0 },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/2', 'Port-Channel' => 21 }, 'bond' => 0 },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/2', 'Port-Channel' => 21 }, 'bond' => 0 },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/1'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/1'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/1'}, 'ip'=>'172.31.80.128' }
        }
      },
      'cop02-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/3', 'Port-Channel' => 22 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/3', 'Port-Channel' => 22 }, 'bond' => 0  },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/2', 'Port-Channel' => 22 }, 'bond' => 0  },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/4', 'Port-Channel' => 22 }, 'bond' => 0  },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/2'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/2'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/2'}, 'ip'=>'172.31.80.129' }
        }
      },
      'cop03-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/5', 'Port-Channel' => 23 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/5', 'Port-Channel' => 23 }, 'bond' => 0  },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/6', 'Port-Channel' => 23 }, 'bond' => 0 },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/6', 'Port-Channel' => 23 }, 'bond' => 0  },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/3'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/3'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/3'}, 'ip'=>'172.31.80.130' }
        }
      },
      'cop04-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/1', 'Port-Channel' => 24 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/1', 'Port-Channel' => 24 }, 'bond' => 0  },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/2', 'Port-Channel' => 24 }, 'bond' => 0  },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/2', 'Port-Channel' => 24 }, 'bond' => 0  },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/4'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/4'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/4'}, 'ip'=>'172.31.80.131' }
        }
      },
      'cop05-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/3', 'Port-Channel' => 25 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/3', 'Port-Channel' => 25 }, 'bond' => 0  },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/4', 'Port-Channel' => 25 }, 'bond' => 0  },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/4', 'Port-Channel' => 25 }, 'bond' => 0  },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/5'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/5'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/5'}, 'ip'=>'172.31.80.132' }
        }
      },
      'cop06-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/5', 'Port-Channel' => 26 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/5', 'Port-Channel' => 26 }, 'bond' => 0  },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/6', 'Port-Channel' => 26 }, 'bond' => 0  },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/6', 'Port-Channel' => 26 }, 'bond' => 0  },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/6'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/6'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/6'}, 'ip'=>'172.31.80.133' }
        }
      },
      'cop07-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/7', 'Port-Channel' => 27 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/7', 'Port-Channel' => 27 }, 'bond' => 0  },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/8', 'Port-Channel' => 27 }, 'bond' => 0  },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/8', 'Port-Channel' => 27 }, 'bond' => 0  },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/7'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/7'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/7'}, 'ip'=>'172.31.80.134' }
        }
      },
      'cop08-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'enp129s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/7', 'Port-Channel' => 28 }, 'bond' => 0  },
          'enp129s0f1'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/7', 'Port-Channel' => 28 }, 'bond' => 0  },
          'enp2s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/8', 'Port-Channel' => 28 }, 'bond' => 0  },
          'enp2s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/8', 'Port-Channel' => 28 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/8'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/8'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/8'}, 'ip'=>'172.31.80.135' }
        }
      },
      'cop09-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/9', 'Port-Channel' => 29 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/9', 'Port-Channel' => 29 }, 'bond' => 0  },
          'enp3s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/10', 'Port-Channel' => 29 }, 'bond' => 0  },
          'enp3s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/10', 'Port-Channel' => 29 }, 'bond' => 0  },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/9'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/9'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/9'}, 'ip'=>'172.31.80.136' }
        }
      },
      'cop10-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/9', 'Port-Channel' => 29 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/9', 'Port-Channel' => 29 }, 'bond' => 0  },
          'enp130s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/10', 'Port-Channel' => 29 }, 'bond' => 0  },
          'enp130s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/10', 'Port-Channel' => 29 }, 'bond' => 0  },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/10'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/10'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/10'}, 'ip'=>'172.31.80.137' }
        }
      },
      'cop11-p' => { 
        'port_types' => {'T' => 4, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/11', 'Port-Channel' => 31 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/11', 'Port-Channel' => 31 }, 'bond' => 0  },
          'enp130s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/16', 'Port-Channel' => 31 }, 'bond' => 0  },
          'enp130s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/16', 'Port-Channel' => 31 }, 'bond' => 0  },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/11'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/11'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/11'}, 'ip'=>'172.31.80.138' }
        }
      },
    }
  end
end
