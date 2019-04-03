SWITCH_PAIR_1_X = 0
SWITCH_PAIR_2_X = INTERSWITCH_DISTANCE  + SWITCH_WIDTH * 4
SWITCH_PAIR_3_X = (INTERSWITCH_DISTANCE  + SWITCH_WIDTH * 4) * 2
SWITCH_PAIR_4_X = (INTERSWITCH_DISTANCE  + SWITCH_WIDTH * 4) * 3
SWITCH_PAIR_5_X = (INTERSWITCH_DISTANCE  + SWITCH_WIDTH * 4) * 4
SWITCH_Y_OFFSET = SERVER_HEIGHT * 2

Point = Struct.new(:x, :y)
Rectangle = Struct.new(:origin, :width, :height)

# :ports limits the interfaces used from the host definition.
def drawing_layout
  @switch_pairs = [
    {
      :host_origin_x => SWITCH_PAIR_2_X + SWITCH_WIDTH * 2,
      :host_origin_y => 0,
      :switches => [
        [ 'x4', Point.new(SWITCH_PAIR_2_X,0), [
          'Te 1/1','Te 1/2','Te 1/3','Te 1/4','Te 1/5','Te 1/6','Te 1/7','Te 1/8','Te 1/9','Te 1/10','Te 1/12','Te 1/13','Te 1/14','Te 1/15','Te 1/16','Te 1/17','Te 1/11', 'Te 1/18','Te 1/19','Te 1/20','Te 1/25','Te 1/26','Te 1/27','Te 1/21','Te 1/28','Te 1/29','Te 1/30','Te 1/22','Te 1/31','Te 1/32','Te 1/33','Te 1/23','Te 1/34','Te 1/35','Te 1/36','Te 1/24','Te 1/37','Te 1/38','Te 1/39','Te 1/40','Te 1/41','Te 1/42','Te 1/43','Te 1/44','Te 1/45','Te 1/46','Te 1/47','Te 1/48','fo 1/49','fo 1/50','fo 1/51','fo 1/52','fo 1/53','fo 1/54'] ],
        [ 'x6', Point.new(SWITCH_PAIR_2_X + INTERSWITCH_DISTANCE + SWITCH_WIDTH,0), [
            'Te 1/1','Te 1/2','Te 1/3','Te 1/4','Te 1/5','Te 1/6','Te 1/7','Te 1/8','Te 1/9','Te 1/10','Te 1/12','Te 1/13','Te 1/14','Te 1/15','Te 1/16','Te 1/17','Te 1/11','Te 1/18','Te 1/19','Te 1/20','Te 1/25','Te 1/26','Te 1/27','Te 1/21','Te 1/28','Te 1/29','Te 1/30','Te 1/22','Te 1/31','Te 1/32','Te 1/33','Te 1/23','Te 1/34','Te 1/35','Te 1/36','Te 1/24','Te 1/37','Te 1/38','Te 1/39','Te 1/40','Te 1/41','Te 1/42','Te 1/43','Te 1/44','Te 1/45','Te 1/46','Te 1/47','Te 1/48','fo 1/49','fo 1/50','fo 1/51','fo 1/52','fo 1/53','fo 1/54'] ]
      ],
      :hosts => [
        { :type => '4', :name => 'cop01-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #1
        { :type => '4', :name => 'cop02-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #2
        { :type => '4', :name => 'cop03-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #3
        { :type => '4', :name => 'cop08-p', :ports => ['enp129s0f1','enp129s0f0','enp2s0f0','enp2s0f1'] }, #4
        { :type => '4', :name => 'cop09-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #5
        { :type => '4', :name => 'adm01-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #6
        { :type => '4', :name => 'ctr01-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #7
        { :type => '4', :name => 'ctr03-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #8
        { :type => '8', :name => 'sto09-p', :ports => ['eno1','eno2','enp130s0f3','enp130s0f2','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #9,10
        { :type => '8', :name => 'sto01-p', :ports => ['eno1','eno2','enp130s0f3','enp130s0f2','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #11,12
        { :type => '8', :name => 'sto02-p', :ports => ['eno1','eno2','enp130s0f3','enp130s0f2','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #13,14
        { :type => '8', :name => 'sto03-p', :ports => ['eno1','eno2','enp130s0f3','enp130s0f2','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #15,16
        { :type => '8', :name => 'sto04-p', :ports => ['eno1','eno2','enp130s0f3','enp130s0f2','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #17,18
        { :type => '8', :name => 'sto13-p', :ports => ['eno1','eno2','enp130s0f3','enp130s0f2','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #19,20
        { :type => '8', :name => 'sto11-p', :ports => ['eno1','eno2','enp130s0f3','enp130s0f2','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #21,22
        nil,                              #22
        nil,                              #23
        nil                               #24
      ]
    },
    {
      :host_origin_x => SWITCH_WIDTH * 2,
      :host_origin_y => SWITCH_Y_OFFSET,
      :switches => [
        [ 'x5',  Point.new(SWITCH_PAIR_1_X, SWITCH_Y_OFFSET), [
            'Te 1/1','Te 1/2','Te 1/3','Te 1/4','Te 1/5','Te 1/6','Te 1/7','Te 1/8','Te 1/9','Te 1/10','Te 1/12','Te 1/13','Te 1/14','Te 1/15','Te 1/11','Te 1/16','Te 1/17','Te 1/18','Te 1/19','Te 1/20','Te 1/25','Te 1/26','Te 1/27','Te 1/21','Te 1/28','Te 1/29','Te 1/30','Te 1/22','Te 1/31','Te 1/32','Te 1/33','Te 1/23','Te 1/34','Te 1/35','Te 1/36','Te 1/24','Te 1/37','Te 1/38','Te 1/39','Te 1/40','Te 1/41','Te 1/42','Te 1/43','Te 1/44','Te 1/45','Te 1/46','Te 1/47','Te 1/48','fo 1/49','fo 1/50','fo 1/51','fo 1/52','fo 1/53','fo 1/54'] ],
        [ 'x7', Point.new(SWITCH_PAIR_1_X + INTERSWITCH_DISTANCE + SWITCH_WIDTH, SWITCH_Y_OFFSET),   [
                'Te 1/1','Te 1/2','Te 1/3','Te 1/4','Te 1/5','Te 1/6','Te 1/7','Te 1/8','Te 1/9','Te 1/10','Te 1/12','Te 1/13','Te 1/14','Te 1/15','Te 1/11','Te 1/16','Te 1/17','Te 1/18','Te 1/19','Te 1/20','Te 1/25','Te 1/26','Te 1/27','Te 1/21','Te 1/28','Te 1/29','Te 1/30','Te 1/22','Te 1/31','Te 1/32','Te 1/33','Te 1/23','Te 1/34','Te 1/35','Te 1/36','Te 1/24','Te 1/37','Te 1/38','Te 1/39','Te 1/40','Te 1/41','Te 1/42','Te 1/43','Te 1/44','Te 1/45','Te 1/46','Te 1/47','Te 1/48','fo 1/49','fo 1/50','fo 1/51','fo 1/52','fo 1/53','fo 1/54'] ]
      ],
      :hosts => [
        { :type => '4', :name => 'cop04-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #1
        { :type => '4', :name => 'cop05-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #2
        { :type => '4', :name => 'cop06-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #3
        { :type => '4', :name => 'cop07-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #4
        { :type => '4', :name => 'cop10-p', :ports => ['eno1','enp94s0f0','eno2','enp94s0f1'] },#5
        { :type => '4', :name => 'adm02-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #6
        { :type => '4', :name => 'ctr02-p', :ports => ['eno1','eno2','enp3s0f0','enp3s0f1'] }, #7
        { :type => '4', :name => 'cop11-p', :ports => ['eno1','eno2','enp94s0f0','enp94s0f1'] }, #8
        { :type => '8', :name => 'sto12-p', :ports => ['eno1','eno2','enp130s0f3','enp130s0f2','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #9,10
        { :type => '8', :name => 'sto05-p', :ports => ['eno1','eno2','enp132s0f0','enp132s0f1','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #11,12
        { :type => '8', :name => 'sto06-p', :ports => ['eno1','eno2','enp132s0f0','enp132s0f1','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #13,14
        { :type => '8', :name => 'sto07-p', :ports => ['eno1','eno2','enp130s0f3','enp130s0f2','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #15,16
        { :type => '8', :name => 'sto08-p', :ports => ['eno1','eno2','enp130s0f3','enp130s0f2','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #17,18
        { :type => '8', :name => 'sto10-p', :ports => ['eno1','eno2','enp130s0f3','enp130s0f2','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #19,20
        { :type => '8', :name => 'sto14-p', :ports => ['eno1','eno2','enp130s0f3','enp130s0f2','enp130s0f1','enp130s0f0','enp131s0f0','enp131s0f1'] }, nil, #21,22
        nil,                              #23
        nil                               #24
      ]
    },
    {
      :host_origin_x => SWITCH_PAIR_3_X + SWITCH_WIDTH * 2,
      :host_origin_y => SWITCH_Y_OFFSET,
      :switches => [
        [ 'x2',  Point.new(SWITCH_PAIR_3_X, SWITCH_Y_OFFSET), [
            'Gi 1/1','Gi 1/2','Gi 1/3','Gi 1/4','Gi 1/5','Gi 1/6','Gi 1/7','Gi 1/8','Gi 1/9','Gi 1/10','Gi 1/11','Gi 1/12','Gi 1/13','Gi 1/14','Gi 1/15','Gi 1/16','Gi 1/17','Gi 1/18','Gi 1/19','Gi 1/20','Gi 1/21','Gi 1/22','Gi 1/23','Gi 1/24','Gi 1/25','Gi 1/26','Gi 1/27','Gi 1/28','Gi 1/29','Gi 1/30','Gi 1/31','Gi 1/32','Gi 1/33','Gi 1/34','Gi 1/35','Gi 1/36','Gi 1/37','Gi 1/38','Gi 1/39','Gi 1/40','Gi 1/41','Gi 1/42','Gi 1/43','Gi 1/44','Gi 1/45','Gi 1/46','Gi 1/47','Gi 1/48','Te 1/49','Te 1/50','Te 1/51','Te 1/52'] ],
        [ 'x3', Point.new(SWITCH_PAIR_3_X + INTERSWITCH_DISTANCE + SWITCH_WIDTH, SWITCH_Y_OFFSET),   [
                'Gi 1/1','Gi 1/2','Gi 1/3','Gi 1/4','Gi 1/5','Gi 1/6','Gi 1/7','Gi 1/8','Gi 1/9','Gi 1/10','Gi 1/11','Gi 1/12','Gi 1/13','Gi 1/14','Gi 1/15','Gi 1/16','Gi 1/17','Gi 1/18','Gi 1/19','Gi 1/20','Gi 1/21','Gi 1/22','Gi 1/23','Gi 1/24','Gi 1/25','Gi 1/26','Gi 1/27','Gi 1/28','Gi 1/29','Gi 1/30','Gi 1/31','Gi 1/32','Gi 1/33','Gi 1/34','Gi 1/35','Gi 1/36','Gi 1/37','Gi 1/38','Gi 1/39','Gi 1/40','Gi 1/41','Gi 1/42','Gi 1/43','Gi 1/44','Gi 1/45','Gi 1/46','Gi 1/47','Gi 1/48','Te 1/49','Te 1/50','Te 1/51','Te 1/52'] ]
      ],
      :hosts => [
        { :type => '2l', :name => 'cop01-p', :ports => ['eno3','eno4'] }, #1
        { :type => '2r', :name => 'cop02-p', :ports => ['eno3','eno4'] }, #2
        { :type => '2l', :name => 'cop03-p', :ports => ['eno3','eno4'] }, #3
        { :type => '2r', :name => 'cop04-p', :ports => ['eno3','eno4'] }, #4
        { :type => '2l', :name => 'cop05-p', :ports => ['eno3','eno4'] }, #5
        { :type => '2r', :name => 'cop06-p', :ports => ['eno3','eno4'] }, #6
        { :type => '2l', :name => 'cop07-p', :ports => ['eno3','eno4'] }, #7
        { :type => '2r', :name => 'cop08-p', :ports => ['eno1','eno2'] }, #8
        { :type => '2r', :name => 'cop09-p', :ports => ['eno3','eno4'] }, #9
        { :type => '2l', :name => 'cop10-p', :ports => ['eno3','eno4'] }, #10
        { :type => '2r', :name => 'cop11-p', :ports => ['eno3','eno4'] }, #11
        { :type => '2l', :name => 'adm01-p', :ports => ['eno3','eno4'] }, #12
        { :type => '2l', :name => 'ctr01-p', :ports => ['eno3','eno4'] }, #13
        { :type => '2r', :name => 'ctr03-p', :ports => ['eno3','eno4'] }, #14
        { :type => '2l', :name => 'adm02-p', :ports => ['eno3','eno4'] }, #15
        { :type => '2r', :name => 'ctr02-p', :ports => ['eno3','eno4'] }, #16
        nil,                              #17
        nil,                              #18
        nil,                              #19
        nil,                              #20
        nil,                              #21
        nil,                              #22
        nil,                              #23
        nil,                              #24
        { :type => '2l', :name => 'sto01-p', :ports => ['eno3','eno4'] }, #25
        { :type => '2r', :name => 'sto02-p', :ports => ['eno3','eno4'] }, #26
        { :type => '2l', :name => 'sto03-p', :ports => ['eno3','eno4'] }, #27
        { :type => '2r', :name => 'sto04-p', :ports => ['eno3','eno4'] }, #28
        { :type => '2l', :name => 'sto05-p', :ports => ['eno3','eno4'] }, #29
        { :type => '2r', :name => 'sto06-p', :ports => ['eno3','eno4'] }, #30
        { :type => '2l', :name => 'sto07-p', :ports => ['eno3','eno4'] }, #31
        { :type => '2r', :name => 'sto08-p', :ports => ['eno3','eno4'] }, #32
        { :type => '2l', :name => 'sto09-p', :ports => ['eno3','eno4'] }, #33
        { :type => '2r', :name => 'sto10-p', :ports => ['eno3','eno4'] }, #34
        { :type => '2l', :name => 'sto11-p', :ports => ['eno3','eno4'] }, #35
        { :type => '2r', :name => 'sto12-p', :ports => ['eno3','eno4'] }, #36
        { :type => '2l', :name => 'sto13-p', :ports => ['eno3','eno4'] }, #37
        { :type => '2r', :name => 'sto14-p', :ports => ['eno3','eno4'] }, #38
        nil,                              #39
        nil,                              #40
        nil,                              #41
        nil,                              #42
        nil,                              #43
        nil,                              #44
        nil,                              #45
        nil,                              #46
        nil,                              #47
        nil                               #48
      ]
    },
    {
      :host_origin_x => SWITCH_PAIR_5_X + SWITCH_WIDTH * 2,
      :host_origin_y => SWITCH_Y_OFFSET,
      :switches => [
        [ 'x1',  Point.new(SWITCH_PAIR_5_X, SWITCH_Y_OFFSET), [
            'Gi 1/1','Gi 1/2','Gi 1/3','Gi 1/4','Gi 1/5','Gi 1/6','Gi 1/7','Gi 1/8','Gi 1/9','Gi 1/10','Gi 1/11','Gi 1/12','Gi 1/13','Gi 1/14','Gi 1/15','Gi 1/16','Gi 1/17','Gi 1/18','Gi 1/19','Gi 1/20','Gi 1/21','Gi 1/22','Gi 1/23','Gi 1/24','Gi 1/25','Gi 1/26','Gi 1/27','Gi 1/28','Gi 1/29','Gi 1/30','Gi 1/31','Gi 1/32','Gi 1/33','Gi 1/34','Gi 1/35','Gi 1/36','Gi 1/37','Gi 1/38','Gi 1/39','Gi 1/40','Gi 1/41','Gi 1/42','Gi 1/43','Gi 1/44','Gi 1/45','Gi 1/46','Gi 1/47','Gi 1/48','Te 1/49','Te 1/50','Te 1/51','Te 1/52'] ],
      ],
      :hosts => [
        { :type => '1l', :name => 'cop01-p', :ports => ['iDrac'] }, #1
        { :type => '1r', :name => 'cop02-p', :ports => ['iDrac'] }, #2
        { :type => '1l', :name => 'cop03-p', :ports => ['iDrac'] }, #3
        { :type => '1r', :name => 'cop04-p', :ports => ['iDrac'] }, #4
        { :type => '1l', :name => 'cop05-p', :ports => ['iDrac'] }, #5
        { :type => '1r', :name => 'cop06-p', :ports => ['iDrac'] }, #6
        { :type => '1l', :name => 'cop07-p', :ports => ['iDrac'] }, #7
        { :type => '1r', :name => 'cop08-p', :ports => ['iDrac'] }, #8
        { :type => '1l', :name => 'cop09-p', :ports => ['iDrac'] }, #9
        { :type => '1r', :name => 'cop10-p', :ports => ['iDrac'] }, #10
        { :type => '1l', :name => 'cop11-p', :ports => ['iDrac'] }, #11
        { :type => '1r', :name => 'adm01-p', :ports => ['iDrac'] }, #12
        { :type => '1l', :name => 'ctr01-p', :ports => ['iDrac'] }, #13
        { :type => '1r', :name => 'ctr03-p', :ports => ['iDrac'] }, #14
        { :type => '1l', :name => 'adm02-p', :ports => ['iDrac'] }, #15
        { :type => '1r', :name => 'ctr02-p', :ports => ['iDrac'] }, #16
        { :type => '1l', :name => 'cop-e1', :ports => ['IMM'] }, #17
        { :type => '1r', :name => 'cop-e2', :ports => ['IMM'] }, #18
        nil,                              #19
        nil,                              #20
        nil,                              #21
        nil,                              #22
        { :type => '1r', :name => 'x8', :ports => ['Ma 1/1'] }, #23
        { :type => '1l', :name => 'x9', :ports => ['Ma 1/1'] }, #24
        { :type => '1l', :name => 'sto01-p', :ports => ['iDrac'] }, #25
        { :type => '1r', :name => 'sto02-p', :ports => ['iDrac'] }, #26
        { :type => '1l', :name => 'sto03-p', :ports => ['iDrac'] }, #27
        { :type => '1r', :name => 'sto04-p', :ports => ['iDrac'] }, #28
        { :type => '1l', :name => 'sto05-p', :ports => ['iDrac'] }, #29
        { :type => '1r', :name => 'sto06-p', :ports => ['iDrac'] }, #30
        { :type => '1l', :name => 'sto07-p', :ports => ['iDrac'] }, #31
        { :type => '1r', :name => 'sto08-p', :ports => ['iDrac'] }, #32
        { :type => '1l', :name => 'sto09-p', :ports => ['iDrac'] }, #33
        { :type => '1r', :name => 'sto10-p', :ports => ['iDrac'] }, #34
        { :type => '1l', :name => 'sto11-p', :ports => ['iDrac'] }, #35
        { :type => '1r', :name => 'sto12-p', :ports => ['iDrac'] }, #36
        { :type => '1l', :name => 'sto13-p', :ports => ['iDrac'] }, #37
        { :type => '1r', :name => 'sto14-p', :ports => ['iDrac'] }, #38
        { :type => '1l', :name => 'x10', :ports => ['Ma 1/1/1'] }, #39
        { :type => '1r', :name => 'x11', :ports => ['Ma 1/1/1'] }, #40
        nil,  #41
        { :type => '1r', :name => 'x1', :ports => ['Ma 1/1'] }, #42
        { :type => '1l', :name => 'x7', :ports => ['Ma 1/1'] }, #43
        { :type => '1r', :name => 'x6', :ports => ['Ma 1/1'] }, #44
        { :type => '1l', :name => 'x5', :ports => ['Ma 1/1'] }, #45
        { :type => '1r', :name => 'x4', :ports => ['Ma 1/1'] }, #46
        { :type => '1l', :name => 'x3', :ports => ['Ma 1/1'] }, #47
        { :type => '1r', :name => 'x2', :ports => ['Ma 1/1'] }, #48
        nil,                              #49
        nil,                              #50
        { :type => '1l', :name => 'TDC_BR', :ports => ['c4'] }, #51
        { :type => '1r', :name => 'OGG_BR', :ports => ['c4'] }, #52
      ]
    },
    {
      :host_origin_x => SWITCH_PAIR_4_X + SWITCH_WIDTH * 2,
      :host_origin_y => SWITCH_Y_OFFSET,
      :switches => [
        [ 'x10', Point.new(SWITCH_PAIR_4_X, SWITCH_Y_OFFSET), [
          'eth 1/1/1','eth 1/1/2','eth 1/1/3','eth 1/1/4','eth 1/1/5','eth 1/1/6','eth 1/1/7','eth 1/1/8','eth 1/1/9','eth 1/1/10','eth 1/1/11','eth 1/1/12','eth 1/1/13','eth 1/1/14','eth 1/1/15','eth 1/1/16','eth 1/1/17','eth 1/1/18','eth 1/1/19','eth 1/1/20','eth 1/1/21','eth 1/1/22','eth 1/1/23','eth 1/1/24','eth 1/1/25','eth 1/1/26','eth 1/1/27','eth 1/1/28','eth 1/1/29','eth 1/1/30','eth 1/1/31','eth 1/1/32','eth 1/1/33','eth 1/1/34','eth 1/1/35','eth 1/1/36','eth 1/1/37','eth 1/1/38','eth 1/1/39','eth 1/1/40','eth 1/1/41','eth 1/1/42','eth 1/1/43','eth 1/1/44','eth 1/1/45','eth 1/1/46','eth 1/1/47','eth 1/1/48','eth 1/1/49','eth 1/1/50','eth 1/1/51','eth 1/1/52','eth 1/1/53:1','eth 1/1/54:1'] ],
        [ 'x11', Point.new(SWITCH_PAIR_4_X + INTERSWITCH_DISTANCE + SWITCH_WIDTH, SWITCH_Y_OFFSET), [
          'eth 1/1/1','eth 1/1/2','eth 1/1/3','eth 1/1/4','eth 1/1/5','eth 1/1/6','eth 1/1/7','eth 1/1/8','eth 1/1/9','eth 1/1/10','eth 1/1/11','eth 1/1/12','eth 1/1/13','eth 1/1/14','eth 1/1/15','eth 1/1/16','eth 1/1/17','eth 1/1/18','eth 1/1/19','eth 1/1/20','eth 1/1/21','eth 1/1/22','eth 1/1/23','eth 1/1/24','eth 1/1/25','eth 1/1/26','eth 1/1/27','eth 1/1/28','eth 1/1/29','eth 1/1/30','eth 1/1/31','eth 1/1/32','eth 1/1/33','eth 1/1/34','eth 1/1/35','eth 1/1/36','eth 1/1/37','eth 1/1/38','eth 1/1/39','eth 1/1/40','eth 1/1/41','eth 1/1/42','eth 1/1/43','eth 1/1/44','eth 1/1/45','eth 1/1/46','eth 1/1/47','eth 1/1/48','eth 1/1/49','eth 1/1/50','eth 1/1/51','eth 1/1/52','eth 1/1/53:1','eth 1/1/54:1'] ],
      ],
      :hosts => [
       nil, #1
       nil, #2
       nil, #3
       nil, #4
       nil, #( :type => '2l', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #5
       nil, #( :type => '2r', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #6
       nil, #( :type => '2l', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #7
       nil, #( :type => '2r', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #8
       nil, #( :type => '2l', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #9
       nil, #( :type => '2r', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #10
       nil, #( :type => '2l', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #11
       nil, #( :type => '2r', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #12
       nil, #( :type => '2l', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #13
       nil, #( :type => '2r', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #14
       nil, #( :type => '2l', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #15
       nil, #( :type => '2r', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #16
       nil, #( :type => '2l', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #17
       nil, #( :type => '2r', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #18
       nil, #( :type => '2l', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #19
       nil, #( :type => '2r', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #20
       nil, #( :type => '2l', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #21
       nil, #( :type => '2r', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #22
       nil, #( :type => '2l', :name => 'cop-e', :ports => ['enp1s0f0','enp1s0f1'] }, #23
       { :type => '2l', :name => 'e18u20-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #24
       { :type => '2r', :name => 'e18u23-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #25
       { :type => '2l', :name => 'e18u19-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #26
       { :type => '2r', :name => 'e18u24-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #27
       { :type => '2l', :name => 'e18u18-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #28
       { :type => '2r', :name => 'e18u25-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #29
       { :type => '2l', :name => 'e18u17-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #30
       { :type => '2r', :name => 'e18u26-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #31
       { :type => '2l', :name => 'e18u16-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #32
       { :type => '2r', :name => 'e18u27-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #33
       { :type => '2l', :name => 'e18u15-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #34
       { :type => '2r', :name => 'e18u28-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #35
       { :type => '2l', :name => 'e18u14-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #36
       { :type => '2r', :name => 'e18u29-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #37
       { :type => '2l', :name => 'e18u13-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #38
       { :type => '2r', :name => 'e18u30-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #39
       { :type => '2l', :name => 'e18u12-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #40
       { :type => '2r', :name => 'e18u31-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #41
       { :type => '2l', :name => 'e18u11-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #42
       { :type => '2r', :name => 'e18u32-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #43
       { :type => '2l', :name => 'e18u10-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #44
       { :type => '2r', :name => 'e18u33-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #45
       { :type => '2l', :name => 'e18u09-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #46
       { :type => '2r', :name => 'e18u34-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #47
       { :type => '2l', :name => 'e18u08-p', :ports => ['enp32s0f0','enp32s0f1d1'] }, #48
        nil,                              #49
        nil,                              #50
        nil,                              #51
        nil,                              #52
        nil,                              #53
        nil,                              #54
      ]
    },
  ]

end
