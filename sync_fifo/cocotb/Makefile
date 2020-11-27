TOP:=$(shell cd ..; pwd)

TOPLEVEL := syn_ram_fifo
TOPLEVEL_LANG := verilog

PWD=$(shell pwd)
DUT = $(TOP)

VERILOG_SOURCES = $(DUT)/syn_fifo_syn_RAM.v $(DUT)/ram_dp_sr_sw.v
MODULE := test_syn_fifo

COMPILE_ARGS :=   -I .. -DCOCOTB_VCD=1 -DCOCOTB_SIM=1  -Wall

export COCOTB_REDUCED_LOG_FMT


include $(shell cocotb-config --makefiles)/Makefile.sim

wave:
	gtkwave waveform.vcd &


