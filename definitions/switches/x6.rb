module HOSTS
  def HOSTS::hosts
    { 'x6' => {
        'port_types' => {'Te' => 48, 'Fo' => 6, 'Ma' => 1},
        'ports' => { 
          'Te 1/1'  => {  'label' => '1', 'remote' => {'host' => 'cop01-p', 'port' => 'eno2'}, 'Port-Channel' => 21 },
          'Te 1/2'  => {  'label' => '2', 'remote' => {'host' => 'cop01-p', 'port' => 'enp3s0f1'}, 'Port-Channel' => 21 },
          'Te 1/3'  => {  'label' => '3', 'remote' => {'host' => 'cop02-p', 'port' => 'eno2'}, 'Port-Channel' => 22 },
          'Te 1/4'  => {  'label' => '4', 'remote' => {'host' => 'cop02-p', 'port' => 'enp3s0f1'}, 'Port-Channel' => 22 },
          'Te 1/5'  => {  'label' => '5', 'remote' => {'host' => 'cop03-p', 'port' => 'eno2'}, 'Port-Channel' => 23 },
          'Te 1/6'  => {  'label' => '6', 'remote' => {'host' => 'cop03-p', 'port' => 'enp3s0f1'}, 'Port-Channel' => 23 },
          'Te 1/7'  => {  'label' => '7', 'remote' => {'host' => 'cop08-p', 'port' => 'enp129s0f0'}, 'Port-Channel' => 28 },
          'Te 1/8'  => {  'label' => '8', 'remote' => {'host' => 'cop08-p', 'port' => 'enp2s0f2'}, 'Port-Channel' => 28 },
          'Te 1/9'  => {  'label' => '9', 'remote' => {'host' => 'cop09-p', 'port' => 'eno2'}, 'Port-Channel' => 29 },
          'Te 1/10'  => {  'label' => '10', 'remote' => {'host' => 'cop09-p', 'port' => 'enp3s0f1'}, 'Port-Channel' => 29 },
          'Te 1/11' => {  'label' => '11', 'remote' => {'host' => 'sto09-p', 'port' => 'eno2'}, 'Port-Channel' => 49 },
          'Te 1/12' => {  'label' => '12', 'remote' => {'host' => 'adm01-p', 'port' => 'eno2'}, 'Port-Channel' => 11 },
          'Te 1/13' => {  'label' => '13', 'remote' => {'host' => 'adm01-p', 'port' => 'enp3s0f1'}, 'Port-Channel' => 11 },
          'Te 1/14' => {  'label' => '14', 'remote' => {'host' => 'ctr01-p', 'port' => 'eno2'}, 'Port-Channel' => 13 },
          'Te 1/15' => {  'label' => '15', 'remote' => {'host' => 'ctr01-p', 'port' => 'enp3s0f1'}, 'Port-Channel' => 13 },
          'Te 1/16' => {  'label' => '16', 'remote' => {'host' => 'ctr03-p', 'port' => 'eno2'}, 'Port-Channel' => 15 },
          'Te 1/17' => {  'label' => '17', 'remote' => {'host' => 'ctr03-p', 'port' => 'enp3s0f1'}, 'Port-Channel' => 15 },
          'Te 1/18' => {  'label' => '18', 'remote' => {'host' => 'sto09-p', 'port' => 'enp130s0f2'}, 'Port-Channel' => 49 },
          'Te 1/19' => {  'label' => '19', 'remote' => {'host' => 'sto09-p', 'port' => 'enp130s0f0'}, 'Port-Channel' => 69 },
          'Te 1/20' => {  'label' => '20', 'remote' => {'host' => 'sto09-p', 'port' => 'enp131s0f1'}, 'Port-Channel' => 69 },
          'Te 1/21' => {  'label' => '21', 'remote' => {'host' => 'sto01-p', 'port' => 'enp130s0f0'}, 'Port-Channel' => 61  },
          'Te 1/22' => {  'label' => '22', 'remote' => {'host' => 'sto02-p', 'port' => 'enp130s0f0'}, 'Port-Channel' => 62  },
          'Te 1/23' => {  'label' => '23', 'remote' => {'host' => 'sto03-p', 'port' => 'enp130s0f0'}, 'Port-Channel' => 63  },
          'Te 1/24' => {  'label' => '24', 'remote' => {'host' => 'sto04-p', 'port' => 'enp130s0f0'}, 'Port-Channel' => 64  },
          'Te 1/25' => {  'label' => '25', 'remote' => {'host' => 'sto01-p', 'port' => 'eno2'}, 'Port-Channel' => 41 },
          'Te 1/26' => {  'label' => '26', 'remote' => {'host' => 'sto01-p', 'port' => 'enp130s0f2'}, 'Port-Channel' => 41 },
          'Te 1/27' => {  'label' => '27', 'remote' => {'host' => 'sto01-p', 'port' => 'enp131s0f1'}, 'Port-Channel' => 61 },
          'Te 1/28' => {  'label' => '28', 'remote' => {'host' => 'sto02-p', 'port' => 'eno2'}, 'Port-Channel' => 42 },
          'Te 1/29' => {  'label' => '29', 'remote' => {'host' => 'sto02-p', 'port' => 'enp130s0f2'}, 'Port-Channel' => 42 },
          'Te 1/30' => {  'label' => '30', 'remote' => {'host' => 'sto02-p', 'port' => 'enp131s0f1'}, 'Port-Channel' => 62 },
          'Te 1/31' => {  'label' => '31', 'remote' => {'host' => 'sto03-p', 'port' => 'eno2'}, 'Port-Channel' => 43 },
          'Te 1/32' => {  'label' => '32', 'remote' => {'host' => 'sto03-p', 'port' => 'enp130s0f2'}, 'Port-Channel' => 43 },
          'Te 1/33' => {  'label' => '33', 'remote' => {'host' => 'sto03-p', 'port' => 'enp131s0f1'}, 'Port-Channel' => 63 },
          'Te 1/34' => {  'label' => '34', 'remote' => {'host' => 'sto04-p', 'port' => 'eno2'}, 'Port-Channel' => 44 },
          'Te 1/35' => {  'label' => '35', 'remote' => {'host' => 'sto04-p', 'port' => 'enp130s0f2'}, 'Port-Channel' => 44 },
          'Te 1/36' => {  'label' => '36', 'remote' => {'host' => 'sto04-p', 'port' => 'enp131s0f1'}, 'Port-Channel' => 64 },
          'Te 1/37' => {  'label' => '37', 'remote' => {'host' => 'sto13-p', 'port' => 'eno2'}, 'Port-Channel' => 50 },
          'Te 1/38' => {  'label' => '38', 'remote' => {'host' => 'sto13-p', 'port' => 'enp130s0f2'}, 'Port-Channel' => 50 },
          'Te 1/39' => {  'label' => '39', 'remote' => {'host' => 'sto13-p', 'port' => 'enp130s0f0'}, 'Port-Channel' => 70 },
          'Te 1/40' => {  'label' => '40', 'remote' => {'host' => 'sto13-p', 'port' => 'enp131s0f1'}, 'Port-Channel' => 70 },
          'Te 1/41' => {  'label' => '41', 'remote' => {'host' => 'sto11-p', 'port' => 'eno2'}, 'Port-Channel' => 51 },
          'Te 1/42' => {  'label' => '42', 'remote' => {'host' => 'sto11-p', 'port' => 'enp130s0f2'}, 'Port-Channel' => 51 },
          'Te 1/43' => {  'label' => '43', 'remote' => {'host' => 'sto11-p', 'port' => 'enp130s0f0'}, 'Port-Channel' => 71 },
          'Te 1/44' => {  'label' => '44', 'remote' => {'host' => 'sto11-p', 'port' => 'enp131s0f1'}, 'Port-Channel' => 71 },
          'Te 1/45' => {  'label' => '45', 'remote' => {'host' => 'x3', 'port' => 'Te 1/50'}, 'Port-Channel' => 6 },
          'Te 1/46' => {  'label' => '46', 'remote' => {'host' => 'x2', 'port' => 'Te 1/50'}, 'Port-Channel' => 6 },
          'Te 1/47' => {  'label' => '47', 'remote' => {'host' => 'x1', 'port' => 'Te 1/50'}, 'Port-Channel' => 4 },
          'Te 1/48' => {  'label' => '48', 'remote' => {'host' => '', 'port' => ''} }, #Uplink to ITS (but was cabled to X1 in error)
          'Fo 1/49' => {  'label' => 'F1', 'remote' => {'host' => 'x5', 'port' => 'Fo 1/50'}, 'Port-Channel' => 3 },
          'Fo 1/50' => {  'label' => 'F2', 'remote' => {'host' => 'x7', 'port' => 'Fo 1/50'}, 'Port-Channel' => 3 },
          'Fo 1/51' => {  'label' => 'F3', 'remote' => {'host' => 'x4', 'port' => 'Fo 1/51'}, 'Port-Channel' => 1 },
          'Fo 1/52' => {  'label' => 'F4', 'remote' => {'host' => 'x4', 'port' => 'Fo 1/52'}, 'Port-Channel' => 1 },
          'Fo 1/53' => {  'label' => 'F5', 'remote' => {'host' => 'x10', 'port' => 'Eth 1/1/53:1'} },
          'Fo 1/54' => {  'label' => 'F6', 'remote' => {'host' => 'x10', 'port' => 'Eth 1/1/54:1'} },
          'Ma 1/1'  => {  'label' => 'M', 'remote' => {'host' => 'x1', 'port' => 'Gi 1/44'}, 'ip'=>'172.31.80.6' },
        }
      }
    }
  end
end
