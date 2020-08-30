set_property -dict { PACKAGE_PIN  F14  IOSTANDARD LVCMOS33    } [get_ports { clk_a }]; # default was IOSTANDARD LVCMOS33 
set_property -dict { PACKAGE_PIN  N15  IOSTANDARD LVCMOS33    } [get_ports { clk_b }]; # default was IOSTANDARD LVCMOS33 

set_property -dict { PACKAGE_PIN  E18   IOSTANDARD LVCMOS33 } [get_ports { in_a }];
set_property -dict { PACKAGE_PIN  F13   IOSTANDARD LVCMOS33 } [get_ports { out_b_r }];

set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { rst_a_n }]; #IO_L20N_T3_A19_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { rst_b_n }]; #IO_L21P_T3_DQS_15 Sch=sw[1]


set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_a_IBUF]


## Configuration options, can be used for all designs
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

## SW3 is assigned to a pin M5 in the 1.35v bank. This pin can also be used as
## the VREF for BANK 34. To ensure that SW3 does not define the reference voltage
## and to be able to use this pin as an ordinary I/O the following property must
## be set to enable an internal VREF for BANK 34. Since a 1.35v supply is being
## used the internal reference is set to half that value (i.e. 0.675v). Note that
## this property must be set even if SW3 is not used in the design.
set_property INTERNAL_VREF 0.675 [get_iobanks 34]

# Local Variables:
# mode: tcl
# End:
