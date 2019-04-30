// Verilog netlist produced by program LSE :  version Radiant Software (64-bit) 1.1.0.165.1
// Netlist written on Tue Apr 30 07:30:42 2019
// Source file index table: 
// Object locations will have the form @<file_index>(<first_ line>[<left_column>],<last_line>[<right_column>])
// file 0 "/home/ronan/perso/github/verilog_examples/ledtest_ice40up5k/impl_1/pll_24M/rtl/pll_24M.v"
// file 1 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/CCU2_B.v"
// file 2 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3BZ.v"
// file 3 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3DZ.v"
// file 4 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3IZ.v"
// file 5 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3JZ.v"
// file 6 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/HSOSC.v"
// file 7 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/HSOSC1P8V.v"
// file 8 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/IB.v"
// file 9 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/IFD1P3AZ.v"
// file 10 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/LSOSC.v"
// file 11 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/LSOSC1P8V.v"
// file 12 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/OB.v"
// file 13 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/OBZ_B.v"
// file 14 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/OFD1P3AZ.v"
// file 15 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/PDP4K.v"
// file 16 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/RGB.v"
// file 17 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/RGB1P8V.v"
// file 18 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/SP256K.v"
// file 19 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/legacy.v"

//
// Verilog Description of module pll_24M
//

module pll_24M (ref_clk_i, rst_n_i, lock_o, outcore_o, outglobal_o);   /* synthesis lineinfo="@0(10[8],10[15])"*/
    input ref_clk_i;   /* synthesis lineinfo="@0(11[11],11[20])"*/
    input rst_n_i;   /* synthesis lineinfo="@0(12[11],12[18])"*/
    output lock_o;   /* synthesis lineinfo="@0(13[12],13[18])"*/
    output outcore_o;   /* synthesis lineinfo="@0(14[12],14[21])"*/
    output outglobal_o;   /* synthesis lineinfo="@0(15[12],15[23])"*/
    
    wire ref_clk_i_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@0(11[11],11[20])"*/
    wire outcore_o_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@0(14[12],14[21])"*/
    wire outglobal_o_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@0(15[12],15[23])"*/
    
    wire GND_net, rst_n_i_c, lock_o_c, VCC_net;
    
    IB ref_clk_i_pad (.I(ref_clk_i), .O(ref_clk_i_c));   /* synthesis lineinfo="@0(11[11],11[20])"*/
    VLO i1 (.Z(GND_net));
    OB outglobal_o_pad (.I(outglobal_o_c), .O(outglobal_o));   /* synthesis lineinfo="@0(15[12],15[23])"*/
    \pll_24M_ipgen_lscc_pll(DIVR="0",DIVF="63",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="12.000000")  lscc_pll_inst (.GND_net(GND_net), 
            .ref_clk_i_c(ref_clk_i_c), .rst_n_i_c(rst_n_i_c), .lock_o_c(lock_o_c), 
            .outcore_o_c(outcore_o_c), .outglobal_o_c(outglobal_o_c));   /* synthesis lineinfo="@0(17[41],17[316])"*/
    OB outcore_o_pad (.I(outcore_o_c), .O(outcore_o));   /* synthesis lineinfo="@0(14[12],14[21])"*/
    IB rst_n_i_pad (.I(rst_n_i), .O(rst_n_i_c));   /* synthesis lineinfo="@0(12[11],12[18])"*/
    OB lock_o_pad (.I(lock_o_c), .O(lock_o));   /* synthesis lineinfo="@0(13[12],13[18])"*/
    VHI i75 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module \pll_24M_ipgen_lscc_pll(DIVR="0",DIVF="63",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="12.000000") 
//

module \pll_24M_ipgen_lscc_pll(DIVR="0",DIVF="63",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="12.000000")  (GND_net, 
            ref_clk_i_c, rst_n_i_c, lock_o_c, outcore_o_c, outglobal_o_c);
    input GND_net;
    input ref_clk_i_c;
    input rst_n_i_c;
    output lock_o_c;
    output outcore_o_c;
    output outglobal_o_c;
    
    wire ref_clk_i_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@0(11[11],11[20])"*/
    wire outcore_o_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@0(14[12],14[21])"*/
    wire outglobal_o_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@0(15[12],15[23])"*/
    
    wire feedback_w;
    
    PLL_B u_PLL_B (.REFERENCECLK(ref_clk_i_c), .FEEDBACK(feedback_w), .DYNAMICDELAY7(GND_net), 
          .DYNAMICDELAY6(GND_net), .DYNAMICDELAY5(GND_net), .DYNAMICDELAY4(GND_net), 
          .DYNAMICDELAY3(GND_net), .DYNAMICDELAY2(GND_net), .DYNAMICDELAY1(GND_net), 
          .DYNAMICDELAY0(GND_net), .BYPASS(GND_net), .RESET_N(rst_n_i_c), 
          .SCLK(GND_net), .SDI(GND_net), .LATCH(GND_net), .INTFBOUT(feedback_w), 
          .OUTCORE(outcore_o_c), .OUTGLOBAL(outglobal_o_c), .LOCK(lock_o_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=41, LSE_RCOL=316, LSE_LLINE=17, LSE_RLINE=17 */ ;   /* synthesis lineinfo="@0(17[41],17[316])"*/
    defparam u_PLL_B.FEEDBACK_PATH = "SIMPLE";
    defparam u_PLL_B.DELAY_ADJUSTMENT_MODE_FEEDBACK = "FIXED";
    defparam u_PLL_B.FDA_FEEDBACK = "0";
    defparam u_PLL_B.DELAY_ADJUSTMENT_MODE_RELATIVE = "FIXED";
    defparam u_PLL_B.FDA_RELATIVE = "0";
    defparam u_PLL_B.SHIFTREG_DIV_MODE = "0";
    defparam u_PLL_B.PLLOUT_SELECT_PORTA = "GENCLK";
    defparam u_PLL_B.PLLOUT_SELECT_PORTB = "GENCLK";
    defparam u_PLL_B.DIVR = "0";
    defparam u_PLL_B.DIVF = "63";
    defparam u_PLL_B.DIVQ = "5";
    defparam u_PLL_B.FILTER_RANGE = "1";
    defparam u_PLL_B.EXTERNAL_DIVIDE_FACTOR = "NONE";
    defparam u_PLL_B.ENABLE_ICEGATE_PORTA = "0";
    defparam u_PLL_B.ENABLE_ICEGATE_PORTB = "0";
    defparam u_PLL_B.TEST_MODE = "0";
    defparam u_PLL_B.FREQUENCY_PIN_REFERENCECLK = "12.000000";
    
endmodule