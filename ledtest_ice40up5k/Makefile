synthesis:
	synthesis -a "ice40tp" -p iCE40UP5K -t SG48 -sp "6" -mux_style Auto \
	-use_io_insertion 1 \
	-sdc ./source/impl_1/timing_constraints.ldc \
	-ver ./source/impl_1/LED_control.v \
        -ver ./impl_1/pll_24M/rtl/pll_24M.v \
	-vhd ./source/impl_1/rgb_led_top.vhd \
	-top led_top \
	-output_hdl outputs/led_top.impl.vm \

postsyn:
	postsyn -w -a ice40tp -p iCE40UP5K -t SG48 -sp 6 \
	-ldc ./source/impl_1/timing_constraints.ldc \
	-o led_top.postsyn.udb \
	./outputs/led_top.impl.vm

map:
	map led_top.postsyn.udb  ./source/impl_1/design_constraints.pdc  -o led_top.map.udb

par:
	par led_top.map.udb led_top.par.udb


timing:
	timing led_top.par.udb -o led_top.twr

bitgen:
	mv led_top.par.udb led_top_par.udb # Stupid bitgen hangling of file extension
	bitgen   -w led_top_par.udb led_top_par.bit
