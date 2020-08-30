
set xilinx_part [string trim $env(XILINX_PART)]
set chip [string trim $env(CHIP)]
set xdc_file [string trim $env(XDC_FILE)]
set xdc_file_impl [string trim $env(XDC_FILE_IMPL)]
set git_sha1 [string trim $env(GIT_SHA1)]
set top ../..

puts "-I- Xilinx part = ${xilinx_part}\n"
puts "-I- XDC file = ${xdc_file}\n"

create_project -in_memory $xilinx_part


read_verilog chip.v

#read_xdc -unmanaged $xdc_file
read_xdc  $xdc_file
set include_dir .

synth_design -include_dirs $include_dir -top chip  -part $xilinx_part -flatten_hierarchy none -verilog_define SYNTHESIS=1   -verilog_define FPGA=1 -verilog_define FPGA_XILINX7=1  -verilog_define SYNT_FPGA=1 -verilog_define FPGA_HAS_OLED_IF=1 -verilog_define CHIP_PROCESS=\"LIB_XILINX7\" -verilog_define CHIP_VERSION_GIT=32'h$git_sha1

#return

set outputDir ./output
file mkdir $outputDir

set bitfileDir ./bitfiles
file mkdir $bitfileDir


report_timing_summary -file $outputDir/post_synth_timing_summary.rpt
report_utilization -file $outputDir/post_synth_util.rpt

check_timing -override_defaults loops -verbose > $outputDir/post_synt_loops.rpt

#set_clock_groups -asynchronous -group {clk_in clk_50m_arty_mmcm} -group {TCK}

opt_design

# reportCriticalPaths $outputDir/post_opt_critpath_report.csv

check_timing -override_defaults loops -verbose > $outputDir/post_opt_loops.rpt
place_design
report_clock_utilization -file $outputDir/clock_util.rpt

check_timing -override_defaults loops -verbose > $outputDir/post_place_loops.rpt


read_xdc $xdc_file_impl

#
# Optionally run optimization if there are timing violations after placement
if {[get_property SLACK [get_timing_paths -max_paths 1 -nworst 1 -setup]] < 0} {
puts "Found setup timing violations => running physical optimization"
phys_opt_design
}
write_checkpoint -force $outputDir/post_place.dcp
report_utilization -file $outputDir/post_place_util.rpt
report_timing_summary -file $outputDir/post_place_timing_summary.rpt
#
# STEP#5: run the router, write the post-route design checkpoint, report the routing
# status, report timing, power, and DRC, and finally save the Verilog netlist.
#
route_design
write_checkpoint -force $outputDir/post_route.dcp
#report_route_status -file $outputDir/post_route_status.rpt
#report_timing_summary -file $outputDir/post_route_timing_summary.rpt
report_power -file $outputDir/post_route_power.rpt
#report_drc -file $outputDir/post_imp_drc.rpt
#write_verilog -force $outputDir/cpu_impl_netlist.v -mode timesim -sdf_anno true
#
# STEP#6: generate a bitstream
#
write_bitstream -force $bitfileDir/${chip}-${xilinx_part}.bit
#write_debug_probes -force $bitfileDir/${chip}-${xilinx_part}.ltx
# STEP #7 : netlist with timing
#write_verilog -force -mode timesim -sdf_anno true $outputDir/chip_layout.v
#write_sdf -force $outputDir/chip_layout.sdf

# STEP #8 : output BRAM location information
#source report_bram.tcl > bram.yaml

# STEP #9 : various reporting
#exec echo [all_latches] > $outputDir/all_latches.rpt


# Local Variables:
# mode: tcl
# End:
