comp:
	iverilog -o tb_aram.vpp ram_dp_ar_aw.v syn_fifo.v fifo_tb.v


run:
	vvp tb_aram.vpp


wave:
	gtkwave tb.vcd &



clean:
	rm *.vpp *.vcd


# TOP:=$(shell cd ../..; pwd)

# TOPLEVEL_LANG :=verilog
# VERILOG_SOURCES = counter_4bit.v

# TOPLEVEL := counter_4bit
# MODULE   := test_counter_4bit

# COMPILE_ARGS := -DCOCOTB_VCD=1 -DCOCOTB_SIM=1

# export COCOTB_REDUCED_LOG_FMT

# #include $(shell cocotb-config --makefiles)/Makefile.inc
# include $(shell cocotb-config --makefiles)/Makefile.sim