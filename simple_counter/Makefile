QUESTA_LIB_DIR?=/tmp/$(USER)/simple_counter

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

comp_questa:
	mkdir -p $(QUESTA_LIB_DIR)
	vlib $(QUESTA_LIB_DIR)
	vmap work $(QUESTA_LIB_DIR)
	vlog -work $(QUESTA_LIB_DIR) -timescale="1ns/1ns" -f vlist_tb.txt

opt_questa:
	vopt -work work -o DesignOpt +acc tb

run_questa:
	vsim -lib work work.DesignOpt  -do "run  -all; quit;"  -batch

run_questa_gui:
	vsim -lib work work.DesignOpt  -gui


help:
	@echo "Targets:"
	@echo "         comp : Compile the design with icarus Verilog (using files listed in vlist_tb.txt)"
	@echo "         run : Run the simulation, generating a vcd file"
	@echo "         wave  : View the vcd file using gtkwave vcd viewer"
	@echo "         comp_questa  : Compile the design with the vlog program from Questa"
	@echo "         opt_questa  : Optimize the compiled  design"
	@echo "         run_questa  : Run the simulation in batch mode using the Questa simulator"
	@echo "         run_questa_gui  : Launch the Questa simulator in gui mode"




# For flymake on-the-fly code checking
check-syntax:
	iverilog -t null -o tb  -c vlist_tb.txt
