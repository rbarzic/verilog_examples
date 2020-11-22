set_db library gscl45nm.lib
read_hdl chip.v
elaborate

if { [eval { info exists ::env(RETURN_AFTER_ELAB)}]} {
    return
}

# Set driver to get realistic properties
set and2 [ get_db lib_cells -if { .name == */AND2X2} ]
set and2_output [  get_db $and2  .lib_pin */Y ]
set_db [ get_db ports clk1 ] .external_driver $and2_output
set_db [ get_db ports clk2 ] .external_driver $and2_output
set_db [ get_db ports idata ] .external_driver $and2_output

# to get rid of the message : Outputs without external load
# femtofarad
set_db [ get_db ports odata_r ] .external_pin_cap 500 


read_sdc sdc_example1.sdc

syn_generic
syn_map
report_timing > chip.rpt
report_area >> chip.rpt
write_hdl > chip.ntl.v
report timing -lint -verbose > chip.lint.rpt

if { [eval { info exists ::env(DO_NOT_EXIT)}]} {
    return
} else {
    quit
}
