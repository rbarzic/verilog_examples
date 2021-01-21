SHELL := /bin/bash
IP_NAME_LC := instr_mem
comp:
	iverilog -o ALU.vpp ALU.v ALU_tb.v


run:
	vvp ALU.vpp


wave:
	gtkwave ALU.vcd &



clean:
	rm *.vpp *.vcd

