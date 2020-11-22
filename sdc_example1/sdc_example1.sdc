create_clock -name clk1 -period 1000 [get_ports clk1]
create_clock -name clk2 -period 33 [get_ports clk2]

# This gives one "timing exception with no effect" message"
set_clock_groups -asynchronous -group [get_clocks clk1] -group [get_clocks clk2] 

# This gives two "timing exception with no effect" messages"
#set_clock_groups -asynchronous -group [get_clocks clk1] -group [get_clocks clk2] -allow_paths
#set_max_delay 10  -from [get_clocks clk1] -to [get_clocks clk2] -combinational_from_to

set_input_delay -clock clk1 -max 10 [get_ports idata]
set_input_delay -clock clk1 -min 1 [get_ports idata]

set_output_delay -clock clk2 -max 5 [get_ports odata_r]



