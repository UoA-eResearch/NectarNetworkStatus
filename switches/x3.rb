module HOSTS
  def HOSTS::hosts
    { 'x3' => {
        'port_types' => {'Te' => 4, 'Gi' => 48, 'Ma' => 1},
        'ports' => {
          'Gi 1/1'  => { 'remote' => {'host' => 'cop01-p', 'port' => 'eno4'} },
          'Gi 1/2'  => { 'remote' => {'host' => 'cop02-p', 'port' => 'eno4'} },
          'Gi 1/3'  => { 'remote' => {'host' => 'cop03-p', 'port' => 'eno4'} },
          'Gi 1/4'  => { 'remote' => {'host' => 'cop04-p', 'port' => 'eno4'} },
          'Gi 1/5'  => { 'remote' => {'host' => 'cop05-p', 'port' => 'eno4'} },
          'Gi 1/6'  => { 'remote' => {'host' => 'cop06-p', 'port' => 'eno4'} },
          'Gi 1/7'  => { 'remote' => {'host' => 'cop07-p', 'port' => 'eno4'} },
          'Gi 1/8'  => { 'remote' => {'host' => 'cop08-p', 'port' => 'eno2'} },
          'Gi 1/9'  => { 'remote' => {'host' => 'cop09-p', 'port' => 'eno4'} },
          'Gi 1/10' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/11' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/12' => { 'remote' => {'host' => 'adm01-p', 'port' => 'eno4'} },
          'Gi 1/13' => { 'remote' => {'host' => 'ctr01-p', 'port' => 'eno4'} },
          'Gi 1/14' => { 'remote' => {'host' => 'ctr03-p', 'port' => 'eno4'} },
          'Gi 1/15' => { 'remote' => {'host' => 'adm02-p', 'port' => 'eno4'} },
          'Gi 1/16' => { 'remote' => {'host' => 'ctr02-p', 'port' => 'eno4'} },
          'Gi 1/17' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/18' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/19' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/20' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/21' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/22' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/23' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/24' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/25' => { 'remote' => {'host' => 'sto01-p', 'port' => 'eno4'} },
          'Gi 1/26' => { 'remote' => {'host' => 'sto02-p', 'port' => 'eno4'} },
          'Gi 1/27' => { 'remote' => {'host' => 'sto03-p', 'port' => 'eno4'} },
          'Gi 1/28' => { 'remote' => {'host' => 'sto04-p', 'port' => 'eno4'} },
          'Gi 1/29' => { 'remote' => {'host' => 'sto05-p', 'port' => 'eno4'} },
          'Gi 1/30' => { 'remote' => {'host' => 'sto06-p', 'port' => 'eno4'} },
          'Gi 1/31' => { 'remote' => {'host' => 'sto07-p', 'port' => 'eno4'} },
          'Gi 1/32' => { 'remote' => {'host' => 'sto08-p', 'port' => 'eno4'} },
          'Gi 1/33' => { 'remote' => {'host' => 'sto09-p', 'port' => 'eno4'} },
          'Gi 1/34' => { 'remote' => {'host' => 'sto10-p', 'port' => 'eno4'} },
          'Gi 1/35' => { 'remote' => {'host' => 'sto11-p', 'port' => 'eno4'} },
          'Gi 1/36' => { 'remote' => {'host' => 'sto12-p', 'port' => 'eno4'} },
          'Gi 1/37' => { 'remote' => {'host' => 'sto13-p', 'port' => 'eno4'} },
          'Gi 1/38' => { 'remote' => {'host' => 'sto14-p', 'port' => 'eno4'} },
          'Gi 1/39' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/40' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/41' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/42' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/43' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/44' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/45' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/46' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/47' => { 'remote' => {'host' => '', 'port' => ''} },
          'Gi 1/48' => { 'remote' => {'host' => '', 'port' => ''} },
          'Te 1/49' => { 'remote' => {'host' => 'x4', 'port' => 'Te 1/45'}, 'Port-Channel' => 6 },
          'Te 1/50' => { 'remote' => {'host' => 'x6', 'port' => 'Te 1/45'}, 'Port-Channel' => 6 },
          'Te 1/51' => { 'remote' => {'host' => 'x2', 'port' => 'Te 1/51'}, 'Port-Channel' => 20 },
          'Te 1/52' => { 'remote' => {'host' => 'x2', 'port' => 'Te 1/52'}, 'Port-Channel' => 20 },
          'Ma 1/1'  => { 'remote' => {'host' => 'x1', 'port' => 'Gi 1/47'}, 'ip'=>'172.31.80.3/24' },
        }
      }
    }
  end
end
