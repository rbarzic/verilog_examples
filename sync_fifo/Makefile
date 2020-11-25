SHELL := /bin/bash
IP_NAME_LC := sync_fifo
comp:
	iverilog -o tb_aram.vpp ram_dp_ar_aw.v syn_fifo.v fifo_tb.v
	iverilog -o tb_sram.vpp ram_dp_sr_sw.v syn_fifo_syn_RAM.v syn_fifo_syn_RAM_tb.v


run:
	vvp tb_aram.vpp
	vvp tb_sram.vpp


wavea:
	gtkwave tb.vcd &

waves:
	gtkwave tbs.vcd &


clean:
	rm *.vpp *.vcd



mkvenv:
	. `which virtualenvwrapper.sh` && mkvirtualenv -p python3 $(IP_NAME_LC) && workon $(IP_NAME_LC)

freeze:
	pip freeze > requirements.txt

install_env:
	pip install -r requirements.txt

check-syntax:
	TOP=$(TOP) iverilog -t null -o tb  -c sim/verilog/vlist_tb.txt
