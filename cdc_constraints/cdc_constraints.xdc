create_clock -add -name clk_a  -period 83.333 -waveform {0 41.667}  [get_ports { clk_a }];
create_clock -add -name clk_b  -period 50.00 -waveform {0 25}       [get_ports { clk_b }];


 set_clock_groups -async -group {clk_a} -group {clk_b}


create_clock -name clk_a_cdc -period [ get_property  PERIOD [get_clocks clk_a] ]
create_clock -name clk_b_cdc -period [ get_property  PERIOD [get_clocks clk_b] ]

#foreach cdcclk [get_clocks *_cdc] {
#  set_false_path -from [get_clocks $cdcclk] -to [get_clocks $cdcclk]
#}



set_false_path -from [get_clocks clk_a_cdc] -to [get_clocks clk_a_cdc]
set_false_path -from [get_clocks clk_b_cdc] -to [get_clocks clk_b_cdc]




# package require struct::set 
# proc remove_from_collection {coll1 coll2} {
#     set x [expr {$arg1 + $arg2}];
#     return package require struct::set difference $coll1 $coll2
# }

set_clock_groups -physically_exclusive \
    -group {clk_a clk_b}\
    -group [get_clocks *_cdc]

#foreach cdcclk [get_clocks *_cdc] {
#    set_max_delay [ get_property  PERIOD [get_clocks clk_b] ]  -from $cdcclk
#}



set_max_delay [ get_property  PERIOD [get_clocks clk_b] ]  -from clk_a_cdc -datapath_only








# Local Variables:
# mode: tcl
# End:
