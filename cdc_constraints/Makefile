

XILINX_PART=xc7s50csga324
CHIP=chip
GIT_SHA1=$(shell git log -1 --pretty=format:"%h")
XDC_FILE=cdc_constraints.xdc
XDC_FILE_IMPL=cdc_constraints_impl.xdc


export XILINX_PART XDC_FILE XDC_FILE_IMPL  CHIP  GIT_SHA1

comp:
	iverilog -o tb  -c vlist_tb.txt

run:
	vvp tb

synt:
	LANG="en_US.utf8" vivado -mode tcl -source vivado.tcl



all: comp run

# For flymake on-the-fly code checking
check-syntax:
	iverilog -t null -o tb  -c vlist_tb.txt
