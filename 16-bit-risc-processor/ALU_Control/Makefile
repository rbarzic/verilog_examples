SHELL := /bin/bash
IP_NAME_LC := instr_mem
comp:
	iverilog -o ALU_control.vpp ALU_control.v ALU_control_tb.v


run:
	vvp ALU_control.vpp


wave:
	gtkwave ALU_control.vcd &



clean:
	rm *.vpp *.vcd

