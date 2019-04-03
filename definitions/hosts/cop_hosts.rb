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
          'enp129s0f1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/7', 'Port-Channel' => 28 }, 'bond' => 0  },
          'enp129s0f0'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/7', 'Port-Channel' => 28 }, 'bond' => 0  },
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
          'enp94s0f1'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/9', 'Port-Channel' => 29 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/10', 'Port-Channel' => 29 }, 'bond' => 0  },
          'enp94s0f0'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/10', 'Port-Channel' => 29 }, 'bond' => 0  },
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
          'enp94s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/16', 'Port-Channel' => 31 }, 'bond' => 0  },
          'enp94s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/16', 'Port-Channel' => 31 }, 'bond' => 0  },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/11'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/11'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/11'}, 'ip'=>'172.31.80.138' }
        }
      },
      #E18 Rack idataplex nodes
      'e18u08-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/48', 'Port-Channel' => 98 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/48', 'Port-Channel' => 98 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/8'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.8' }
        }
      },
      'e18u09-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/46', 'Port-Channel' => 96 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/46', 'Port-Channel' => 96 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/9'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.9' }
        }
      },
      'e18u10-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/44', 'Port-Channel' => 94 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/44', 'Port-Channel' => 94 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/10'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.10' }
        }
      },
      'e18u11-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/42', 'Port-Channel' => 92 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/42', 'Port-Channel' => 92 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/11'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.11' }
        }
      },
      'e18u12-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/40', 'Port-Channel' => 90 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/40', 'Port-Channel' => 90 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/12'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.12' }
        }
      },
      'e18u13-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/38', 'Port-Channel' => 88 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/38', 'Port-Channel' => 88 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/13'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.13' }
        }
      },
      'e18u14-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/36', 'Port-Channel' => 86 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/36', 'Port-Channel' => 86 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/14'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.14' }
        }
      },
      'e18u15-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/34', 'Port-Channel' => 84 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/34', 'Port-Channel' => 84 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/15'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.15' }
        }
      },
      'e18u16-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/32', 'Port-Channel' => 82 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/32', 'Port-Channel' => 82 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/16'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.16' }
        }
      },
      'e18u17-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/30', 'Port-Channel' => 80 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/30', 'Port-Channel' => 80 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/17'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.17' }
        }
      },
      'e18u18-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/28', 'Port-Channel' => 78 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/28', 'Port-Channel' => 78 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/18'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.18' }
        }
      },
      'e18u19-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/26', 'Port-Channel' => 76 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/26', 'Port-Channel' => 76 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/19'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.19' }
        }
      },
      'e18u20-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/24', 'Port-Channel' => 74 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/24', 'Port-Channel' => 74 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/20'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.20' }
        }
      },
      'e18u23-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/25', 'Port-Channel' => 75 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/25', 'Port-Channel' => 75 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/23'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.23' }
        }
      },
      'e18u24-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/27', 'Port-Channel' => 77 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/27', 'Port-Channel' => 77 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/24'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.24' }
        }
      },
      'e18u25-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/29', 'Port-Channel' => 79 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/29', 'Port-Channel' => 79 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/25'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.25' }
        }
      },
      'e18u26-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/31', 'Port-Channel' => 81 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/31', 'Port-Channel' => 81 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/26'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.26' }
        }
      },
      'e18u27-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/33', 'Port-Channel' => 83 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/33', 'Port-Channel' => 83 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/27'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.27' }
        }
      },
      'e18u28-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/35', 'Port-Channel' => 85 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/35', 'Port-Channel' => 85 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/28'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.28' }
        }
      },
      'e18u29-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/37', 'Port-Channel' => 87 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/37', 'Port-Channel' => 87 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/29'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.29' }
        }
      },
      'e18u30-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/39', 'Port-Channel' => 89 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/39', 'Port-Channel' => 89 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/30'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.30' }
        }
      },
      'e18u31-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/41', 'Port-Channel' => 91 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/41', 'Port-Channel' => 91 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/31'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.31' }
        }
      },
      'e18u32-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/43', 'Port-Channel' => 93 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/43', 'Port-Channel' => 93 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/32'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.32' }
        }
      },
      'e18u33-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/45', 'Port-Channel' => 95 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/45', 'Port-Channel' => 95 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/33'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.33' }
        }
      },
      'e18u34-p' => { 
        'port_types' => {'T' => 2, 'G' => 2, 'IMM' => 1},
        'ports' => { 
          'enp32s0f0'  => { 'label' => 'T1', 'remote' => {'host' => 'x10', 'port' => 'eth 1/1/47', 'Port-Channel' => 97 }, 'bond' => 0  },
          'enp32s0f1d1'  => { 'label' => 'T2', 'remote' => {'host' => 'x11', 'port' => 'eth 1/1/47', 'Port-Channel' => 97 }, 'bond' => 0  },
          'eno1'  => { 'label' => 'G1', 'remote' => {'host' => 'x12', 'port' => 'Eth 1/34'}, 'bond' => 1 },
          'eno2'  => { 'label' => 'G2', 'remote' => {'host' => '', 'port' => ''}, 'bond' => 1 },
          'IMM'  => { 'label' => 'M', 'remote' => {'host' => '', 'port' => ''}, 'ip'=>'172.31.81.34' }
        }
      },
    }
  end
end
