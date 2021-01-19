SHELL := /bin/bash
IP_NAME_LC := instr_mem
comp:
	iverilog -o instr_mem.vpp instr_mem.v ram_dp_ar_aw.v instr_mem_tb.v


run:
	vvp instr_mem.vpp


wave:
	gtkwave instr_mem.vcd &



clean:
	rm *.vpp *.vcd

