comp:
	iverilog -o tb  -c vlist_tb.txt

run:
	vvp tb



vermin:
	vermin -emitstems -emitvars  -f vlist_tb.txt > tb.stems
	#vermin -emitmono tb.stems -DUSE_LXT2=1 -f vlist_tb.txt

wave:
	gtkwave tb.vcd

wave_lxt2:
	# iverilog seems to generate lxt2 file with wrong signal names
	# so we do a vcd to lxt2 conversion
	vcd2lxt2 tb.vcd tb.lxt2
	gtkwave -t tb.stems tb.lxt2


help:
	@echo "Targets:"
	@echo "         comp : Compile the design with icarus Verilog (using files listed in vlist_tb.txt)"
	@echo "         run : Run the simulation, generating a vcd file"
	@echo "         wave  : View the vcd file using gtkwave vcd viewer"




# For flymake on-the-fly code checking
check-syntax:
	iverilog -t null -o tb  -c vlist_tb.txt
