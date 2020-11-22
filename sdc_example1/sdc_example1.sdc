create_clock -name clk1 -period 1000 [get_ports clk1]
create_clock -name clk2 -period 33 [get_ports clk2]

set_clock_groups -asynchronous -group {clk1 } -group { clk2 }

set_input_delay -clock clk1 -max 10 [get_ports idata]
set_input_delay -clock clk1 -min 1 [get_ports idata]

set_output_delay -clock clk2 -max 5 [get_ports odata_r]



