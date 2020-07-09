synt:
	vivado -mode tcl -source vivado.tcl


comp:
	iverilog  -o tb  -c vlist_tb.txt	


run:
	vvp tb

wave:
	gtkwave tb.vcd &
