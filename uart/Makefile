SHELL := /bin/bash
IP_NAME_LC := uart
comp:
	iverilog -o tb_uart.vpp uart.v uart_tb.v


run:
	vvp tb_uart.vpp


wave:
	gtkwave uart_tb.vcd &



clean:
	rm *.vpp *.vcd

