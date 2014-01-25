comp:
	iverilog -o tb  -c vlist_tb.txt

run:
	vvp tb

wave:
	gtkwave tb.vcd


help:
	@echo "Targets:"
	@echo "         comp : Compile the design with icarus Verilog (using files listed in vlist_tb.txt)"
	@echo "         run : Run the simulation, generating a vcd file"
	@echo "         wave  : View the vcd file using gtkwave vcd viewer"


	

# For flymake on-the-fly code checking
check-syntax:
	iverilog -t null -o tb  -c vlist_tb.txt
