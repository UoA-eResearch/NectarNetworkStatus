module HOSTS
  def HOSTS::hosts
    { 
      'sto01-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/25', 'Port-Channel' => 61 }, 'bond' => 2 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/25', 'Port-Channel' => 41 }, 'bond' => 0  },
          'enp130s0f3'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/26', 'Port-Channel' => 41 }, 'bond' => 0  },
          'enp130s0f2'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/26', 'Port-Channel' => 41 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x4', 'port' => 'Te 1/27', 'Port-Channel' => 41 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x6', 'port' => 'Te 1/27', 'Port-Channel' => 61 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T7', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'enp130s0f0'  => { 'label' => 'T8', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/25'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/25'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/25'}, 'ip'=>'172.31.80.64' }
        }
      },
      'sto02-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/28', 'Port-Channel' => 62 }, 'bond' => 2 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/28', 'Port-Channel' => 42 }, 'bond' => 0  },
          'enp130s0f3'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/29', 'Port-Channel' => 42 }, 'bond' => 0  },
          'enp130s0f2'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/29', 'Port-Channel' => 42 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x4', 'port' => 'Te 1/30', 'Port-Channel' => 42 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x6', 'port' => 'Te 1/30', 'Port-Channel' => 62 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T7', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'enp130s0f0'  => { 'label' => 'T8', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/26'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/26'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/26'}, 'ip'=>'172.31.80.65' }
        }
      },
      'sto03-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/31', 'Port-Channel' => 63 }, 'bond' => 2 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/31', 'Port-Channel' => 43 }, 'bond' => 0  },
          'enp130s0f3'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/32', 'Port-Channel' => 43 }, 'bond' => 0  },
          'enp130s0f2'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/32', 'Port-Channel' => 43 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x4', 'port' => 'Te 1/33', 'Port-Channel' => 43 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x6', 'port' => 'Te 1/33', 'Port-Channel' => 63 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T7', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'enp130s0f0'  => { 'label' => 'T8', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/27'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/27'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/27'}, 'ip'=>'172.31.80.66' }
        }
      },
      'sto04-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/34', 'Port-Channel' => 64 }, 'bond' => 2 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/34', 'Port-Channel' => 44 }, 'bond' => 0  },
          'enp130s0f3'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/35', 'Port-Channel' => 44 }, 'bond' => 0  },
          'enp130s0f2'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/35', 'Port-Channel' => 44 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x4', 'port' => 'Te 1/36', 'Port-Channel' => 44 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x6', 'port' => 'Te 1/36', 'Port-Channel' => 64 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T7', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'enp130s0f0'  => { 'label' => 'T8', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/28'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/28'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/28'}, 'ip'=>'172.31.80.67' }
        }
      },
      'sto05-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/25', 'Port-Channel' => 65 }, 'bond' => 2 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/25', 'Port-Channel' => 45 }, 'bond' => 0  },
          'enp132s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/26', 'Port-Channel' => 45 }, 'bond' => 0  },
          'enp132s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/26', 'Port-Channel' => 45 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x5', 'port' => 'Te 1/27', 'Port-Channel' => 45 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x7', 'port' => 'Te 1/27', 'Port-Channel' => 65 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T7', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'enp130s0f0'  => { 'label' => 'T8', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/29'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/29'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/29'}, 'ip'=>'172.31.80.68' }
        }
      },
      'sto06-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/28', 'Port-Channel' => 66 }, 'bond' => 2 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/28', 'Port-Channel' => 46 }, 'bond' => 0  },
          'enp132s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/29', 'Port-Channel' => 46 }, 'bond' => 0  },
          'enp132s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/29', 'Port-Channel' => 46 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x5', 'port' => 'Te 1/30', 'Port-Channel' => 46 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x7', 'port' => 'Te 1/30', 'Port-Channel' => 66 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T7', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'enp130s0f0'  => { 'label' => 'T8', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/30'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/30'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/30'}, 'ip'=>'172.31.80.69' }
        }
      },
      'sto07-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/31', 'Port-Channel' => 67 }, 'bond' => 2 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/31', 'Port-Channel' => 47 }, 'bond' => 0  },
          'enp130s0f3'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/32', 'Port-Channel' => 47 }, 'bond' => 0  },
          'enp130s0f2'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/32', 'Port-Channel' => 47 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x5', 'port' => 'Te 1/33', 'Port-Channel' => 47 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x7', 'port' => 'Te 1/33', 'Port-Channel' => 67 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T7', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'enp130s0f0'  => { 'label' => 'T8', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/31'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/31'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/31'}, 'ip'=>'172.31.80.70' }
        }
      },
      'sto08-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/34', 'Port-Channel' => 68 }, 'bond' => 2 },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/34', 'Port-Channel' => 48 }, 'bond' => 0  },
          'enp130s0f3'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/35', 'Port-Channel' => 48 }, 'bond' => 0  },
          'enp130s0f2'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/35', 'Port-Channel' => 48 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x5', 'port' => 'Te 1/36', 'Port-Channel' => 48 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x7', 'port' => 'Te 1/36', 'Port-Channel' => 68 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T7', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'enp130s0f0'  => { 'label' => 'T8', 'remote' => {'host' => '', 'port' => '', 'Port-Channel' => 0 } },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/32'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/32'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/32'}, 'ip'=>'172.31.80.71' }
        }
      },
      'sto09-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/11', 'Port-Channel' => 49 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/11', 'Port-Channel' => 49 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/18', 'Port-Channel' => 49 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/18', 'Port-Channel' => 49 }, 'bond' => 0  },
          'enp130s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x4', 'port' => 'Te 1/19', 'Port-Channel' => 69 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x6', 'port' => 'Te 1/19', 'Port-Channel' => 69 }, 'bond' => 2 },
          'enp130s0f2'  => { 'label' => 'T7', 'remote' => {'host' => 'x4', 'port' => 'Te 1/20', 'Port-Channel' => 69 }, 'bond' => 2 },
          'enp130s0f3'  => { 'label' => 'T8', 'remote' => {'host' => 'x6', 'port' => 'Te 1/20', 'Port-Channel' => 69 }, 'bond' => 2 },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/33'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/33'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/33'}, 'ip'=>'172.31.80.72' }
        }
      },
      'sto10-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/37', 'Port-Channel' => 50 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/37', 'Port-Channel' => 50 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/38', 'Port-Channel' => 50 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/38', 'Port-Channel' => 50 }, 'bond' => 0  },
          'enp130s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x5', 'port' => 'Te 1/39', 'Port-Channel' => 70 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x7', 'port' => 'Te 1/39', 'Port-Channel' => 70 }, 'bond' => 2 },
          'enp130s0f2'  => { 'label' => 'T7', 'remote' => {'host' => 'x5', 'port' => 'Te 1/40', 'Port-Channel' => 70 }, 'bond' => 2 },
          'enp130s0f3'  => { 'label' => 'T8', 'remote' => {'host' => 'x7', 'port' => 'Te 1/40', 'Port-Channel' => 70 }, 'bond' => 2 },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/34'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/34'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/34'}, 'ip'=>'172.31.80.73' }
        }
      },
      'sto11-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x4', 'port' => 'Te 1/41', 'Port-Channel' => 51 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x6', 'port' => 'Te 1/41', 'Port-Channel' => 51 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x4', 'port' => 'Te 1/42', 'Port-Channel' => 51 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x6', 'port' => 'Te 1/42', 'Port-Channel' => 51 }, 'bond' => 0  },
          'enp130s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x4', 'port' => 'Te 1/43', 'Port-Channel' => 71 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x6', 'port' => 'Te 1/43', 'Port-Channel' => 71 }, 'bond' => 2 },
          'enp130s0f2'  => { 'label' => 'T7', 'remote' => {'host' => 'x4', 'port' => 'Te 1/44', 'Port-Channel' => 71 }, 'bond' => 2 },
          'enp130s0f3'  => { 'label' => 'T8', 'remote' => {'host' => 'x6', 'port' => 'Te 1/44', 'Port-Channel' => 71 }, 'bond' => 2 },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/35'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/35'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/35'}, 'ip'=>'172.31.80.74' }
        }
      },
      'sto12-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/17', 'Port-Channel' => 52 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/17', 'Port-Channel' => 52 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/18', 'Port-Channel' => 52 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/18', 'Port-Channel' => 52 }, 'bond' => 0  },
          'enp130s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x5', 'port' => 'Te 1/19', 'Port-Channel' => 72 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x7', 'port' => 'Te 1/19', 'Port-Channel' => 72 }, 'bond' => 2 },
          'enp130s0f2'  => { 'label' => 'T7', 'remote' => {'host' => 'x5', 'port' => 'Te 1/20', 'Port-Channel' => 72 }, 'bond' => 2 },
          'enp130s0f3'  => { 'label' => 'T8', 'remote' => {'host' => 'x7', 'port' => 'Te 1/20', 'Port-Channel' => 72 }, 'bond' => 2 },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/36'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/36'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/36'}, 'ip'=>'172.31.80.75' }
        }
      },
      'sto13-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/37', 'Port-Channel' => 53 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/37', 'Port-Channel' => 53 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/38', 'Port-Channel' => 53 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/38', 'Port-Channel' => 53 }, 'bond' => 0  },
          'enp130s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x5', 'port' => 'Te 1/39', 'Port-Channel' => 73 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x7', 'port' => 'Te 1/39', 'Port-Channel' => 73 }, 'bond' => 2 },
          'enp130s0f2'  => { 'label' => 'T7', 'remote' => {'host' => 'x5', 'port' => 'Te 1/40', 'Port-Channel' => 73 }, 'bond' => 2 },
          'enp130s0f3'  => { 'label' => 'T8', 'remote' => {'host' => 'x7', 'port' => 'Te 1/40', 'Port-Channel' => 73 }, 'bond' => 2 },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/37'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/37'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/37'}, 'ip'=>'172.31.80.76' }
        }
      },
      'sto14-p' => { 
        'port_types' => {'T' => 8, 'G' => 2, 'iDrac' => 1},
        'ports' => { 
          'eno1'  => { 'label' => 'T1', 'remote' => {'host' => 'x5', 'port' => 'Te 1/41', 'Port-Channel' => 54 }, 'bond' => 0  },
          'eno2'  => { 'label' => 'T2', 'remote' => {'host' => 'x7', 'port' => 'Te 1/41', 'Port-Channel' => 54 }, 'bond' => 0  },
          'enp131s0f0'  => { 'label' => 'T3', 'remote' => {'host' => 'x5', 'port' => 'Te 1/42', 'Port-Channel' => 54 }, 'bond' => 0  },
          'enp131s0f1'  => { 'label' => 'T4', 'remote' => {'host' => 'x7', 'port' => 'Te 1/42', 'Port-Channel' => 54 }, 'bond' => 0  },
          'enp130s0f0'  => { 'label' => 'T5', 'remote' => {'host' => 'x5', 'port' => 'Te 1/43', 'Port-Channel' => 74 }, 'bond' => 2 },
          'enp130s0f1'  => { 'label' => 'T6', 'remote' => {'host' => 'x7', 'port' => 'Te 1/43', 'Port-Channel' => 74 }, 'bond' => 2 },
          'enp130s0f2'  => { 'label' => 'T7', 'remote' => {'host' => 'x5', 'port' => 'Te 1/44', 'Port-Channel' => 74 }, 'bond' => 2 },
          'enp130s0f3'  => { 'label' => 'T8', 'remote' => {'host' => 'x7', 'port' => 'Te 1/44', 'Port-Channel' => 74 }, 'bond' => 2 },
          'eno3'  => { 'label' => 'G1', 'remote' => {'host' => 'x2', 'port' => 'Gi 1/38'}, 'bond' => 1 },
          'eno4'  => { 'label' => 'G2', 'remote' => {'host' => 'x3', 'port' => 'Gi 1/38'}, 'bond' => 1 },
          'iDrac'  => { 'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/38'}, 'ip'=>'172.31.80.77' }
        }
      },
    }
  end
end
