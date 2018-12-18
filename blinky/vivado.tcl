set xilinx_part xc7s50csga324
read_verilog blinky.v
read_xdc ./Arty-S7-50-Rev-B-Master.xdc

synth_design -top blinky  -part $xilinx_part -flatten_hierarchy none
opt_design
place_design
phys_opt_design
route_design
write_bitstream -force blinky.bit
