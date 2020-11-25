comp:
	iverilog -o tb.vpp ram_dp_ar_aw.v syn_fifo.v fifo_tb.v

run:
	vvp tb.vpp

wave:
	gtkwave tb.vcd &


clean:
	rm *.vpp *.vcd