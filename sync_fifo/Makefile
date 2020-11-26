comp:
	iverilog -o tb_aram.vpp ram_dp_ar_aw.v syn_fifo.v fifo_tb.v


run:
	vvp tb_aram.vpp


wave:
	gtkwave tb.vcd &



clean:
	rm *.vpp *.vcd