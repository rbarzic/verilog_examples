TOP:=$(shell cd ../..; pwd)

TOPLEVEL := i2cmaster
TOPLEVEL_LANG := verilog


VERILOG_SOURCES = i2cmaster.v

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file:

# MODULE is the name of the Python test file:
MODULE=test_i2c

# OVL_RUNTIME_AFTER_FATAL must be set to a small value to avoid the simulation to end
# normally (by cocotb) even if a fatal error is found
COMPILE_ARGS := -DCOCOTB_VCD=1 -DCOCOTB_SIM=1

export COCOTB_REDUCED_LOG_FMT

include $(shell cocotb-config --makefiles)/Makefile.inc
include $(shell cocotb-config --makefiles)/Makefile.sim

