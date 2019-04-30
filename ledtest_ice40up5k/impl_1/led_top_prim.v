// Verilog netlist produced by program LSE :  version Radiant Software (64-bit) 1.1.0.165.1
// Netlist written on Tue Apr 30 07:41:46 2019
// Source file index table: 
// Object locations will have the form @<file_index>(<first_ line>[<left_column>],<last_line>[<right_column>])
// file 0 "/home/ronan/perso/github/verilog_examples/ledtest_ice40up5k/impl_1/pll_24M/rtl/pll_24M.v"
// file 1 "/home/ronan/perso/github/verilog_examples/ledtest_ice40up5k/source/impl_1/LED_control.v"
// file 2 "/home/ronan/perso/github/verilog_examples/ledtest_ice40up5k/source/impl_1/rgb_led_top.vhd"
// file 3 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_iCE40UP.v"
// file 4 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_iCE40UP.vhd"
// file 5 "/opt/latticesemi/radiant/1.1/ip/common/adder/rtl/lscc_adder.v"
// file 6 "/opt/latticesemi/radiant/1.1/ip/common/adder_subtractor/rtl/lscc_add_sub.v"
// file 7 "/opt/latticesemi/radiant/1.1/ip/common/complex_mult/rtl/lscc_complex_mult.v"
// file 8 "/opt/latticesemi/radiant/1.1/ip/common/counter/rtl/lscc_cntr.v"
// file 9 "/opt/latticesemi/radiant/1.1/ip/common/fifo/rtl/lscc_fifo.v"
// file 10 "/opt/latticesemi/radiant/1.1/ip/common/fifo_dc/rtl/lscc_fifo_dc.v"
// file 11 "/opt/latticesemi/radiant/1.1/ip/common/mult_accumulate/rtl/lscc_mult_accumulate.v"
// file 12 "/opt/latticesemi/radiant/1.1/ip/common/mult_add_sub/rtl/lscc_mult_add_sub.v"
// file 13 "/opt/latticesemi/radiant/1.1/ip/common/mult_add_sub_sum/rtl/lscc_mult_add_sub_sum.v"
// file 14 "/opt/latticesemi/radiant/1.1/ip/common/multiplier/rtl/lscc_multiplier.v"
// file 15 "/opt/latticesemi/radiant/1.1/ip/common/ram_dp/rtl/lscc_ram_dp.v"
// file 16 "/opt/latticesemi/radiant/1.1/ip/common/ram_dq/rtl/lscc_ram_dq.v"
// file 17 "/opt/latticesemi/radiant/1.1/ip/common/rom/rtl/lscc_rom.v"
// file 18 "/opt/latticesemi/radiant/1.1/ip/common/subtractor/rtl/lscc_subtractor.v"
// file 19 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_add.v"
// file 20 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_addsub.v"
// file 21 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_complex_mult.v"
// file 22 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_counter.v"
// file 23 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_dsp.v"
// file 24 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_fifo.v"
// file 25 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_fifo_dc.v"
// file 26 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_mac.v"
// file 27 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_mult.v"
// file 28 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_multaddsub.v"
// file 29 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_multaddsubsum.v"
// file 30 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_ram_dp.v"
// file 31 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_ram_dp_be.v"
// file 32 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_ram_dq.v"
// file 33 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_ram_dq_be.v"
// file 34 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_rom.v"
// file 35 "/opt/latticesemi/radiant/1.1/ip/pmi/pmi_sub.v"
// file 36 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/CCU2_B.v"
// file 37 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3BZ.v"
// file 38 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3DZ.v"
// file 39 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3IZ.v"
// file 40 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3JZ.v"
// file 41 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/HSOSC.v"
// file 42 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/HSOSC1P8V.v"
// file 43 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/IB.v"
// file 44 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/IFD1P3AZ.v"
// file 45 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/LSOSC.v"
// file 46 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/LSOSC1P8V.v"
// file 47 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/OB.v"
// file 48 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/OBZ_B.v"
// file 49 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/OFD1P3AZ.v"
// file 50 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/PDP4K.v"
// file 51 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/RGB.v"
// file 52 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/RGB1P8V.v"
// file 53 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/SP256K.v"
// file 54 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/legacy.v"

//
// Verilog Description of module led_top
//

module led_top (clk12M, rst, color_sel, RGB_Blink_En, REDn, BLUn, 
            GRNn, RED, BLU, GRN);   /* synthesis lineinfo="@2(81[8],81[15])"*/
    input clk12M;   /* synthesis lineinfo="@2(83[2],83[8])"*/
    input rst;   /* synthesis lineinfo="@2(84[2],84[5])"*/
    input [1:0]color_sel;   /* synthesis lineinfo="@2(85[2],85[11])"*/
    input RGB_Blink_En;   /* synthesis lineinfo="@2(86[2],86[14])"*/
    output REDn /* synthesis black_box_pad_pin=1 */ ;   /* synthesis lineinfo="@2(88[2],88[6])"*/
    output BLUn /* synthesis black_box_pad_pin=1 */ ;   /* synthesis lineinfo="@2(89[2],89[6])"*/
    output GRNn /* synthesis black_box_pad_pin=1 */ ;   /* synthesis lineinfo="@2(90[2],90[6])"*/
    output RED;   /* synthesis lineinfo="@2(91[2],91[5])"*/
    output BLU;   /* synthesis lineinfo="@2(92[2],92[5])"*/
    output GRN;   /* synthesis lineinfo="@2(93[2],93[5])"*/
    
    wire clk12M_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@2(83[2],83[8])"*/
    
    wire rst_c, color_sel_c_1, color_sel_c_0, RED_c, BLU_c, GRN_c, 
        n8964, BlinkRate_s_3__N_9_c_0, n8965, GND_net, VCC_net, n8963;
    
    VLO i1 (.Z(GND_net));
    IB clk12M_pad (.I(clk12M), .O(clk12M_c));   /* synthesis lineinfo="@2(83[2],83[8])"*/
    IB rst_pad (.I(rst), .O(rst_c));   /* synthesis lineinfo="@2(84[2],84[5])"*/
    RGB_CORE U2_RGB_CORE_inst (.CURREN(VCC_net), .RGBLEDEN(VCC_net), .RGB0PWM(BLU_c), 
            .RGB1PWM(GRN_c), .RGB2PWM(RED_c), .RGB2(n8963), .RGB1(n8964), 
            .RGB0(n8965)) /* synthesis syn_instantiated=1 */ ;
    defparam U2_RGB_CORE_inst.CURRENT_MODE = "0";
    defparam U2_RGB_CORE_inst.RGB0_CURRENT = "0b111111";
    defparam U2_RGB_CORE_inst.RGB1_CURRENT = "0b111111";
    defparam U2_RGB_CORE_inst.RGB2_CURRENT = "0b111111";
    defparam U2_RGB_CORE_inst.FABRIC_TRIME = "DISABLE";
    OB GRN_pad (.I(GRN_c), .O(GRN));   /* synthesis lineinfo="@2(93[2],93[5])"*/
    OB BLU_pad (.I(BLU_c), .O(BLU));   /* synthesis lineinfo="@2(92[2],92[5])"*/
    OB RED_pad (.I(RED_c), .O(RED));   /* synthesis lineinfo="@2(91[2],91[5])"*/
    IB \color_sel_pad[1]  (.I(color_sel[1]), .O(color_sel_c_1));   /* synthesis lineinfo="@2(85[2],85[11])"*/
    IB \color_sel_pad[0]  (.I(color_sel[0]), .O(color_sel_c_0));   /* synthesis lineinfo="@2(85[2],85[11])"*/
    IB \BlinkRate_s_3__N_9_pad[0]  (.I(RGB_Blink_En), .O(BlinkRate_s_3__N_9_c_0));   /* synthesis lineinfo="@2(86[2],86[14])"*/
    \LED_control(BreatheRamp=4'b0110)  U1 (.rst_c(rst_c), .color_sel_c_0(color_sel_c_0), 
            .BlinkRate_s_3__N_9_c_0(BlinkRate_s_3__N_9_c_0), .RED_c(RED_c), 
            .GRN_c(GRN_c), .BLU_c(BLU_c), .GND_net(GND_net), .color_sel_c_1(color_sel_c_1), 
            .clk12M_c(clk12M_c));   /* synthesis lineinfo="@2(158[4],158[15])"*/
    OB_RGB U2_rgb0Pad (.T_N(VCC_net), .I(n8965), .B(BLUn)) /* synthesis syn_instantiated=1 */ ;
    OB_RGB U2_rgb1Pad (.T_N(VCC_net), .I(n8964), .B(GRNn)) /* synthesis syn_instantiated=1 */ ;
    OB_RGB U2_rgb2Pad (.T_N(VCC_net), .I(n8963), .B(REDn)) /* synthesis syn_instantiated=1 */ ;
    VHI i5939 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module \LED_control(BreatheRamp=4'b0110) 
//

module \LED_control(BreatheRamp=4'b0110)  (rst_c, color_sel_c_0, BlinkRate_s_3__N_9_c_0, 
            RED_c, GRN_c, BLU_c, GND_net, color_sel_c_1, clk12M_c);
    input rst_c;
    input color_sel_c_0;
    input BlinkRate_s_3__N_9_c_0;
    output RED_c;
    output GRN_c;
    output BLU_c;
    input GND_net;
    input color_sel_c_1;
    input clk12M_c;
    
    wire clk24M /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@1(103[6],103[12])"*/
    wire clk12M_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@2(83[2],83[8])"*/
    wire [1:0]red_set;   /* synthesis lineinfo="@1(114[15],114[22])"*/
    wire [31:0]red_peak;   /* synthesis lineinfo="@1(118[15],118[23])"*/
    
    wire n29, n27, n15, n7281, n7557;
    wire [17:0]n77;
    
    wire n3577;
    wire [17:0]n97;
    wire [27:0]off_max_cnt;   /* synthesis lineinfo="@1(122[15],122[26])"*/
    wire [27:0]steady_count;   /* synthesis lineinfo="@1(132[15],132[27])"*/
    
    wire n8326;
    wire [1:0]grn_set;   /* synthesis lineinfo="@1(115[15],115[22])"*/
    wire [31:0]grn_peak;   /* synthesis lineinfo="@1(119[15],119[23])"*/
    wire [17:0]curr_blu_17__N_451;
    wire [17:0]curr_blu;   /* synthesis lineinfo="@1(140[16],140[24])"*/
    
    wire VCC_net;
    wire [3:0]RGB_color_s;   /* synthesis lineinfo="@1(109[15],109[26])"*/
    wire [1:0]blu_set;   /* synthesis lineinfo="@1(116[15],116[22])"*/
    wire [31:0]blu_peak;   /* synthesis lineinfo="@1(120[15],120[23])"*/
    wire [3:0]BlinkRate_s;   /* synthesis lineinfo="@1(112[15],112[26])"*/
    
    wire n17, n15_adj_787, n13, n7343, n7339;
    wire [3:0]n202;
    wire [31:0]blu_accum;   /* synthesis lineinfo="@1(136[15],136[24])"*/
    wire [3:0]BreatheRamp_s;   /* synthesis lineinfo="@1(111[15],111[28])"*/
    wire [27:0]ramp_max_cnt;   /* synthesis lineinfo="@1(125[15],125[27])"*/
    wire [31:0]grn_intensity_step_31__N_197;
    wire [31:0]grn_intensity_step;   /* synthesis lineinfo="@1(127[15],127[33])"*/
    wire [31:0]red_intensity_step_31__N_165;
    wire [31:0]red_intensity_step;   /* synthesis lineinfo="@1(126[15],126[33])"*/
    wire [31:0]blu_intensity_step_31__N_229;
    wire [31:0]blu_intensity_step;   /* synthesis lineinfo="@1(128[15],128[33])"*/
    
    wire n11, n9, n7, n5;
    wire [32:0]n172;
    
    wire n3347;
    wire [31:0]red_accum_31__N_319;
    wire [17:0]curr_grn_17__N_433;
    wire [17:0]curr_grn;   /* synthesis lineinfo="@1(139[16],139[24])"*/
    wire [17:0]pwm_count;   /* synthesis lineinfo="@1(142[16],142[25])"*/
    wire [27:0]n147;
    
    wire n1979, n2611, n2609, n7365, n6, n2641, n1977;
    wire [17:0]curr_red_17__N_415;
    wire [17:0]curr_red;   /* synthesis lineinfo="@1(138[16],138[24])"*/
    wire [27:0]n147_adj_933;
    
    wire n2657, red_pwm_N_784, grn_pwm_N_786, blu_pwm_N_785;
    wire [3:0]n212;
    
    wire n2639, n4563, n8742, n626, n4565;
    wire [32:0]n172_adj_934;
    
    wire n12, n2607;
    wire [31:0]grn_accum;   /* synthesis lineinfo="@1(135[15],135[24])"*/
    
    wire n6_adj_788, n23, n7376, n7368, n2637, n21, n2605, n2603, 
        n19, n2601, n8288, n7501, n27_adj_789, n29_adj_790, n31, 
        n7623, n7624, n2599, n10, n7567, n7403, n25;
    wire [31:0]blu_accum_31__N_383;
    
    wire n8, n8304, n7273, n4, n1846, n2220, n899, n611;
    wire [31:0]red_accum;   /* synthesis lineinfo="@1(134[15],134[24])"*/
    
    wire n2597, n1782, n1781, n4426, n8829, n4428, n4434, n8841, 
        n4436, n4507, n8790, n4509;
    wire [32:0]n172_adj_935;
    
    wire n4463, n8955;
    wire [27:0]ramp_count;   /* synthesis lineinfo="@1(131[15],131[25])"*/
    
    wire n4465, n7_adj_793, n6006, n2635, n4505, n8787, n2633, 
        n2631, n52, n2595, n2629, n1034, n803, n7283, n4561, 
        n8739, n2627, n2625, n2, n2623, n4424, n8826, n4422, 
        n8823;
    wire [31:0]grn_accum_31__N_351;
    
    wire n5962, n2671, n8291, n4461, n8952, n4559, n8736, n4557, 
        n8733, n4503, n8784, n4501, n8781, n4459, n8949, n4457, 
        n8946, n4455, n8943, n4453, n8940, n4499, n8778, n8775, 
        n4432, n8838, n2593, n4430, n8835, n8730, n23_adj_804, 
        n21_adj_805, n19_adj_806, n7279, n7539, n4496, n8916, n2669, 
        n4554, n8892, n2667, n4494, n8913, n2665, n4552, n8889, 
        n2663, n2661, n4550, n8886, n2659, n2621, n4492, n8910, 
        n224, n7341, n10_adj_809, n8_adj_810, n4548, n8883, n7337, 
        n1911, n2619, n4451, n8937, n2617, n1975, n4490, n8907, 
        n2615, n4546, n8880, n2613, n4544, n8877, n4542, n8874, 
        n2591, n2589, n2587, n2585, n2583, n2581, n2579, n2577, 
        n2575, n2573, n2571, n2569, n2567, n2565, n2563, n6_adj_814, 
        n2561, n2655, n4540, n8871, n4538, n8868, n2653, n2651, 
        n2643, n2649, n2647, n2645, n17_adj_815, n13_adj_816, n7285, 
        n4536, n8865, n4534, n8862, n4532, n8859, n4530, n8856, 
        n4528, n8853, n8850, n4525, n8817, n4488, n8904, n4523, 
        n8814, n4486, n8901, n4484, n8898, n8_adj_843, n4449, 
        n8934, n4521, n8811, n4482, n8895, n4447, n8931, n8832, 
        n11_adj_854, n9_adj_855, n7_adj_856, n5_adj_857, n4583, n8772, 
        n4581, n8769, n4579, n8766, n4480, n8727, n4577, n8763, 
        n4575, n8760, n4519, n8808, n4517, n8805, n4478, n8724, 
        n4573, n8757, n4476, n8721, n4515, n8802, n4571, n8754, 
        n4474, n8718, n4472, n8715, n4445, n8928, n4443, n8925, 
        n4470, n8712, n4569, n8751, n4567, n8748, n4513, n8799, 
        n4511, n8796, n48, n8709, n4467, n8961, n4441, n8922, 
        n8793, n8919, n4438, n8847, n7_adj_895, n8844, n7467, 
        n7483, n8820, n8958, n17_adj_898, n7223, n15_adj_899, n10_adj_900, 
        n13_adj_901, n7581, n7224, n27_adj_902, n30, n7227, n23_adj_903, 
        n8745, n21_adj_904, n7228, n27_adj_905, n32, n28, n19_adj_906, 
        n29_adj_907, n29_adj_908, n26, n7646, n14, n7659, n40, 
        n7639, n8306, n7405, n7700, n5967, n31_adj_909, n48_adj_910, 
        n7579, n7413, n8272, n7399, n25_adj_911, n7699, n50, n7586, 
        n7664, n7385, n7643, n7663, n4_adj_912, n7694, n5986, 
        n20, n6_adj_913, n8300, n7269, n7682, n5989, n18, n7693, 
        n24, n7641, n7409, n5991, n221, n5990, n7657, n8277, 
        n7653, n7649, n7575, n7257, n22, n31_adj_914, n7545, n8296, 
        n7519, n6028, n10_adj_915, n7299, n25_adj_916, n227, n9_adj_917, 
        n30_adj_918, n7678, n7677, n4_adj_919, n7668, n7631, n7503, 
        n7688, n28_adj_920, n7603, n7507, n7489, n7692, n7691, 
        n16, n7307, n8_adj_921, n7630, n10_adj_922, n7690, n7311, 
        n7689, n7629, n24_adj_923, n7625, n7553, n4_adj_924, n7698, 
        n7680, n7697, n7309, n7696, n16_adj_925, n7315, n28_adj_926, 
        n7611, n7681, n7672, n7637, n7453, n7695, n11_adj_927, 
        n9_adj_928, n5_adj_929, n16_adj_930, n7615, n7537, n7636, 
        n28_adj_931, n7595, n7459, n7635, n4_adj_932, n7443;
    
    FD1P3XZ grn_peak_i1 (.D(grn_set[0]), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(grn_peak[29])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(215[5],223[8])"*/
    defparam grn_peak_i1.REGSET = "RESET";
    defparam grn_peak_i1.SRMODE = "ASYNC";
    LUT4 i5076_4_lut (.A(n29), .B(n27), .C(n15), .D(n7281), .Z(n7557)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i5076_4_lut.INIT = "0xeeef";
    LUT4 i1575_2_lut (.A(n77[9]), .B(n3577), .Z(n97[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1575_2_lut.INIT = "0x2222";
    LUT4 LessThan_61_i35_rep_79_2_lut (.A(off_max_cnt[24]), .B(steady_count[17]), 
         .Z(n8326)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i35_rep_79_2_lut.INIT = "0x6666";
    FD1P3XZ curr_blu_i17 (.D(curr_blu_17__N_451[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[17])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i17.REGSET = "RESET";
    defparam curr_blu_i17.SRMODE = "ASYNC";
    FD1P3XZ RGB_color_s_i1 (.D(color_sel_c_0), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(RGB_color_s[0])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(158[5],173[10])"*/
    defparam RGB_color_s_i1.REGSET = "RESET";
    defparam RGB_color_s_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i16 (.D(curr_blu_17__N_451[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[16])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i16.REGSET = "RESET";
    defparam curr_blu_i16.SRMODE = "ASYNC";
    FD1P3XZ blu_peak_i1 (.D(blu_set[1]), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(blu_peak[30])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(226[5],234[8])"*/
    defparam blu_peak_i1.REGSET = "RESET";
    defparam blu_peak_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i15 (.D(curr_blu_17__N_451[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[15])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i15.REGSET = "RESET";
    defparam curr_blu_i15.SRMODE = "ASYNC";
    FD1P3XZ off_max_cnt_i1 (.D(BlinkRate_s[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(off_max_cnt[24])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(241[5],257[8])"*/
    defparam off_max_cnt_i1.REGSET = "SET";
    defparam off_max_cnt_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i14 (.D(curr_blu_17__N_451[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[14])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i14.REGSET = "RESET";
    defparam curr_blu_i14.SRMODE = "ASYNC";
    LUT4 i4858_4_lut (.A(n17), .B(n15_adj_787), .C(n13), .D(n7343), 
         .Z(n7339)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i4858_4_lut.INIT = "0xaaab";
    LUT4 i1742_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[26]), 
         .Z(curr_blu_17__N_451[12])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1742_2_lut_3_lut.INIT = "0x1010";
    FD1P3XZ ramp_max_cnt_i1 (.D(BreatheRamp_s[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(ramp_max_cnt[25])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(264[5],322[8])"*/
    defparam ramp_max_cnt_i1.REGSET = "RESET";
    defparam ramp_max_cnt_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i13 (.D(curr_blu_17__N_451[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[13])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i13.REGSET = "RESET";
    defparam curr_blu_i13.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i12 (.D(curr_blu_17__N_451[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[12])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i12.REGSET = "RESET";
    defparam curr_blu_i12.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i11 (.D(curr_blu_17__N_451[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[11])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i11.REGSET = "RESET";
    defparam curr_blu_i11.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i10 (.D(curr_blu_17__N_451[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[10])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i10.REGSET = "RESET";
    defparam curr_blu_i10.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i9 (.D(curr_blu_17__N_451[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[9])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i9.REGSET = "RESET";
    defparam curr_blu_i9.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i8 (.D(curr_blu_17__N_451[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[8])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i8.REGSET = "RESET";
    defparam curr_blu_i8.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i7 (.D(curr_blu_17__N_451[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[7])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i7.REGSET = "RESET";
    defparam curr_blu_i7.SRMODE = "ASYNC";
    FD1P3XZ grn_intensity_step_i2 (.D(grn_intensity_step_31__N_197[4]), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(grn_intensity_step[4])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(264[5],322[8])"*/
    defparam grn_intensity_step_i2.REGSET = "RESET";
    defparam grn_intensity_step_i2.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i6 (.D(curr_blu_17__N_451[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[6])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i6.REGSET = "RESET";
    defparam curr_blu_i6.SRMODE = "ASYNC";
    FD1P3XZ red_intensity_step_i1 (.D(red_intensity_step_31__N_165[4]), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(red_intensity_step[4])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(264[5],322[8])"*/
    defparam red_intensity_step_i1.REGSET = "RESET";
    defparam red_intensity_step_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i5 (.D(curr_blu_17__N_451[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[5])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i5.REGSET = "RESET";
    defparam curr_blu_i5.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i4 (.D(curr_blu_17__N_451[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[4])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i4.REGSET = "RESET";
    defparam curr_blu_i4.SRMODE = "ASYNC";
    FD1P3XZ grn_intensity_step_i1 (.D(grn_intensity_step_31__N_197[3]), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(grn_intensity_step[3])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(264[5],322[8])"*/
    defparam grn_intensity_step_i1.REGSET = "RESET";
    defparam grn_intensity_step_i1.SRMODE = "ASYNC";
    FD1P3XZ blu_intensity_step_i1 (.D(blu_intensity_step_31__N_229[4]), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(blu_intensity_step[4])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(264[5],322[8])"*/
    defparam blu_intensity_step_i1.REGSET = "RESET";
    defparam blu_intensity_step_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i3 (.D(curr_blu_17__N_451[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[3])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i3.REGSET = "RESET";
    defparam curr_blu_i3.SRMODE = "ASYNC";
    LUT4 select_20_Select_4_i2_2_lut (.A(blu_peak[30]), .B(BreatheRamp_s[2]), 
         .Z(blu_intensity_step_31__N_229[4])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(270[7],321[14])"*/
    defparam select_20_Select_4_i2_2_lut.INIT = "0x8888";
    LUT4 i1739_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[23]), 
         .Z(curr_blu_17__N_451[9])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1739_2_lut_3_lut.INIT = "0x1010";
    FD1P3XZ curr_blu_i2 (.D(curr_blu_17__N_451[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[2])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i2.REGSET = "RESET";
    defparam curr_blu_i2.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i1 (.D(curr_blu_17__N_451[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[1])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i1.REGSET = "RESET";
    defparam curr_blu_i1.SRMODE = "ASYNC";
    LUT4 i4862_4_lut (.A(n11), .B(n9), .C(n7), .D(n5), .Z(n7343)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i4862_4_lut.INIT = "0xaaab";
    FD1P3XZ curr_grn_i17 (.D(curr_grn_17__N_433[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[17])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i17.REGSET = "RESET";
    defparam curr_grn_i17.SRMODE = "ASYNC";
    LUT4 i1662_2_lut (.A(n172[24]), .B(n3347), .Z(red_accum_31__N_319[23])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1662_2_lut.INIT = "0x8888";
    FD1P3XZ curr_grn_i16 (.D(curr_grn_17__N_433[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[16])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i16.REGSET = "RESET";
    defparam curr_grn_i16.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i15 (.D(curr_grn_17__N_433[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[15])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i15.REGSET = "RESET";
    defparam curr_grn_i15.SRMODE = "ASYNC";
    LUT4 i1661_2_lut (.A(n172[23]), .B(n3347), .Z(red_accum_31__N_319[22])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1661_2_lut.INIT = "0x8888";
    FD1P3XZ steady_count__i12 (.D(n2641), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[12])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i12.REGSET = "RESET";
    defparam steady_count__i12.SRMODE = "ASYNC";
    LUT4 i1745_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[29]), 
         .Z(curr_blu_17__N_451[15])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1745_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_59_i5_2_lut (.A(pwm_count[2]), .B(curr_blu[2]), 
         .Z(n5)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i5_2_lut.INIT = "0x6666";
    LUT4 i1599_2_lut (.A(n147[9]), .B(n1979), .Z(n2611)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1599_2_lut.INIT = "0x2222";
    LUT4 i1598_2_lut (.A(n147[10]), .B(n1979), .Z(n2609)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1598_2_lut.INIT = "0x2222";
    LUT4 i4884_4_lut (.A(off_max_cnt[27]), .B(off_max_cnt[24]), .C(steady_count[16]), 
         .D(steady_count[7]), .Z(n7365)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i4884_4_lut.INIT = "0x7bde";
    LUT4 pwm_count_17__I_0_i6_3_lut_3_lut (.A(curr_grn[2]), .B(curr_grn[3]), 
         .C(pwm_count[3]), .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i6_3_lut_3_lut.INIT = "0x8e8e";
    FD1P3XZ curr_grn_i14 (.D(curr_grn_17__N_433[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[14])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i14.REGSET = "RESET";
    defparam curr_grn_i14.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i13 (.D(curr_grn_17__N_433[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[13])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i13.REGSET = "RESET";
    defparam curr_grn_i13.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i12 (.D(curr_grn_17__N_433[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[12])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i12.REGSET = "RESET";
    defparam curr_grn_i12.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i11 (.D(curr_grn_17__N_433[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[11])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i11.REGSET = "RESET";
    defparam curr_grn_i11.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i10 (.D(curr_grn_17__N_433[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[10])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i10.REGSET = "RESET";
    defparam curr_grn_i10.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i0 (.D(curr_red_17__N_415[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[0])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i0.REGSET = "RESET";
    defparam curr_red_i0.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i0 (.D(curr_grn_17__N_433[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[0])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i0.REGSET = "RESET";
    defparam curr_grn_i0.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i9 (.D(curr_grn_17__N_433[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[9])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i9.REGSET = "RESET";
    defparam curr_grn_i9.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i8 (.D(curr_grn_17__N_433[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[8])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i8.REGSET = "RESET";
    defparam curr_grn_i8.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i0 (.D(curr_blu_17__N_451[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[0])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_blu_i0.REGSET = "RESET";
    defparam curr_blu_i0.SRMODE = "ASYNC";
    FD1P3XZ BreatheRamp_s_i1 (.D(BlinkRate_s_3__N_9_c_0), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(BreatheRamp_s[2])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(158[5],173[10])"*/
    defparam BreatheRamp_s_i1.REGSET = "RESET";
    defparam BreatheRamp_s_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i7 (.D(curr_grn_17__N_433[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[7])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i7.REGSET = "RESET";
    defparam curr_grn_i7.SRMODE = "ASYNC";
    FD1P3XZ red_pwm (.D(red_pwm_N_784), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(RED_c)) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(467[5],493[8])"*/
    defparam red_pwm.REGSET = "RESET";
    defparam red_pwm.SRMODE = "ASYNC";
    LUT4 pwm_count_17__I_0_59_i13_2_lut (.A(pwm_count[6]), .B(curr_blu[6]), 
         .Z(n13)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i13_2_lut.INIT = "0x6666";
    LUT4 i1719_2_lut (.A(n147_adj_933[20]), .B(n1979), .Z(n2657)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1719_2_lut.INIT = "0x2222";
    FD1P3XZ grn_pwm (.D(grn_pwm_N_786), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(GRN_c)) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(467[5],493[8])"*/
    defparam grn_pwm.REGSET = "RESET";
    defparam grn_pwm.SRMODE = "ASYNC";
    FD1P3XZ blu_pwm (.D(blu_pwm_N_785), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(BLU_c)) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(467[5],493[8])"*/
    defparam blu_pwm.REGSET = "RESET";
    defparam blu_pwm.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i6 (.D(curr_grn_17__N_433[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[6])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i6.REGSET = "RESET";
    defparam curr_grn_i6.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i5 (.D(curr_grn_17__N_433[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[5])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i5.REGSET = "RESET";
    defparam curr_grn_i5.SRMODE = "ASYNC";
    FD1P3XZ blink_state_FSM_i0 (.D(n212[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(n202[0]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam blink_state_FSM_i0.REGSET = "SET";
    defparam blink_state_FSM_i0.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i4 (.D(curr_grn_17__N_433[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[4])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i4.REGSET = "RESET";
    defparam curr_grn_i4.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i3 (.D(curr_grn_17__N_433[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[3])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i3.REGSET = "RESET";
    defparam curr_grn_i3.SRMODE = "ASYNC";
    LUT4 i1660_2_lut (.A(n172[22]), .B(n3347), .Z(red_accum_31__N_319[21])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1660_2_lut.INIT = "0x8888";
    FD1P3XZ curr_grn_i2 (.D(curr_grn_17__N_433[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[2])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i2.REGSET = "RESET";
    defparam curr_grn_i2.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i1 (.D(curr_grn_17__N_433[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[1])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_grn_i1.REGSET = "RESET";
    defparam curr_grn_i1.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i11 (.D(n2639), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[11])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i11.REGSET = "RESET";
    defparam steady_count__i11.SRMODE = "ASYNC";
    FD1P3XZ off_max_cnt_i2 (.D(GND_net), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(off_max_cnt[27])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(241[5],257[8])"*/
    defparam off_max_cnt_i2.REGSET = "SET";
    defparam off_max_cnt_i2.SRMODE = "ASYNC";
    LUT4 i1657_2_lut (.A(n172[19]), .B(n3347), .Z(red_accum_31__N_319[18])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1657_2_lut.INIT = "0x8888";
    LUT4 i1736_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[20]), 
         .Z(curr_blu_17__N_451[6])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1736_2_lut_3_lut.INIT = "0x1010";
    FD1P3XZ curr_red_i17 (.D(curr_red_17__N_415[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[17])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i17.REGSET = "RESET";
    defparam curr_red_i17.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i16 (.D(curr_red_17__N_415[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[16])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i16.REGSET = "RESET";
    defparam curr_red_i16.SRMODE = "ASYNC";
    FA2 add_2612_9 (.A0(GND_net), .B0(blu_accum[11]), .C0(n626), .D0(n4563), 
        .CI0(n4563), .A1(GND_net), .B1(blu_accum[12]), .C1(n626), .D1(n8742), 
        .CI1(n8742), .CO0(n8742), .CO1(n4565), .S0(n172_adj_934[12]), 
        .S1(n172_adj_934[13]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_9.INIT0 = "0xc33c";
    defparam add_2612_9.INIT1 = "0xc33c";
    LUT4 pwm_count_17__I_0_59_i11_2_lut (.A(pwm_count[5]), .B(curr_blu[5]), 
         .Z(n11)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i11_2_lut.INIT = "0x6666";
    LUT4 LessThan_61_i12_3_lut (.A(steady_count[7]), .B(steady_count[16]), 
         .C(off_max_cnt[27]), .Z(n12)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i12_3_lut.INIT = "0x8e8e";
    LUT4 pwm_count_17__I_0_59_i9_2_lut (.A(pwm_count[4]), .B(curr_blu[4]), 
         .Z(n9)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i9_2_lut.INIT = "0x6666";
    FD1P3XZ curr_red_i15 (.D(curr_red_17__N_415[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[15])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i15.REGSET = "RESET";
    defparam curr_red_i15.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i14 (.D(curr_red_17__N_415[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[14])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i14.REGSET = "RESET";
    defparam curr_red_i14.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i13 (.D(curr_red_17__N_415[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[13])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i13.REGSET = "RESET";
    defparam curr_red_i13.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i12 (.D(curr_red_17__N_415[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[12])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i12.REGSET = "RESET";
    defparam curr_red_i12.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i11 (.D(curr_red_17__N_415[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[11])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i11.REGSET = "RESET";
    defparam curr_red_i11.SRMODE = "ASYNC";
    LUT4 pwm_count_17__I_0_59_i7_2_lut (.A(pwm_count[3]), .B(curr_blu[3]), 
         .Z(n7)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i7_2_lut.INIT = "0x6666";
    LUT4 i4800_2_lut_4_lut (.A(pwm_count[6]), .B(curr_red[6]), .C(pwm_count[5]), 
         .D(curr_red[5]), .Z(n7281)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;
    defparam i4800_2_lut_4_lut.INIT = "0x6ff6";
    LUT4 i1659_2_lut (.A(n172[21]), .B(n3347), .Z(red_accum_31__N_319[20])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1659_2_lut.INIT = "0x8888";
    FD1P3XZ curr_red_i10 (.D(curr_red_17__N_415[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[10])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i10.REGSET = "RESET";
    defparam curr_red_i10.SRMODE = "ASYNC";
    LUT4 i1597_2_lut (.A(n147[11]), .B(n1979), .Z(n2607)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1597_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_59_i17_2_lut (.A(pwm_count[8]), .B(curr_blu[8]), 
         .Z(n17)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i17_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i15_2_lut (.A(pwm_count[7]), .B(curr_blu[7]), 
         .Z(n15_adj_787)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i15_2_lut.INIT = "0x6666";
    LUT4 i1757_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[25]), 
         .Z(curr_grn_17__N_433[11])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1757_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1658_2_lut (.A(n172[20]), .B(n3347), .Z(red_accum_31__N_319[19])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1658_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_58_i6_3_lut_3_lut (.A(curr_red[2]), .B(curr_red[3]), 
         .C(pwm_count[3]), .Z(n6_adj_788)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i6_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 pwm_count_17__I_0_59_i23_2_lut (.A(pwm_count[11]), .B(curr_blu[11]), 
         .Z(n23)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i23_2_lut.INIT = "0x6666";
    LUT4 i4887_4_lut (.A(off_max_cnt[27]), .B(steady_count[15]), .C(steady_count[16]), 
         .D(n7376), .Z(n7368)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A !(B (C)+!B (C+!(D))))) */ ;
    defparam i4887_4_lut.INIT = "0x5adb";
    FD1P3XZ steady_count__i10 (.D(n2637), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[10])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i10.REGSET = "RESET";
    defparam steady_count__i10.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i9 (.D(curr_red_17__N_415[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[9])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i9.REGSET = "RESET";
    defparam curr_red_i9.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i8 (.D(curr_red_17__N_415[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[8])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i8.REGSET = "RESET";
    defparam curr_red_i8.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i7 (.D(curr_red_17__N_415[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[7])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i7.REGSET = "RESET";
    defparam curr_red_i7.SRMODE = "ASYNC";
    LUT4 i1761_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[31]), 
         .Z(curr_grn_17__N_433[17])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1761_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_59_i21_2_lut (.A(pwm_count[10]), .B(curr_blu[10]), 
         .Z(n21)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i21_2_lut.INIT = "0x6666";
    LUT4 i1596_2_lut (.A(n147[12]), .B(n1979), .Z(n2605)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1596_2_lut.INIT = "0x2222";
    LUT4 i1595_2_lut (.A(n147[13]), .B(n1979), .Z(n2603)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1595_2_lut.INIT = "0x2222";
    FD1P3XZ curr_red_i6 (.D(curr_red_17__N_415[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[6])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i6.REGSET = "RESET";
    defparam curr_red_i6.SRMODE = "ASYNC";
    LUT4 pwm_count_17__I_0_59_i19_2_lut (.A(pwm_count[9]), .B(curr_blu[9]), 
         .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i19_2_lut.INIT = "0x6666";
    LUT4 i1594_2_lut (.A(n147[14]), .B(n1979), .Z(n2601)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1594_2_lut.INIT = "0x2222";
    LUT4 i1746_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[31]), 
         .Z(curr_blu_17__N_451[17])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1746_2_lut_3_lut.INIT = "0x1010";
    LUT4 i4895_4_lut (.A(off_max_cnt[27]), .B(n8288), .C(steady_count[14]), 
         .D(n7501), .Z(n7376)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+(C+!(D)))) */ ;
    defparam i4895_4_lut.INIT = "0xdeff";
    LUT4 i1656_2_lut (.A(n172[18]), .B(n3347), .Z(red_accum_31__N_319[17])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1656_2_lut.INIT = "0x8888";
    LUT4 i1735_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[19]), 
         .Z(curr_blu_17__N_451[5])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1735_2_lut_3_lut.INIT = "0x1010";
    LUT4 LessThan_61_i27_rep_41_2_lut (.A(off_max_cnt[24]), .B(steady_count[13]), 
         .Z(n8288)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i27_rep_41_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i27_2_lut (.A(pwm_count[13]), .B(curr_blu[13]), 
         .Z(n27_adj_789)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i27_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i29_2_lut (.A(pwm_count[14]), .B(curr_blu[14]), 
         .Z(n29_adj_790)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i29_2_lut.INIT = "0x6666";
    FD1P3XZ curr_red_i5 (.D(curr_red_17__N_415[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[5])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i5.REGSET = "RESET";
    defparam curr_red_i5.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i4 (.D(curr_red_17__N_415[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[4])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i4.REGSET = "RESET";
    defparam curr_red_i4.SRMODE = "ASYNC";
    LUT4 pwm_count_17__I_0_59_i31_2_lut (.A(pwm_count[15]), .B(curr_blu[15]), 
         .Z(n31)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i31_2_lut.INIT = "0x6666";
    LUT4 i5143_3_lut (.A(n7623), .B(curr_red[14]), .C(n29), .Z(n7624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam i5143_3_lut.INIT = "0xcaca";
    LUT4 i1655_2_lut (.A(n172[17]), .B(n3347), .Z(red_accum_31__N_319[16])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1655_2_lut.INIT = "0x8888";
    LUT4 i1593_2_lut (.A(n147[15]), .B(n1979), .Z(n2599)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1593_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_58_i10_3_lut_3_lut (.A(curr_red[5]), .B(curr_red[6]), 
         .C(pwm_count[6]), .Z(n10)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i10_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i4922_4_lut (.A(off_max_cnt[24]), .B(steady_count[21]), .C(steady_count[22]), 
         .D(n7567), .Z(n7403)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+(C+!(D))))) */ ;
    defparam i4922_4_lut.INIT = "0x7eff";
    LUT4 pwm_count_17__I_0_59_i25_2_lut (.A(pwm_count[12]), .B(curr_blu[12]), 
         .Z(n25)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i25_2_lut.INIT = "0x6666";
    FD1P3XZ curr_red_i3 (.D(curr_red_17__N_415[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[3])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i3.REGSET = "RESET";
    defparam curr_red_i3.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i2 (.D(curr_red_17__N_415[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[2])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i2.REGSET = "RESET";
    defparam curr_red_i2.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i1 (.D(curr_red_17__N_415[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[1])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(431[5],463[8])"*/
    defparam curr_red_i1.REGSET = "RESET";
    defparam curr_red_i1.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i31 (.D(blu_accum_31__N_383[31]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[31])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i31.REGSET = "RESET";
    defparam blu_accum_i31.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i30 (.D(blu_accum_31__N_383[30]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[30])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i30.REGSET = "RESET";
    defparam blu_accum_i30.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i29 (.D(blu_accum_31__N_383[29]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[29])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i29.REGSET = "RESET";
    defparam blu_accum_i29.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i28 (.D(blu_accum_31__N_383[28]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[28])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i28.REGSET = "RESET";
    defparam blu_accum_i28.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i27 (.D(blu_accum_31__N_383[27]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[27])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i27.REGSET = "RESET";
    defparam blu_accum_i27.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i26 (.D(blu_accum_31__N_383[26]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[26])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i26.REGSET = "RESET";
    defparam blu_accum_i26.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i25 (.D(blu_accum_31__N_383[25]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[25])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i25.REGSET = "RESET";
    defparam blu_accum_i25.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i24 (.D(blu_accum_31__N_383[24]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[24])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i24.REGSET = "RESET";
    defparam blu_accum_i24.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i23 (.D(blu_accum_31__N_383[23]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[23])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i23.REGSET = "RESET";
    defparam blu_accum_i23.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i22 (.D(blu_accum_31__N_383[22]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[22])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i22.REGSET = "RESET";
    defparam blu_accum_i22.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i21 (.D(blu_accum_31__N_383[21]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[21])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i21.REGSET = "RESET";
    defparam blu_accum_i21.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i20 (.D(blu_accum_31__N_383[20]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[20])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i20.REGSET = "RESET";
    defparam blu_accum_i20.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i19 (.D(blu_accum_31__N_383[19]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[19])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i19.REGSET = "RESET";
    defparam blu_accum_i19.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i18 (.D(blu_accum_31__N_383[18]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[18])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i18.REGSET = "RESET";
    defparam blu_accum_i18.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i17 (.D(blu_accum_31__N_383[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[17])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i17.REGSET = "RESET";
    defparam blu_accum_i17.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i16 (.D(blu_accum_31__N_383[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[16])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i16.REGSET = "RESET";
    defparam blu_accum_i16.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i15 (.D(blu_accum_31__N_383[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[15])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i15.REGSET = "RESET";
    defparam blu_accum_i15.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i14 (.D(blu_accum_31__N_383[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[14])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i14.REGSET = "RESET";
    defparam blu_accum_i14.SRMODE = "ASYNC";
    LUT4 i1758_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[26]), 
         .Z(curr_grn_17__N_433[12])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1758_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_58_i8_3_lut_3_lut (.A(curr_red[4]), .B(curr_red[8]), 
         .C(pwm_count[8]), .Z(n8)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i8_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 mux_63_i17_4_lut (.A(grn_accum[30]), .B(grn_peak[30]), .C(n202[2]), 
         .D(n202[0]), .Z(curr_grn_17__N_433[16])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam mux_63_i17_4_lut.INIT = "0xc0ca";
    LUT4 i5086_4_lut (.A(off_max_cnt[24]), .B(n8304), .C(steady_count[12]), 
         .D(n7273), .Z(n7567)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+(D)))) */ ;
    defparam i5086_4_lut.INIT = "0xffde";
    LUT4 i1760_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[28]), 
         .Z(curr_grn_17__N_433[14])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1760_2_lut_3_lut.INIT = "0x1010";
    LUT4 i5142_3_lut (.A(n4), .B(curr_red[13]), .C(n27), .Z(n7623)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam i5142_3_lut.INIT = "0xcaca";
    LUT4 i237_2_lut_3_lut (.A(blu_intensity_step[4]), .B(n202[2]), .C(n202[3]), 
         .Z(n1846)) /* synthesis lut_function=(!(A (B+(C))+!A !(B+(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i237_2_lut_3_lut.INIT = "0x5656";
    LUT4 i1548_4_lut (.A(n2220), .B(BlinkRate_s[2]), .C(n899), .D(n202[3]), 
         .Z(n212[0])) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1548_4_lut.INIT = "0xc888";
    LUT4 i430_2_lut (.A(n611), .B(n202[0]), .Z(n2220)) /* synthesis lut_function=(!(A+!(B))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i430_2_lut.INIT = "0x4444";
    LUT4 i1730_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[14]), 
         .Z(curr_red_17__N_415[0])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1730_2_lut_3_lut.INIT = "0x1010";
    LUT4 mux_63_i16_4_lut (.A(grn_accum[29]), .B(grn_peak[29]), .C(n202[2]), 
         .D(n202[0]), .Z(curr_grn_17__N_433[15])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam mux_63_i16_4_lut.INIT = "0xc0ca";
    LUT4 LessThan_61_i23_rep_57_2_lut (.A(off_max_cnt[27]), .B(steady_count[11]), 
         .Z(n8304)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i23_rep_57_2_lut.INIT = "0x6666";
    LUT4 i1592_2_lut (.A(n147[16]), .B(n1979), .Z(n2597)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1592_2_lut.INIT = "0x2222";
    LUT4 i1732_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[16]), 
         .Z(curr_blu_17__N_451[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1732_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_58_i4_4_lut (.A(curr_red[0]), .B(curr_red[1]), 
         .C(pwm_count[1]), .D(pwm_count[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i4_4_lut.INIT = "0x0c8e";
    LUT4 i205_2_lut_3_lut (.A(grn_intensity_step[3]), .B(n202[2]), .C(n202[3]), 
         .Z(n1782)) /* synthesis lut_function=(!(A (B+(C))+!A !(B+(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i205_2_lut_3_lut.INIT = "0x5656";
    LUT4 i1711_2_lut (.A(n147_adj_933[12]), .B(n1979), .Z(n2641)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1711_2_lut.INIT = "0x2222";
    LUT4 i204_2_lut_3_lut (.A(grn_intensity_step[4]), .B(n202[2]), .C(n202[3]), 
         .Z(n1781)) /* synthesis lut_function=(!(A (B+(C))+!A !(B+(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i204_2_lut_3_lut.INIT = "0x5656";
    LUT4 i1743_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[27]), 
         .Z(curr_blu_17__N_451[13])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1743_2_lut_3_lut.INIT = "0x1010";
    FA2 pwm_count_301_add_4_7 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[5]), 
        .D0(n4426), .CI0(n4426), .A1(GND_net), .B1(GND_net), .C1(pwm_count[6]), 
        .D1(n8829), .CI1(n8829), .CO0(n8829), .CO1(n4428), .S0(n77[5]), 
        .S1(n77[6]));   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301_add_4_7.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_7.INIT1 = "0xc33c";
    FD1P3XZ blu_accum_i13 (.D(blu_accum_31__N_383[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[13])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i13.REGSET = "RESET";
    defparam blu_accum_i13.SRMODE = "ASYNC";
    FA2 pwm_count_301_add_4_15 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[13]), 
        .D0(n4434), .CI0(n4434), .A1(GND_net), .B1(GND_net), .C1(pwm_count[14]), 
        .D1(n8841), .CI1(n8841), .CO0(n8841), .CO1(n4436), .S0(n77[13]), 
        .S1(n77[14]));   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301_add_4_15.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_15.INIT1 = "0xc33c";
    FD1P3XZ blu_accum_i12 (.D(blu_accum_31__N_383[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[12])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i12.REGSET = "RESET";
    defparam blu_accum_i12.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i11 (.D(blu_accum_31__N_383[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[11])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i11.REGSET = "RESET";
    defparam blu_accum_i11.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i10 (.D(blu_accum_31__N_383[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[10])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i10.REGSET = "RESET";
    defparam blu_accum_i10.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i9 (.D(blu_accum_31__N_383[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[9])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i9.REGSET = "RESET";
    defparam blu_accum_i9.SRMODE = "ASYNC";
    FA2 add_2611_11 (.A0(GND_net), .B0(grn_accum[12]), .C0(n626), .D0(n4507), 
        .CI0(n4507), .A1(GND_net), .B1(grn_accum[13]), .C1(n626), .D1(n8790), 
        .CI1(n8790), .CO0(n8790), .CO1(n4509), .S0(n172_adj_935[13]), 
        .S1(n172_adj_935[14]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_11.INIT0 = "0xc33c";
    defparam add_2611_11.INIT1 = "0xc33c";
    FD1P3XZ blu_accum_i8 (.D(blu_accum_31__N_383[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[8])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i8.REGSET = "RESET";
    defparam blu_accum_i8.SRMODE = "ASYNC";
    LUT4 i1738_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[22]), 
         .Z(curr_blu_17__N_451[8])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1738_2_lut_3_lut.INIT = "0x1010";
    FA2 add_129_add_5_25 (.A0(GND_net), .B0(ramp_count[23]), .C0(GND_net), 
        .D0(n4463), .CI0(n4463), .A1(GND_net), .B1(ramp_count[24]), 
        .C1(GND_net), .D1(n8955), .CI1(n8955), .CO0(n8955), .CO1(n4465), 
        .S0(n147[23]), .S1(n147[24]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_25.INIT0 = "0xc33c";
    defparam add_129_add_5_25.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i9 (.D(n2635), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[9])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i9.REGSET = "RESET";
    defparam steady_count__i9.SRMODE = "ASYNC";
    LUT4 i4_4_lut (.A(n7_adj_793), .B(n6006), .C(BlinkRate_s[2]), .D(n202[0]), 
         .Z(n1977)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i4_4_lut.INIT = "0xffef";
    FD1P3XZ blu_accum_i7 (.D(blu_accum_31__N_383[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[7])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i7.REGSET = "RESET";
    defparam blu_accum_i7.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i6 (.D(blu_accum_31__N_383[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[6])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i6.REGSET = "RESET";
    defparam blu_accum_i6.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i5 (.D(blu_accum_31__N_383[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[5])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i5.REGSET = "RESET";
    defparam blu_accum_i5.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i8 (.D(n2633), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[8])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i8.REGSET = "RESET";
    defparam steady_count__i8.SRMODE = "ASYNC";
    FA2 add_2611_9 (.A0(GND_net), .B0(grn_accum[10]), .C0(n626), .D0(n4505), 
        .CI0(n4505), .A1(GND_net), .B1(grn_accum[11]), .C1(n626), .D1(n8787), 
        .CI1(n8787), .CO0(n8787), .CO1(n4507), .S0(n172_adj_935[11]), 
        .S1(n172_adj_935[12]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_9.INIT0 = "0xc33c";
    defparam add_2611_9.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i7 (.D(n2631), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[7])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i7.REGSET = "RESET";
    defparam steady_count__i7.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i6 (.D(n2629), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[6])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i6.REGSET = "RESET";
    defparam steady_count__i6.SRMODE = "ASYNC";
    LUT4 i2_2_lut (.A(n202[2]), .B(n52), .Z(n7_adj_793)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.INIT = "0xeeee";
    LUT4 i1591_2_lut (.A(n147[17]), .B(n1979), .Z(n2595)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1591_2_lut.INIT = "0x2222";
    FD1P3XZ blu_accum_i4 (.D(blu_accum_31__N_383[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[4])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam blu_accum_i4.REGSET = "RESET";
    defparam blu_accum_i4.SRMODE = "ASYNC";
    LUT4 i1754_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[22]), 
         .Z(curr_grn_17__N_433[8])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1754_2_lut_3_lut.INIT = "0x1010";
    LUT4 i288_4_lut (.A(n1034), .B(BlinkRate_s[2]), .C(n803), .D(n202[2]), 
         .Z(n1979)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C (D))+!B)) */ ;   /* synthesis lineinfo="@1(337[16],385[10])"*/
    defparam i288_4_lut.INIT = "0xf3bb";
    FD1P3XZ steady_count__i5 (.D(n2627), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[5])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i5.REGSET = "RESET";
    defparam steady_count__i5.SRMODE = "ASYNC";
    LUT4 i4802_3_lut_4_lut (.A(off_max_cnt[24]), .B(off_max_cnt[27]), .C(steady_count[4]), 
         .D(steady_count[8]), .Z(n7283)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A !(B ((D)+!C)+!B (C+(D))))) */ ;
    defparam i4802_3_lut_4_lut.INIT = "0x7dbe";
    FA2 add_2612_7 (.A0(GND_net), .B0(blu_accum[9]), .C0(n626), .D0(n4561), 
        .CI0(n4561), .A1(GND_net), .B1(blu_accum[10]), .C1(n626), .D1(n8739), 
        .CI1(n8739), .CO0(n8739), .CO1(n4563), .S0(n172_adj_934[10]), 
        .S1(n172_adj_934[11]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_7.INIT0 = "0xc33c";
    defparam add_2612_7.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i4 (.D(n2625), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[4])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i4.REGSET = "RESET";
    defparam steady_count__i4.SRMODE = "ASYNC";
    LUT4 i279_3_lut (.A(n899), .B(n611), .C(n202[0]), .Z(n1034)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i279_3_lut.INIT = "0xcaca";
    FD1P3XZ steady_count__i3 (.D(n2623), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[3])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i3.REGSET = "RESET";
    defparam steady_count__i3.SRMODE = "ASYNC";
    LUT4 i1710_2_lut (.A(n147_adj_933[11]), .B(n1979), .Z(n2639)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1710_2_lut.INIT = "0x2222";
    LUT4 i1576_2_lut (.A(n77[8]), .B(n3577), .Z(n97[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1576_2_lut.INIT = "0x2222";
    LUT4 i4_1_lut (.A(rst_c), .Z(n2)) /* synthesis lut_function=(!(A)) */ ;   /* synthesis lineinfo="@1(151[42],151[46])"*/
    defparam i4_1_lut.INIT = "0x5555";
    FD1P3XZ grn_peak_i2 (.D(RGB_color_s[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_peak[30])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(215[5],223[8])"*/
    defparam grn_peak_i2.REGSET = "RESET";
    defparam grn_peak_i2.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i31 (.D(grn_accum_31__N_351[31]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[31])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i31.REGSET = "RESET";
    defparam grn_accum_i31.SRMODE = "ASYNC";
    FA2 pwm_count_301_add_4_5 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[3]), 
        .D0(n4424), .CI0(n4424), .A1(GND_net), .B1(GND_net), .C1(pwm_count[4]), 
        .D1(n8826), .CI1(n8826), .CO0(n8826), .CO1(n4426), .S0(n77[3]), 
        .S1(n77[4]));   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301_add_4_5.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_5.INIT1 = "0xc33c";
    LUT4 i1728_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[14]), 
         .Z(curr_blu_17__N_451[0])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1728_2_lut_3_lut.INIT = "0x1010";
    FA2 pwm_count_301_add_4_3 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[1]), 
        .D0(n4422), .CI0(n4422), .A1(GND_net), .B1(GND_net), .C1(pwm_count[2]), 
        .D1(n8823), .CI1(n8823), .CO0(n8823), .CO1(n4424), .S0(n77[1]), 
        .S1(n77[2]));   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301_add_4_3.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_3.INIT1 = "0xc33c";
    FD1P3XZ pwm_count_301__i17 (.D(n97[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i17.REGSET = "RESET";
    defparam pwm_count_301__i17.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i30 (.D(grn_accum_31__N_351[30]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[30])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i30.REGSET = "RESET";
    defparam grn_accum_i30.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i4 (.D(n97[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i4.REGSET = "RESET";
    defparam pwm_count_301__i4.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i29 (.D(grn_accum_31__N_351[29]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[29])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i29.REGSET = "RESET";
    defparam grn_accum_i29.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i16 (.D(n97[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i16.REGSET = "RESET";
    defparam pwm_count_301__i16.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i28 (.D(grn_accum_31__N_351[28]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[28])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i28.REGSET = "RESET";
    defparam grn_accum_i28.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i27 (.D(grn_accum_31__N_351[27]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[27])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i27.REGSET = "RESET";
    defparam grn_accum_i27.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i15 (.D(n97[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i15.REGSET = "RESET";
    defparam pwm_count_301__i15.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i26 (.D(grn_accum_31__N_351[26]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[26])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i26.REGSET = "RESET";
    defparam grn_accum_i26.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i25 (.D(grn_accum_31__N_351[25]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[25])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i25.REGSET = "RESET";
    defparam grn_accum_i25.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i24 (.D(grn_accum_31__N_351[24]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[24])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i24.REGSET = "RESET";
    defparam grn_accum_i24.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i23 (.D(grn_accum_31__N_351[23]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[23])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i23.REGSET = "RESET";
    defparam grn_accum_i23.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i22 (.D(grn_accum_31__N_351[22]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[22])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i22.REGSET = "RESET";
    defparam grn_accum_i22.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i21 (.D(grn_accum_31__N_351[21]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[21])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i21.REGSET = "RESET";
    defparam grn_accum_i21.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i3 (.D(n97[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i3.REGSET = "RESET";
    defparam pwm_count_301__i3.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i20 (.D(grn_accum_31__N_351[20]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[20])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i20.REGSET = "RESET";
    defparam grn_accum_i20.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i14 (.D(n97[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i14.REGSET = "RESET";
    defparam pwm_count_301__i14.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i19 (.D(grn_accum_31__N_351[19]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[19])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i19.REGSET = "RESET";
    defparam grn_accum_i19.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i18 (.D(grn_accum_31__N_351[18]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[18])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i18.REGSET = "RESET";
    defparam grn_accum_i18.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i17 (.D(grn_accum_31__N_351[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[17])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i17.REGSET = "RESET";
    defparam grn_accum_i17.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i16 (.D(grn_accum_31__N_351[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[16])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i16.REGSET = "RESET";
    defparam grn_accum_i16.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i15 (.D(grn_accum_31__N_351[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[15])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i15.REGSET = "RESET";
    defparam grn_accum_i15.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i14 (.D(grn_accum_31__N_351[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[14])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i14.REGSET = "RESET";
    defparam grn_accum_i14.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i13 (.D(n97[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i13.REGSET = "RESET";
    defparam pwm_count_301__i13.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i13 (.D(grn_accum_31__N_351[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[13])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i13.REGSET = "RESET";
    defparam grn_accum_i13.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i12 (.D(grn_accum_31__N_351[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[12])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i12.REGSET = "RESET";
    defparam grn_accum_i12.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i11 (.D(grn_accum_31__N_351[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[11])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i11.REGSET = "RESET";
    defparam grn_accum_i11.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i10 (.D(grn_accum_31__N_351[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[10])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i10.REGSET = "RESET";
    defparam grn_accum_i10.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i9 (.D(grn_accum_31__N_351[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[9])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i9.REGSET = "RESET";
    defparam grn_accum_i9.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i8 (.D(grn_accum_31__N_351[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[8])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i8.REGSET = "RESET";
    defparam grn_accum_i8.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i7 (.D(grn_accum_31__N_351[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[7])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i7.REGSET = "RESET";
    defparam grn_accum_i7.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i12 (.D(n97[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i12.REGSET = "RESET";
    defparam pwm_count_301__i12.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i6 (.D(grn_accum_31__N_351[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[6])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i6.REGSET = "RESET";
    defparam grn_accum_i6.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i5 (.D(grn_accum_31__N_351[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[5])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i5.REGSET = "RESET";
    defparam grn_accum_i5.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i4 (.D(grn_accum_31__N_351[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[4])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i4.REGSET = "RESET";
    defparam grn_accum_i4.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i3 (.D(grn_accum_31__N_351[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[3])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam grn_accum_i3.REGSET = "RESET";
    defparam grn_accum_i3.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i11 (.D(n97[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i11.REGSET = "RESET";
    defparam pwm_count_301__i11.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i31 (.D(red_accum_31__N_319[31]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[31])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i31.REGSET = "RESET";
    defparam red_accum_i31.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i30 (.D(red_accum_31__N_319[30]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[30])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i30.REGSET = "RESET";
    defparam red_accum_i30.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i29 (.D(red_accum_31__N_319[29]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[29])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i29.REGSET = "RESET";
    defparam red_accum_i29.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i28 (.D(red_accum_31__N_319[28]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[28])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i28.REGSET = "RESET";
    defparam red_accum_i28.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i2 (.D(n97[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i2.REGSET = "RESET";
    defparam pwm_count_301__i2.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i27 (.D(red_accum_31__N_319[27]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[27])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i27.REGSET = "RESET";
    defparam red_accum_i27.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i10 (.D(n97[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i10.REGSET = "RESET";
    defparam pwm_count_301__i10.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i26 (.D(red_accum_31__N_319[26]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[26])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i26.REGSET = "RESET";
    defparam red_accum_i26.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i25 (.D(red_accum_31__N_319[25]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[25])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i25.REGSET = "RESET";
    defparam red_accum_i25.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i24 (.D(red_accum_31__N_319[24]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[24])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i24.REGSET = "RESET";
    defparam red_accum_i24.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i9 (.D(n97[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i9.REGSET = "RESET";
    defparam pwm_count_301__i9.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i23 (.D(red_accum_31__N_319[23]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[23])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i23.REGSET = "RESET";
    defparam red_accum_i23.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i22 (.D(red_accum_31__N_319[22]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[22])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i22.REGSET = "RESET";
    defparam red_accum_i22.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i21 (.D(red_accum_31__N_319[21]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[21])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i21.REGSET = "RESET";
    defparam red_accum_i21.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i20 (.D(red_accum_31__N_319[20]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[20])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i20.REGSET = "RESET";
    defparam red_accum_i20.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i19 (.D(red_accum_31__N_319[19]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[19])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i19.REGSET = "RESET";
    defparam red_accum_i19.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i18 (.D(red_accum_31__N_319[18]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[18])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i18.REGSET = "RESET";
    defparam red_accum_i18.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i17 (.D(red_accum_31__N_319[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[17])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i17.REGSET = "RESET";
    defparam red_accum_i17.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i16 (.D(red_accum_31__N_319[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[16])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i16.REGSET = "RESET";
    defparam red_accum_i16.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i8 (.D(n97[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i8.REGSET = "RESET";
    defparam pwm_count_301__i8.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i15 (.D(red_accum_31__N_319[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[15])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i15.REGSET = "RESET";
    defparam red_accum_i15.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i14 (.D(red_accum_31__N_319[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[14])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i14.REGSET = "RESET";
    defparam red_accum_i14.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i13 (.D(red_accum_31__N_319[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[13])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i13.REGSET = "RESET";
    defparam red_accum_i13.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i12 (.D(red_accum_31__N_319[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[12])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i12.REGSET = "RESET";
    defparam red_accum_i12.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i11 (.D(red_accum_31__N_319[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[11])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i11.REGSET = "RESET";
    defparam red_accum_i11.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i10 (.D(red_accum_31__N_319[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[10])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i10.REGSET = "RESET";
    defparam red_accum_i10.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i9 (.D(red_accum_31__N_319[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[9])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i9.REGSET = "RESET";
    defparam red_accum_i9.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i8 (.D(red_accum_31__N_319[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[8])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i8.REGSET = "RESET";
    defparam red_accum_i8.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i7 (.D(red_accum_31__N_319[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[7])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i7.REGSET = "RESET";
    defparam red_accum_i7.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i6 (.D(red_accum_31__N_319[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[6])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i6.REGSET = "RESET";
    defparam red_accum_i6.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i1 (.D(n97[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i1.REGSET = "RESET";
    defparam pwm_count_301__i1.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i5 (.D(red_accum_31__N_319[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[5])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i5.REGSET = "RESET";
    defparam red_accum_i5.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i4 (.D(red_accum_31__N_319[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[4])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(391[5],426[8])"*/
    defparam red_accum_i4.REGSET = "RESET";
    defparam red_accum_i4.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i7 (.D(n97[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i7.REGSET = "RESET";
    defparam pwm_count_301__i7.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i6 (.D(n97[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i6.REGSET = "RESET";
    defparam pwm_count_301__i6.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i5 (.D(n97[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i5.REGSET = "RESET";
    defparam pwm_count_301__i5.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i0 (.D(n97[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301__i0.REGSET = "RESET";
    defparam pwm_count_301__i0.SRMODE = "ASYNC";
    FD1P3XZ blink_state_FSM_i1 (.D(n212[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(n202[1]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam blink_state_FSM_i1.REGSET = "RESET";
    defparam blink_state_FSM_i1.SRMODE = "ASYNC";
    FD1P3XZ blink_state_FSM_i2 (.D(n5962), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(n202[2]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam blink_state_FSM_i2.REGSET = "RESET";
    defparam blink_state_FSM_i2.SRMODE = "ASYNC";
    FD1P3XZ blink_state_FSM_i3 (.D(n212[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(n202[3]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam blink_state_FSM_i3.REGSET = "RESET";
    defparam blink_state_FSM_i3.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i27 (.D(n2671), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[27])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i27.REGSET = "RESET";
    defparam steady_count__i27.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i26 (.D(n2669), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[26])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i26.REGSET = "RESET";
    defparam steady_count__i26.SRMODE = "ASYNC";
    LUT4 i4792_4_lut (.A(off_max_cnt[24]), .B(n8291), .C(steady_count[10]), 
         .D(n7283), .Z(n7273)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(B (C)+!B (C+!(D))))) */ ;
    defparam i4792_4_lut.INIT = "0x5a7b";
    FA2 add_129_add_5_23 (.A0(GND_net), .B0(ramp_count[21]), .C0(GND_net), 
        .D0(n4461), .CI0(n4461), .A1(GND_net), .B1(ramp_count[22]), 
        .C1(GND_net), .D1(n8952), .CI1(n8952), .CO0(n8952), .CO1(n4463), 
        .S0(n147[21]), .S1(n147[22]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_23.INIT0 = "0xc33c";
    defparam add_129_add_5_23.INIT1 = "0xc33c";
    LUT4 i1552_4_lut_3_lut (.A(n202[3]), .B(n202[1]), .C(n202[2]), .Z(n3347)) /* synthesis lut_function=(A+!((C)+!B)) */ ;
    defparam i1552_4_lut_3_lut.INIT = "0xaeae";
    LUT4 i77_2_lut (.A(n202[2]), .B(n202[3]), .Z(n626)) /* synthesis lut_function=(A+(B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i77_2_lut.INIT = "0xeeee";
    LUT4 mux_65_i17_4_lut (.A(red_accum[30]), .B(red_peak[30]), .C(n202[2]), 
         .D(n202[0]), .Z(curr_red_17__N_415[16])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam mux_65_i17_4_lut.INIT = "0xc0ca";
    FA2 add_2612_5 (.A0(GND_net), .B0(blu_accum[7]), .C0(n626), .D0(n4559), 
        .CI0(n4559), .A1(GND_net), .B1(blu_accum[8]), .C1(n626), .D1(n8736), 
        .CI1(n8736), .CO0(n8736), .CO1(n4561), .S0(n172_adj_934[8]), 
        .S1(n172_adj_934[9]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_5.INIT0 = "0xc33c";
    defparam add_2612_5.INIT1 = "0xc33c";
    FA2 add_2612_3 (.A0(GND_net), .B0(blu_accum[5]), .C0(n626), .D0(n4557), 
        .CI0(n4557), .A1(GND_net), .B1(blu_accum[6]), .C1(n626), .D1(n8733), 
        .CI1(n8733), .CO0(n8733), .CO1(n4559), .S0(n172_adj_934[6]), 
        .S1(n172_adj_934[7]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_3.INIT0 = "0xc33c";
    defparam add_2612_3.INIT1 = "0xc33c";
    FA2 add_2611_7 (.A0(GND_net), .B0(grn_accum[8]), .C0(n626), .D0(n4503), 
        .CI0(n4503), .A1(GND_net), .B1(grn_accum[9]), .C1(n626), .D1(n8784), 
        .CI1(n8784), .CO0(n8784), .CO1(n4505), .S0(n172_adj_935[9]), 
        .S1(n172_adj_935[10]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_7.INIT0 = "0xc33c";
    defparam add_2611_7.INIT1 = "0xc33c";
    FA2 add_2611_5 (.A0(GND_net), .B0(grn_accum[6]), .C0(n626), .D0(n4501), 
        .CI0(n4501), .A1(GND_net), .B1(grn_accum[7]), .C1(n626), .D1(n8781), 
        .CI1(n8781), .CO0(n8781), .CO1(n4503), .S0(n172_adj_935[7]), 
        .S1(n172_adj_935[8]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_5.INIT0 = "0xc33c";
    defparam add_2611_5.INIT1 = "0xc33c";
    FA2 add_129_add_5_21 (.A0(GND_net), .B0(ramp_count[19]), .C0(GND_net), 
        .D0(n4459), .CI0(n4459), .A1(GND_net), .B1(ramp_count[20]), 
        .C1(GND_net), .D1(n8949), .CI1(n8949), .CO0(n8949), .CO1(n4461), 
        .S0(n147[19]), .S1(n147[20]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_21.INIT0 = "0xc33c";
    defparam add_129_add_5_21.INIT1 = "0xc33c";
    FA2 add_129_add_5_19 (.A0(GND_net), .B0(ramp_count[17]), .C0(GND_net), 
        .D0(n4457), .CI0(n4457), .A1(GND_net), .B1(ramp_count[18]), 
        .C1(GND_net), .D1(n8946), .CI1(n8946), .CO0(n8946), .CO1(n4459), 
        .S0(n147[17]), .S1(n147[18]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_19.INIT0 = "0xc33c";
    defparam add_129_add_5_19.INIT1 = "0xc33c";
    FA2 add_129_add_5_17 (.A0(GND_net), .B0(ramp_count[15]), .C0(GND_net), 
        .D0(n4455), .CI0(n4455), .A1(GND_net), .B1(ramp_count[16]), 
        .C1(GND_net), .D1(n8943), .CI1(n8943), .CO0(n8943), .CO1(n4457), 
        .S0(n147[15]), .S1(n147[16]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_17.INIT0 = "0xc33c";
    defparam add_129_add_5_17.INIT1 = "0xc33c";
    FA2 add_129_add_5_15 (.A0(GND_net), .B0(ramp_count[13]), .C0(GND_net), 
        .D0(n4453), .CI0(n4453), .A1(GND_net), .B1(ramp_count[14]), 
        .C1(GND_net), .D1(n8940), .CI1(n8940), .CO0(n8940), .CO1(n4455), 
        .S0(n147[13]), .S1(n147[14]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_15.INIT0 = "0xc33c";
    defparam add_129_add_5_15.INIT1 = "0xc33c";
    FA2 add_2611_3 (.A0(GND_net), .B0(grn_accum[4]), .C0(n1781), .D0(n4499), 
        .CI0(n4499), .A1(GND_net), .B1(grn_accum[5]), .C1(n626), .D1(n8778), 
        .CI1(n8778), .CO0(n8778), .CO1(n4501), .S0(n172_adj_935[5]), 
        .S1(n172_adj_935[6]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_3.INIT0 = "0xc33c";
    defparam add_2611_3.INIT1 = "0xc33c";
    LUT4 i1753_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[21]), 
         .Z(curr_grn_17__N_433[7])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1753_2_lut_3_lut.INIT = "0x1010";
    FA2 add_2611_1 (.A0(GND_net), .B0(n626), .C0(GND_net), .A1(GND_net), 
        .B1(grn_accum[3]), .C1(n1782), .D1(n8775), .CI1(n8775), .CO0(n8775), 
        .CO1(n4499), .S1(n172_adj_935[4]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_1.INIT0 = "0xc33c";
    defparam add_2611_1.INIT1 = "0xc33c";
    FA2 pwm_count_301_add_4_13 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[11]), 
        .D0(n4432), .CI0(n4432), .A1(GND_net), .B1(GND_net), .C1(pwm_count[12]), 
        .D1(n8838), .CI1(n8838), .CO0(n8838), .CO1(n4434), .S0(n77[11]), 
        .S1(n77[12]));   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301_add_4_13.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_13.INIT1 = "0xc33c";
    LUT4 i1590_2_lut (.A(n147[18]), .B(n1979), .Z(n2593)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1590_2_lut.INIT = "0x2222";
    FA2 pwm_count_301_add_4_11 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[9]), 
        .D0(n4430), .CI0(n4430), .A1(GND_net), .B1(GND_net), .C1(pwm_count[10]), 
        .D1(n8835), .CI1(n8835), .CO0(n8835), .CO1(n4432), .S0(n77[9]), 
        .S1(n77[10]));   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301_add_4_11.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_11.INIT1 = "0xc33c";
    FA2 add_2612_1 (.A0(GND_net), .B0(n626), .C0(GND_net), .A1(GND_net), 
        .B1(blu_accum[4]), .C1(n1846), .D1(n8730), .CI1(n8730), .CO0(n8730), 
        .CO1(n4557), .S1(n172_adj_934[5]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_1.INIT0 = "0xc33c";
    defparam add_2612_1.INIT1 = "0xc33c";
    LUT4 i5058_4_lut (.A(n23_adj_804), .B(n21_adj_805), .C(n19_adj_806), 
         .D(n7279), .Z(n7539)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5058_4_lut.INIT = "0xfffe";
    FA2 add_128_add_5_29 (.A0(GND_net), .B0(steady_count[27]), .C0(GND_net), 
        .D0(n4496), .CI0(n4496), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n8916), .CI1(n8916), .CO0(n8916), .S0(n147_adj_933[27]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_29.INIT0 = "0xc33c";
    defparam add_128_add_5_29.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i25 (.D(n2667), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[25])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i25.REGSET = "RESET";
    defparam steady_count__i25.SRMODE = "ASYNC";
    FA2 add_2613_29 (.A0(GND_net), .B0(red_accum[31]), .C0(n626), .D0(n4554), 
        .CI0(n4554), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(n8892), 
        .CI1(n8892), .CO0(n8892), .S0(n172[32]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_29.INIT0 = "0xc33c";
    defparam add_2613_29.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i24 (.D(n2665), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[24])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i24.REGSET = "RESET";
    defparam steady_count__i24.SRMODE = "ASYNC";
    FA2 add_128_add_5_27 (.A0(GND_net), .B0(steady_count[25]), .C0(GND_net), 
        .D0(n4494), .CI0(n4494), .A1(GND_net), .B1(steady_count[26]), 
        .C1(GND_net), .D1(n8913), .CI1(n8913), .CO0(n8913), .CO1(n4496), 
        .S0(n147_adj_933[25]), .S1(n147_adj_933[26]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_27.INIT0 = "0xc33c";
    defparam add_128_add_5_27.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i23 (.D(n2663), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[23])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i23.REGSET = "RESET";
    defparam steady_count__i23.SRMODE = "ASYNC";
    FA2 add_2613_27 (.A0(GND_net), .B0(red_accum[29]), .C0(n626), .D0(n4552), 
        .CI0(n4552), .A1(GND_net), .B1(red_accum[30]), .C1(n626), .D1(n8889), 
        .CI1(n8889), .CO0(n8889), .CO1(n4554), .S0(n172[30]), .S1(n172[31]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_27.INIT0 = "0xc33c";
    defparam add_2613_27.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i22 (.D(n2661), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[22])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i22.REGSET = "RESET";
    defparam steady_count__i22.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i21 (.D(n2659), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[21])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i21.REGSET = "RESET";
    defparam steady_count__i21.SRMODE = "ASYNC";
    FA2 add_2613_25 (.A0(GND_net), .B0(red_accum[27]), .C0(n626), .D0(n4550), 
        .CI0(n4550), .A1(GND_net), .B1(red_accum[28]), .C1(n626), .D1(n8886), 
        .CI1(n8886), .CO0(n8886), .CO1(n4552), .S0(n172[28]), .S1(n172[29]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_25.INIT0 = "0xc33c";
    defparam add_2613_25.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i2 (.D(n2621), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[2])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i2.REGSET = "RESET";
    defparam steady_count__i2.SRMODE = "ASYNC";
    LUT4 i1_2_lut_3_lut (.A(ramp_count[26]), .B(ramp_count[27]), .C(n52), 
         .Z(n899)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.INIT = "0xfefe";
    FD1P3XZ BlinkRate_s_i1 (.D(BlinkRate_s_3__N_9_c_0), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(BlinkRate_s[2])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(158[5],173[10])"*/
    defparam BlinkRate_s_i1.REGSET = "SET";
    defparam BlinkRate_s_i1.SRMODE = "ASYNC";
    FA2 add_128_add_5_25 (.A0(GND_net), .B0(steady_count[23]), .C0(GND_net), 
        .D0(n4492), .CI0(n4492), .A1(GND_net), .B1(steady_count[24]), 
        .C1(GND_net), .D1(n8910), .CI1(n8910), .CO0(n8910), .CO1(n4494), 
        .S0(n147_adj_933[23]), .S1(n147_adj_933[24]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_25.INIT0 = "0xc33c";
    defparam add_128_add_5_25.INIT1 = "0xc33c";
    LUT4 i1752_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[20]), 
         .Z(curr_grn_17__N_433[6])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1752_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1751_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[19]), 
         .Z(curr_grn_17__N_433[5])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1751_2_lut_3_lut.INIT = "0x1010";
    LUT4 i45_2_lut_3_lut_4_lut (.A(ramp_count[26]), .B(ramp_count[27]), 
         .C(n52), .D(n202[1]), .Z(n224)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i45_2_lut_3_lut_4_lut.INIT = "0xfe00";
    LUT4 i1750_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[18]), 
         .Z(curr_grn_17__N_433[4])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1750_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1749_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[17]), 
         .Z(curr_grn_17__N_433[3])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1749_2_lut_3_lut.INIT = "0x1010";
    LUT4 i4860_2_lut_4_lut (.A(pwm_count[6]), .B(curr_blu[6]), .C(pwm_count[5]), 
         .D(curr_blu[5]), .Z(n7341)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;
    defparam i4860_2_lut_4_lut.INIT = "0x6ff6";
    LUT4 i1748_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[16]), 
         .Z(curr_grn_17__N_433[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1748_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1747_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[15]), 
         .Z(curr_grn_17__N_433[1])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1747_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_59_i10_3_lut_3_lut (.A(curr_blu[5]), .B(curr_blu[6]), 
         .C(pwm_count[6]), .Z(n10_adj_809)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i10_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i1777_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[31]), 
         .Z(curr_red_17__N_415[17])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1777_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_59_i8_3_lut_3_lut (.A(curr_blu[4]), .B(curr_blu[8]), 
         .C(pwm_count[8]), .Z(n8_adj_810)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i8_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i1654_2_lut (.A(n172[16]), .B(n3347), .Z(red_accum_31__N_319[15])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1654_2_lut.INIT = "0x8888";
    LUT4 i1776_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[29]), 
         .Z(curr_red_17__N_415[15])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1776_2_lut_3_lut.INIT = "0x1010";
    FD1P3XZ steady_count__i1 (.D(n2619), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[1])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i1.REGSET = "RESET";
    defparam steady_count__i1.SRMODE = "ASYNC";
    FA2 add_2613_23 (.A0(GND_net), .B0(red_accum[25]), .C0(n626), .D0(n4548), 
        .CI0(n4548), .A1(GND_net), .B1(red_accum[26]), .C1(n626), .D1(n8883), 
        .CI1(n8883), .CO0(n8883), .CO1(n4550), .S0(n172[26]), .S1(n172[27]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_23.INIT0 = "0xc33c";
    defparam add_2613_23.INIT1 = "0xc33c";
    LUT4 i1775_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[28]), 
         .Z(curr_red_17__N_415[14])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1775_2_lut_3_lut.INIT = "0x1010";
    LUT4 i4856_2_lut_4_lut (.A(pwm_count[8]), .B(curr_blu[8]), .C(pwm_count[4]), 
         .D(curr_blu[4]), .Z(n7337)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;
    defparam i4856_2_lut_4_lut.INIT = "0x6ff6";
    LUT4 i1774_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[27]), 
         .Z(curr_red_17__N_415[13])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1774_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1709_2_lut (.A(n147_adj_933[10]), .B(n1979), .Z(n2637)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1709_2_lut.INIT = "0x2222";
    LUT4 i1773_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[26]), 
         .Z(curr_red_17__N_415[12])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1773_2_lut_3_lut.INIT = "0x1010";
    LUT4 i270_2_lut_3_lut (.A(red_intensity_step[4]), .B(n202[2]), .C(n202[3]), 
         .Z(n1911)) /* synthesis lut_function=(!(A (B+(C))+!A !(B+(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i270_2_lut_3_lut.INIT = "0x5656";
    FD1P3XZ ramp_count__i6 (.D(n2617), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[6])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i6.REGSET = "RESET";
    defparam ramp_count__i6.SRMODE = "ASYNC";
    FA2 add_129_add_5_13 (.A0(GND_net), .B0(ramp_count[11]), .C0(GND_net), 
        .D0(n4451), .CI0(n4451), .A1(GND_net), .B1(ramp_count[12]), 
        .C1(GND_net), .D1(n8937), .CI1(n8937), .CO0(n8937), .CO1(n4453), 
        .S0(n147[11]), .S1(n147[12]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_13.INIT0 = "0xc33c";
    defparam add_129_add_5_13.INIT1 = "0xc33c";
    FD1P3XZ ramp_count__i7 (.D(n2615), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[7])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i7.REGSET = "RESET";
    defparam ramp_count__i7.SRMODE = "ASYNC";
    FA2 add_128_add_5_23 (.A0(GND_net), .B0(steady_count[21]), .C0(GND_net), 
        .D0(n4490), .CI0(n4490), .A1(GND_net), .B1(steady_count[22]), 
        .C1(GND_net), .D1(n8907), .CI1(n8907), .CO0(n8907), .CO1(n4492), 
        .S0(n147_adj_933[21]), .S1(n147_adj_933[22]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_23.INIT0 = "0xc33c";
    defparam add_128_add_5_23.INIT1 = "0xc33c";
    FD1P3XZ ramp_count__i8 (.D(n2613), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[8])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i8.REGSET = "RESET";
    defparam ramp_count__i8.SRMODE = "ASYNC";
    FA2 add_2613_21 (.A0(GND_net), .B0(red_accum[23]), .C0(n626), .D0(n4546), 
        .CI0(n4546), .A1(GND_net), .B1(red_accum[24]), .C1(n626), .D1(n8880), 
        .CI1(n8880), .CO0(n8880), .CO1(n4548), .S0(n172[24]), .S1(n172[25]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_21.INIT0 = "0xc33c";
    defparam add_2613_21.INIT1 = "0xc33c";
    FD1P3XZ ramp_count__i9 (.D(n2611), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[9])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i9.REGSET = "RESET";
    defparam ramp_count__i9.SRMODE = "ASYNC";
    FD1P3XZ RGB_color_s_i2 (.D(color_sel_c_1), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(RGB_color_s[1])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(158[5],173[10])"*/
    defparam RGB_color_s_i2.REGSET = "RESET";
    defparam RGB_color_s_i2.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i10 (.D(n2609), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[10])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i10.REGSET = "RESET";
    defparam ramp_count__i10.SRMODE = "ASYNC";
    FA2 add_2613_19 (.A0(GND_net), .B0(red_accum[21]), .C0(n626), .D0(n4544), 
        .CI0(n4544), .A1(GND_net), .B1(red_accum[22]), .C1(n626), .D1(n8877), 
        .CI1(n8877), .CO0(n8877), .CO1(n4546), .S0(n172[22]), .S1(n172[23]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_19.INIT0 = "0xc33c";
    defparam add_2613_19.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i20 (.D(n2657), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[20])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i20.REGSET = "RESET";
    defparam steady_count__i20.SRMODE = "ASYNC";
    FA2 add_2613_17 (.A0(GND_net), .B0(red_accum[19]), .C0(n626), .D0(n4542), 
        .CI0(n4542), .A1(GND_net), .B1(red_accum[20]), .C1(n626), .D1(n8874), 
        .CI1(n8874), .CO0(n8874), .CO1(n4544), .S0(n172[20]), .S1(n172[21]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_17.INIT0 = "0xc33c";
    defparam add_2613_17.INIT1 = "0xc33c";
    FD1P3XZ ramp_count__i11 (.D(n2607), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[11])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i11.REGSET = "RESET";
    defparam ramp_count__i11.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i12 (.D(n2605), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[12])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i12.REGSET = "RESET";
    defparam ramp_count__i12.SRMODE = "ASYNC";
    LUT4 i1589_2_lut (.A(n147[19]), .B(n1979), .Z(n2591)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1589_2_lut.INIT = "0x2222";
    FD1P3XZ ramp_count__i13 (.D(n2603), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[13])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i13.REGSET = "RESET";
    defparam ramp_count__i13.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i14 (.D(n2601), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[14])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i14.REGSET = "RESET";
    defparam ramp_count__i14.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i15 (.D(n2599), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[15])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i15.REGSET = "RESET";
    defparam ramp_count__i15.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i16 (.D(n2597), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[16])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i16.REGSET = "RESET";
    defparam ramp_count__i16.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i17 (.D(n2595), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[17])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i17.REGSET = "RESET";
    defparam ramp_count__i17.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i18 (.D(n2593), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[18])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i18.REGSET = "RESET";
    defparam ramp_count__i18.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i19 (.D(n2591), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[19])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i19.REGSET = "RESET";
    defparam ramp_count__i19.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i20 (.D(n2589), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[20])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i20.REGSET = "RESET";
    defparam ramp_count__i20.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i21 (.D(n2587), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[21])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i21.REGSET = "RESET";
    defparam ramp_count__i21.SRMODE = "ASYNC";
    LUT4 i1772_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[25]), 
         .Z(curr_red_17__N_415[11])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1772_2_lut_3_lut.INIT = "0x1010";
    FD1P3XZ ramp_count__i22 (.D(n2585), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[22])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i22.REGSET = "RESET";
    defparam ramp_count__i22.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i23 (.D(n2583), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[23])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i23.REGSET = "RESET";
    defparam ramp_count__i23.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i24 (.D(n2581), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[24])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i24.REGSET = "RESET";
    defparam ramp_count__i24.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i25 (.D(n2579), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[25])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i25.REGSET = "RESET";
    defparam ramp_count__i25.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i26 (.D(n2577), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[26])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i26.REGSET = "RESET";
    defparam ramp_count__i26.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i27 (.D(n2575), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[27])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i27.REGSET = "RESET";
    defparam ramp_count__i27.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i5 (.D(n2573), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[5])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i5.REGSET = "RESET";
    defparam ramp_count__i5.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i4 (.D(n2571), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[4])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i4.REGSET = "RESET";
    defparam ramp_count__i4.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i3 (.D(n2569), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[3])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i3.REGSET = "RESET";
    defparam ramp_count__i3.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i0 (.D(n2567), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[0])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i0.REGSET = "RESET";
    defparam steady_count__i0.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i2 (.D(n2565), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[2])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i2.REGSET = "RESET";
    defparam ramp_count__i2.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i1 (.D(n2563), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[1])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i1.REGSET = "RESET";
    defparam ramp_count__i1.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i0 (.D(n2561), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[0])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam ramp_count__i0.REGSET = "RESET";
    defparam ramp_count__i0.SRMODE = "ASYNC";
    LUT4 pwm_count_17__I_0_59_i6_3_lut_3_lut (.A(curr_blu[2]), .B(curr_blu[3]), 
         .C(pwm_count[3]), .Z(n6_adj_814)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i6_3_lut_3_lut.INIT = "0x8e8e";
    FD1P3XZ steady_count__i19 (.D(n2655), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[19])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i19.REGSET = "RESET";
    defparam steady_count__i19.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i18 (.D(n2653), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[18])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i18.REGSET = "RESET";
    defparam steady_count__i18.SRMODE = "ASYNC";
    LUT4 i1771_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[24]), 
         .Z(curr_red_17__N_415[10])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1771_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1770_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[23]), 
         .Z(curr_red_17__N_415[9])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1770_2_lut_3_lut.INIT = "0x1010";
    FA2 add_2613_15 (.A0(GND_net), .B0(red_accum[17]), .C0(n626), .D0(n4540), 
        .CI0(n4540), .A1(GND_net), .B1(red_accum[18]), .C1(n626), .D1(n8871), 
        .CI1(n8871), .CO0(n8871), .CO1(n4542), .S0(n172[18]), .S1(n172[19]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_15.INIT0 = "0xc33c";
    defparam add_2613_15.INIT1 = "0xc33c";
    FA2 add_2613_13 (.A0(GND_net), .B0(red_accum[15]), .C0(n626), .D0(n4538), 
        .CI0(n4538), .A1(GND_net), .B1(red_accum[16]), .C1(n626), .D1(n8868), 
        .CI1(n8868), .CO0(n8868), .CO1(n4540), .S0(n172[16]), .S1(n172[17]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_13.INIT0 = "0xc33c";
    defparam add_2613_13.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i17 (.D(n2651), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[17])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i17.REGSET = "RESET";
    defparam steady_count__i17.SRMODE = "ASYNC";
    LUT4 i1769_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[22]), 
         .Z(curr_red_17__N_415[8])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1769_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1768_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[21]), 
         .Z(curr_red_17__N_415[7])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1768_2_lut_3_lut.INIT = "0x1010";
    FD1P3XZ steady_count__i13 (.D(n2643), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[13])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i13.REGSET = "RESET";
    defparam steady_count__i13.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i16 (.D(n2649), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[16])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i16.REGSET = "RESET";
    defparam steady_count__i16.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i15 (.D(n2647), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[15])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i15.REGSET = "RESET";
    defparam steady_count__i15.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i14 (.D(n2645), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[14])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam steady_count__i14.REGSET = "RESET";
    defparam steady_count__i14.SRMODE = "ASYNC";
    LUT4 i1767_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[20]), 
         .Z(curr_red_17__N_415[6])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1767_2_lut_3_lut.INIT = "0x1010";
    LUT4 i4798_4_lut (.A(n17_adj_815), .B(n15), .C(n13_adj_816), .D(n7285), 
         .Z(n7279)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i4798_4_lut.INIT = "0xaaab";
    LUT4 i1766_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[19]), 
         .Z(curr_red_17__N_415[5])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1766_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1700_2_lut (.A(n172_adj_934[32]), .B(n3347), .Z(blu_accum_31__N_383[31])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1700_2_lut.INIT = "0x8888";
    FA2 add_2613_11 (.A0(GND_net), .B0(red_accum[13]), .C0(n626), .D0(n4536), 
        .CI0(n4536), .A1(GND_net), .B1(red_accum[14]), .C1(n626), .D1(n8865), 
        .CI1(n8865), .CO0(n8865), .CO1(n4538), .S0(n172[14]), .S1(n172[15]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_11.INIT0 = "0xc33c";
    defparam add_2613_11.INIT1 = "0xc33c";
    FA2 add_2613_9 (.A0(GND_net), .B0(red_accum[11]), .C0(n626), .D0(n4534), 
        .CI0(n4534), .A1(GND_net), .B1(red_accum[12]), .C1(n626), .D1(n8862), 
        .CI1(n8862), .CO0(n8862), .CO1(n4536), .S0(n172[12]), .S1(n172[13]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_9.INIT0 = "0xc33c";
    defparam add_2613_9.INIT1 = "0xc33c";
    FA2 add_2613_7 (.A0(GND_net), .B0(red_accum[9]), .C0(n626), .D0(n4532), 
        .CI0(n4532), .A1(GND_net), .B1(red_accum[10]), .C1(n626), .D1(n8859), 
        .CI1(n8859), .CO0(n8859), .CO1(n4534), .S0(n172[10]), .S1(n172[11]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_7.INIT0 = "0xc33c";
    defparam add_2613_7.INIT1 = "0xc33c";
    FA2 add_2613_5 (.A0(GND_net), .B0(red_accum[7]), .C0(n626), .D0(n4530), 
        .CI0(n4530), .A1(GND_net), .B1(red_accum[8]), .C1(n626), .D1(n8856), 
        .CI1(n8856), .CO0(n8856), .CO1(n4532), .S0(n172[8]), .S1(n172[9]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_5.INIT0 = "0xc33c";
    defparam add_2613_5.INIT1 = "0xc33c";
    LUT4 mux_169_i31_4_lut (.A(n172_adj_934[31]), .B(blu_peak[30]), .C(n3347), 
         .D(n626), .Z(blu_accum_31__N_383[30])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam mux_169_i31_4_lut.INIT = "0xaca0";
    LUT4 i1765_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[18]), 
         .Z(curr_red_17__N_415[4])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1765_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1699_2_lut (.A(n172_adj_934[30]), .B(n3347), .Z(blu_accum_31__N_383[29])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1699_2_lut.INIT = "0x8888";
    FA2 add_2613_3 (.A0(GND_net), .B0(red_accum[5]), .C0(n626), .D0(n4528), 
        .CI0(n4528), .A1(GND_net), .B1(red_accum[6]), .C1(n626), .D1(n8853), 
        .CI1(n8853), .CO0(n8853), .CO1(n4530), .S0(n172[6]), .S1(n172[7]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_3.INIT0 = "0xc33c";
    defparam add_2613_3.INIT1 = "0xc33c";
    FA2 add_2613_1 (.A0(GND_net), .B0(n626), .C0(GND_net), .A1(GND_net), 
        .B1(red_accum[4]), .C1(n1911), .D1(n8850), .CI1(n8850), .CO0(n8850), 
        .CO1(n4528), .S1(n172[5]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2613_1.INIT0 = "0xc33c";
    defparam add_2613_1.INIT1 = "0xc33c";
    LUT4 i1698_2_lut (.A(n172_adj_934[29]), .B(n3347), .Z(blu_accum_31__N_383[28])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1698_2_lut.INIT = "0x8888";
    LUT4 i1653_2_lut (.A(n172[15]), .B(n3347), .Z(red_accum_31__N_319[14])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1653_2_lut.INIT = "0x8888";
    LUT4 i1697_2_lut (.A(n172_adj_934[28]), .B(n3347), .Z(blu_accum_31__N_383[27])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1697_2_lut.INIT = "0x8888";
    FA2 add_2611_29 (.A0(GND_net), .B0(grn_accum[30]), .C0(n626), .D0(n4525), 
        .CI0(n4525), .A1(GND_net), .B1(grn_accum[31]), .C1(n626), .D1(n8817), 
        .CI1(n8817), .CO0(n8817), .S0(n172_adj_935[31]), .S1(n172_adj_935[32]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_29.INIT0 = "0xc33c";
    defparam add_2611_29.INIT1 = "0xc33c";
    FA2 add_128_add_5_21 (.A0(GND_net), .B0(steady_count[19]), .C0(GND_net), 
        .D0(n4488), .CI0(n4488), .A1(GND_net), .B1(steady_count[20]), 
        .C1(GND_net), .D1(n8904), .CI1(n8904), .CO0(n8904), .CO1(n4490), 
        .S0(n147_adj_933[19]), .S1(n147_adj_933[20]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_21.INIT0 = "0xc33c";
    defparam add_128_add_5_21.INIT1 = "0xc33c";
    LUT4 i1652_2_lut (.A(n172[14]), .B(n3347), .Z(red_accum_31__N_319[13])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1652_2_lut.INIT = "0x8888";
    LUT4 i1588_2_lut (.A(n147[20]), .B(n1979), .Z(n2589)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1588_2_lut.INIT = "0x2222";
    LUT4 i1651_2_lut (.A(n172[13]), .B(n3347), .Z(red_accum_31__N_319[12])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1651_2_lut.INIT = "0x8888";
    LUT4 i1696_2_lut (.A(n172_adj_934[27]), .B(n3347), .Z(blu_accum_31__N_383[26])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1696_2_lut.INIT = "0x8888";
    LUT4 i1764_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[17]), 
         .Z(curr_red_17__N_415[3])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1764_2_lut_3_lut.INIT = "0x1010";
    FA2 add_2611_27 (.A0(GND_net), .B0(grn_accum[28]), .C0(n626), .D0(n4523), 
        .CI0(n4523), .A1(GND_net), .B1(grn_accum[29]), .C1(n626), .D1(n8814), 
        .CI1(n8814), .CO0(n8814), .CO1(n4525), .S0(n172_adj_935[29]), 
        .S1(n172_adj_935[30]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_27.INIT0 = "0xc33c";
    defparam add_2611_27.INIT1 = "0xc33c";
    LUT4 i1695_2_lut (.A(n172_adj_934[26]), .B(n3347), .Z(blu_accum_31__N_383[25])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1695_2_lut.INIT = "0x8888";
    FA2 add_128_add_5_19 (.A0(GND_net), .B0(steady_count[17]), .C0(GND_net), 
        .D0(n4486), .CI0(n4486), .A1(GND_net), .B1(steady_count[18]), 
        .C1(GND_net), .D1(n8901), .CI1(n8901), .CO0(n8901), .CO1(n4488), 
        .S0(n147_adj_933[17]), .S1(n147_adj_933[18]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_19.INIT0 = "0xc33c";
    defparam add_128_add_5_19.INIT1 = "0xc33c";
    FA2 add_128_add_5_17 (.A0(GND_net), .B0(steady_count[15]), .C0(GND_net), 
        .D0(n4484), .CI0(n4484), .A1(GND_net), .B1(steady_count[16]), 
        .C1(GND_net), .D1(n8898), .CI1(n8898), .CO0(n8898), .CO1(n4486), 
        .S0(n147_adj_933[15]), .S1(n147_adj_933[16]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_17.INIT0 = "0xc33c";
    defparam add_128_add_5_17.INIT1 = "0xc33c";
    LUT4 LessThan_61_i8_3_lut (.A(steady_count[4]), .B(steady_count[8]), 
         .C(off_max_cnt[24]), .Z(n8_adj_843)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i8_3_lut.INIT = "0x8e8e";
    FA2 add_129_add_5_11 (.A0(GND_net), .B0(ramp_count[9]), .C0(GND_net), 
        .D0(n4449), .CI0(n4449), .A1(GND_net), .B1(ramp_count[10]), 
        .C1(GND_net), .D1(n8934), .CI1(n8934), .CO0(n8934), .CO1(n4451), 
        .S0(n147[9]), .S1(n147[10]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_11.INIT0 = "0xc33c";
    defparam add_129_add_5_11.INIT1 = "0xc33c";
    LUT4 i1763_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[16]), 
         .Z(curr_red_17__N_415[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1763_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1694_2_lut (.A(n172_adj_934[25]), .B(n3347), .Z(blu_accum_31__N_383[24])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1694_2_lut.INIT = "0x8888";
    LUT4 i1693_2_lut (.A(n172_adj_934[24]), .B(n3347), .Z(blu_accum_31__N_383[23])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1693_2_lut.INIT = "0x8888";
    LUT4 i1692_2_lut (.A(n172_adj_934[23]), .B(n3347), .Z(blu_accum_31__N_383[22])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1692_2_lut.INIT = "0x8888";
    FA2 add_2611_25 (.A0(GND_net), .B0(grn_accum[26]), .C0(n626), .D0(n4521), 
        .CI0(n4521), .A1(GND_net), .B1(grn_accum[27]), .C1(n626), .D1(n8811), 
        .CI1(n8811), .CO0(n8811), .CO1(n4523), .S0(n172_adj_935[27]), 
        .S1(n172_adj_935[28]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_25.INIT0 = "0xc33c";
    defparam add_2611_25.INIT1 = "0xc33c";
    LUT4 i1691_2_lut (.A(n172_adj_934[22]), .B(n3347), .Z(blu_accum_31__N_383[21])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1691_2_lut.INIT = "0x8888";
    FA2 add_128_add_5_15 (.A0(GND_net), .B0(steady_count[13]), .C0(GND_net), 
        .D0(n4482), .CI0(n4482), .A1(GND_net), .B1(steady_count[14]), 
        .C1(GND_net), .D1(n8895), .CI1(n8895), .CO0(n8895), .CO1(n4484), 
        .S0(n147_adj_933[13]), .S1(n147_adj_933[14]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_15.INIT0 = "0xc33c";
    defparam add_128_add_5_15.INIT1 = "0xc33c";
    FA2 add_129_add_5_9 (.A0(GND_net), .B0(ramp_count[7]), .C0(GND_net), 
        .D0(n4447), .CI0(n4447), .A1(GND_net), .B1(ramp_count[8]), .C1(GND_net), 
        .D1(n8931), .CI1(n8931), .CO0(n8931), .CO1(n4449), .S0(n147[7]), 
        .S1(n147[8]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_9.INIT0 = "0xc33c";
    defparam add_129_add_5_9.INIT1 = "0xc33c";
    LUT4 i1690_2_lut (.A(n172_adj_934[21]), .B(n3347), .Z(blu_accum_31__N_383[20])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1690_2_lut.INIT = "0x8888";
    FA2 pwm_count_301_add_4_9 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[7]), 
        .D0(n4428), .CI0(n4428), .A1(GND_net), .B1(GND_net), .C1(pwm_count[8]), 
        .D1(n8832), .CI1(n8832), .CO0(n8832), .CO1(n4430), .S0(n77[7]), 
        .S1(n77[8]));   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301_add_4_9.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_9.INIT1 = "0xc33c";
    LUT4 i4804_4_lut (.A(n11_adj_854), .B(n9_adj_855), .C(n7_adj_856), 
         .D(n5_adj_857), .Z(n7285)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i4804_4_lut.INIT = "0xaaab";
    LUT4 i1650_2_lut (.A(n172[12]), .B(n3347), .Z(red_accum_31__N_319[11])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1650_2_lut.INIT = "0x8888";
    LUT4 i1689_2_lut (.A(n172_adj_934[20]), .B(n3347), .Z(blu_accum_31__N_383[19])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1689_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_58_i5_2_lut (.A(pwm_count[2]), .B(curr_red[2]), 
         .Z(n5_adj_857)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i5_2_lut.INIT = "0x6666";
    FA2 add_2612_29 (.A0(GND_net), .B0(blu_accum[31]), .C0(n626), .D0(n4583), 
        .CI0(n4583), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(n8772), 
        .CI1(n8772), .CO0(n8772), .S0(n172_adj_934[32]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_29.INIT0 = "0xc33c";
    defparam add_2612_29.INIT1 = "0xc33c";
    LUT4 i1688_2_lut (.A(n172_adj_934[19]), .B(n3347), .Z(blu_accum_31__N_383[18])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1688_2_lut.INIT = "0x8888";
    LUT4 i1687_2_lut (.A(n172_adj_934[18]), .B(n3347), .Z(blu_accum_31__N_383[17])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1687_2_lut.INIT = "0x8888";
    LUT4 i1686_2_lut (.A(n172_adj_934[17]), .B(n3347), .Z(blu_accum_31__N_383[16])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1686_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i19_rep_44_2_lut (.A(off_max_cnt[27]), .B(steady_count[9]), 
         .Z(n8291)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i19_rep_44_2_lut.INIT = "0x6666";
    LUT4 i1685_2_lut (.A(n172_adj_934[16]), .B(n3347), .Z(blu_accum_31__N_383[15])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1685_2_lut.INIT = "0x8888";
    LUT4 i1762_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[15]), 
         .Z(curr_red_17__N_415[1])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1762_2_lut_3_lut.INIT = "0x1010";
    FA2 add_2612_27 (.A0(GND_net), .B0(blu_accum[29]), .C0(n626), .D0(n4581), 
        .CI0(n4581), .A1(GND_net), .B1(blu_accum[30]), .C1(n626), .D1(n8769), 
        .CI1(n8769), .CO0(n8769), .CO1(n4583), .S0(n172_adj_934[30]), 
        .S1(n172_adj_934[31]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_27.INIT0 = "0xc33c";
    defparam add_2612_27.INIT1 = "0xc33c";
    FA2 add_2612_25 (.A0(GND_net), .B0(blu_accum[27]), .C0(n626), .D0(n4579), 
        .CI0(n4579), .A1(GND_net), .B1(blu_accum[28]), .C1(n626), .D1(n8766), 
        .CI1(n8766), .CO0(n8766), .CO1(n4581), .S0(n172_adj_934[28]), 
        .S1(n172_adj_934[29]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_25.INIT0 = "0xc33c";
    defparam add_2612_25.INIT1 = "0xc33c";
    FA2 add_128_add_5_13 (.A0(GND_net), .B0(steady_count[11]), .C0(GND_net), 
        .D0(n4480), .CI0(n4480), .A1(GND_net), .B1(steady_count[12]), 
        .C1(GND_net), .D1(n8727), .CI1(n8727), .CO0(n8727), .CO1(n4482), 
        .S0(n147_adj_933[11]), .S1(n147_adj_933[12]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_13.INIT0 = "0xc33c";
    defparam add_128_add_5_13.INIT1 = "0xc33c";
    FA2 add_2612_23 (.A0(GND_net), .B0(blu_accum[25]), .C0(n626), .D0(n4577), 
        .CI0(n4577), .A1(GND_net), .B1(blu_accum[26]), .C1(n626), .D1(n8763), 
        .CI1(n8763), .CO0(n8763), .CO1(n4579), .S0(n172_adj_934[26]), 
        .S1(n172_adj_934[27]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_23.INIT0 = "0xc33c";
    defparam add_2612_23.INIT1 = "0xc33c";
    FA2 add_2612_21 (.A0(GND_net), .B0(blu_accum[23]), .C0(n626), .D0(n4575), 
        .CI0(n4575), .A1(GND_net), .B1(blu_accum[24]), .C1(n626), .D1(n8760), 
        .CI1(n8760), .CO0(n8760), .CO1(n4577), .S0(n172_adj_934[24]), 
        .S1(n172_adj_934[25]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_21.INIT0 = "0xc33c";
    defparam add_2612_21.INIT1 = "0xc33c";
    FA2 add_2611_23 (.A0(GND_net), .B0(grn_accum[24]), .C0(n626), .D0(n4519), 
        .CI0(n4519), .A1(GND_net), .B1(grn_accum[25]), .C1(n626), .D1(n8808), 
        .CI1(n8808), .CO0(n8808), .CO1(n4521), .S0(n172_adj_935[25]), 
        .S1(n172_adj_935[26]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_23.INIT0 = "0xc33c";
    defparam add_2611_23.INIT1 = "0xc33c";
    FA2 add_2611_21 (.A0(GND_net), .B0(grn_accum[22]), .C0(n626), .D0(n4517), 
        .CI0(n4517), .A1(GND_net), .B1(grn_accum[23]), .C1(n626), .D1(n8805), 
        .CI1(n8805), .CO0(n8805), .CO1(n4519), .S0(n172_adj_935[23]), 
        .S1(n172_adj_935[24]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_21.INIT0 = "0xc33c";
    defparam add_2611_21.INIT1 = "0xc33c";
    FA2 add_128_add_5_11 (.A0(GND_net), .B0(steady_count[9]), .C0(GND_net), 
        .D0(n4478), .CI0(n4478), .A1(GND_net), .B1(steady_count[10]), 
        .C1(GND_net), .D1(n8724), .CI1(n8724), .CO0(n8724), .CO1(n4480), 
        .S0(n147_adj_933[9]), .S1(n147_adj_933[10]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_11.INIT0 = "0xc33c";
    defparam add_128_add_5_11.INIT1 = "0xc33c";
    LUT4 i1587_2_lut (.A(n147[21]), .B(n1979), .Z(n2587)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1587_2_lut.INIT = "0x2222";
    FA2 add_2612_19 (.A0(GND_net), .B0(blu_accum[21]), .C0(n626), .D0(n4573), 
        .CI0(n4573), .A1(GND_net), .B1(blu_accum[22]), .C1(n626), .D1(n8757), 
        .CI1(n8757), .CO0(n8757), .CO1(n4575), .S0(n172_adj_934[22]), 
        .S1(n172_adj_934[23]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_19.INIT0 = "0xc33c";
    defparam add_2612_19.INIT1 = "0xc33c";
    LUT4 i1684_2_lut (.A(n172_adj_934[15]), .B(n3347), .Z(blu_accum_31__N_383[14])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1684_2_lut.INIT = "0x8888";
    FA2 add_128_add_5_9 (.A0(GND_net), .B0(steady_count[7]), .C0(GND_net), 
        .D0(n4476), .CI0(n4476), .A1(GND_net), .B1(steady_count[8]), 
        .C1(GND_net), .D1(n8721), .CI1(n8721), .CO0(n8721), .CO1(n4478), 
        .S0(n147_adj_933[7]), .S1(n147_adj_933[8]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_9.INIT0 = "0xc33c";
    defparam add_128_add_5_9.INIT1 = "0xc33c";
    FA2 add_2611_19 (.A0(GND_net), .B0(grn_accum[20]), .C0(n626), .D0(n4515), 
        .CI0(n4515), .A1(GND_net), .B1(grn_accum[21]), .C1(n626), .D1(n8802), 
        .CI1(n8802), .CO0(n8802), .CO1(n4517), .S0(n172_adj_935[21]), 
        .S1(n172_adj_935[22]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_19.INIT0 = "0xc33c";
    defparam add_2611_19.INIT1 = "0xc33c";
    LUT4 i1683_2_lut (.A(n172_adj_934[14]), .B(n3347), .Z(blu_accum_31__N_383[13])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1683_2_lut.INIT = "0x8888";
    FA2 add_2612_17 (.A0(GND_net), .B0(blu_accum[19]), .C0(n626), .D0(n4571), 
        .CI0(n4571), .A1(GND_net), .B1(blu_accum[20]), .C1(n626), .D1(n8754), 
        .CI1(n8754), .CO0(n8754), .CO1(n4573), .S0(n172_adj_934[20]), 
        .S1(n172_adj_934[21]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_17.INIT0 = "0xc33c";
    defparam add_2612_17.INIT1 = "0xc33c";
    FA2 add_128_add_5_7 (.A0(GND_net), .B0(steady_count[5]), .C0(GND_net), 
        .D0(n4474), .CI0(n4474), .A1(GND_net), .B1(steady_count[6]), 
        .C1(GND_net), .D1(n8718), .CI1(n8718), .CO0(n8718), .CO1(n4476), 
        .S0(n147_adj_933[5]), .S1(n147_adj_933[6]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_7.INIT0 = "0xc33c";
    defparam add_128_add_5_7.INIT1 = "0xc33c";
    FA2 add_128_add_5_5 (.A0(GND_net), .B0(steady_count[3]), .C0(GND_net), 
        .D0(n4472), .CI0(n4472), .A1(GND_net), .B1(steady_count[4]), 
        .C1(GND_net), .D1(n8715), .CI1(n8715), .CO0(n8715), .CO1(n4474), 
        .S0(n147_adj_933[3]), .S1(n147_adj_933[4]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_5.INIT0 = "0xc33c";
    defparam add_128_add_5_5.INIT1 = "0xc33c";
    FA2 add_129_add_5_7 (.A0(GND_net), .B0(ramp_count[5]), .C0(GND_net), 
        .D0(n4445), .CI0(n4445), .A1(GND_net), .B1(ramp_count[6]), .C1(GND_net), 
        .D1(n8928), .CI1(n8928), .CO0(n8928), .CO1(n4447), .S0(n147[5]), 
        .S1(n147[6]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_7.INIT0 = "0xc33c";
    defparam add_129_add_5_7.INIT1 = "0xc33c";
    FA2 add_129_add_5_5 (.A0(GND_net), .B0(ramp_count[3]), .C0(GND_net), 
        .D0(n4443), .CI0(n4443), .A1(GND_net), .B1(ramp_count[4]), .C1(GND_net), 
        .D1(n8925), .CI1(n8925), .CO0(n8925), .CO1(n4445), .S0(n147[3]), 
        .S1(n147[4]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_5.INIT0 = "0xc33c";
    defparam add_129_add_5_5.INIT1 = "0xc33c";
    FA2 add_128_add_5_3 (.A0(GND_net), .B0(steady_count[1]), .C0(GND_net), 
        .D0(n4470), .CI0(n4470), .A1(GND_net), .B1(steady_count[2]), 
        .C1(GND_net), .D1(n8712), .CI1(n8712), .CO0(n8712), .CO1(n4472), 
        .S0(n147_adj_933[1]), .S1(n147_adj_933[2]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_3.INIT0 = "0xc33c";
    defparam add_128_add_5_3.INIT1 = "0xc33c";
    LUT4 i1649_2_lut (.A(n172[11]), .B(n3347), .Z(red_accum_31__N_319[10])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1649_2_lut.INIT = "0x8888";
    LUT4 i1682_2_lut (.A(n172_adj_934[13]), .B(n3347), .Z(blu_accum_31__N_383[12])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1682_2_lut.INIT = "0x8888";
    FA2 add_2612_15 (.A0(GND_net), .B0(blu_accum[17]), .C0(n626), .D0(n4569), 
        .CI0(n4569), .A1(GND_net), .B1(blu_accum[18]), .C1(n626), .D1(n8751), 
        .CI1(n8751), .CO0(n8751), .CO1(n4571), .S0(n172_adj_934[18]), 
        .S1(n172_adj_934[19]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_15.INIT0 = "0xc33c";
    defparam add_2612_15.INIT1 = "0xc33c";
    FA2 add_2612_13 (.A0(GND_net), .B0(blu_accum[15]), .C0(n626), .D0(n4567), 
        .CI0(n4567), .A1(GND_net), .B1(blu_accum[16]), .C1(n626), .D1(n8748), 
        .CI1(n8748), .CO0(n8748), .CO1(n4569), .S0(n172_adj_934[16]), 
        .S1(n172_adj_934[17]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_13.INIT0 = "0xc33c";
    defparam add_2612_13.INIT1 = "0xc33c";
    FA2 add_2611_17 (.A0(GND_net), .B0(grn_accum[18]), .C0(n626), .D0(n4513), 
        .CI0(n4513), .A1(GND_net), .B1(grn_accum[19]), .C1(n626), .D1(n8799), 
        .CI1(n8799), .CO0(n8799), .CO1(n4515), .S0(n172_adj_935[19]), 
        .S1(n172_adj_935[20]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_17.INIT0 = "0xc33c";
    defparam add_2611_17.INIT1 = "0xc33c";
    LUT4 i1681_2_lut (.A(n172_adj_934[12]), .B(n3347), .Z(blu_accum_31__N_383[11])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1681_2_lut.INIT = "0x8888";
    LUT4 i1680_2_lut (.A(n172_adj_934[11]), .B(n3347), .Z(blu_accum_31__N_383[10])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1680_2_lut.INIT = "0x8888";
    LUT4 i1586_2_lut (.A(n147[22]), .B(n1979), .Z(n2585)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1586_2_lut.INIT = "0x2222";
    LUT4 i1679_2_lut (.A(n172_adj_934[10]), .B(n3347), .Z(blu_accum_31__N_383[9])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1679_2_lut.INIT = "0x8888";
    LUT4 i1_2_lut (.A(ramp_count[26]), .B(ramp_count[27]), .Z(n6006)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.INIT = "0xeeee";
    LUT4 i1678_2_lut (.A(n172_adj_934[9]), .B(n3347), .Z(blu_accum_31__N_383[8])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1678_2_lut.INIT = "0x8888";
    LUT4 i1585_2_lut (.A(n147[23]), .B(n1979), .Z(n2583)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1585_2_lut.INIT = "0x2222";
    LUT4 i1708_2_lut (.A(n147_adj_933[9]), .B(n1979), .Z(n2635)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1708_2_lut.INIT = "0x2222";
    FA2 add_2611_15 (.A0(GND_net), .B0(grn_accum[16]), .C0(n626), .D0(n4511), 
        .CI0(n4511), .A1(GND_net), .B1(grn_accum[17]), .C1(n626), .D1(n8796), 
        .CI1(n8796), .CO0(n8796), .CO1(n4513), .S0(n172_adj_935[17]), 
        .S1(n172_adj_935[18]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_15.INIT0 = "0xc33c";
    defparam add_2611_15.INIT1 = "0xc33c";
    LUT4 i1677_2_lut (.A(n172_adj_934[8]), .B(n3347), .Z(blu_accum_31__N_383[7])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1677_2_lut.INIT = "0x8888";
    LUT4 LessThan_76_i52_4_lut (.A(n48), .B(ramp_count[25]), .C(ramp_max_cnt[25]), 
         .D(ramp_count[24]), .Z(n52)) /* synthesis lut_function=(A (B+!(C))+!A (B ((D)+!C)+!B !(C+!(D)))) */ ;   /* synthesis lineinfo="@1(371[26],371[52])"*/
    defparam LessThan_76_i52_4_lut.INIT = "0xcf8e";
    LUT4 i1676_2_lut (.A(n172_adj_934[7]), .B(n3347), .Z(blu_accum_31__N_383[6])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1676_2_lut.INIT = "0x8888";
    FA2 add_128_add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .A1(GND_net), 
        .B1(steady_count[0]), .C1(VCC_net), .D1(n8709), .CI1(n8709), 
        .CO0(n8709), .CO1(n4470), .S1(n147_adj_933[0]));   /* synthesis lineinfo="@1(367[41],367[57])"*/
    defparam add_128_add_5_1.INIT0 = "0xc33c";
    defparam add_128_add_5_1.INIT1 = "0xc33c";
    FA2 add_129_add_5_29 (.A0(GND_net), .B0(ramp_count[27]), .C0(GND_net), 
        .D0(n4467), .CI0(n4467), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n8961), .CI1(n8961), .CO0(n8961), .S0(n147[27]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_29.INIT0 = "0xc33c";
    defparam add_129_add_5_29.INIT1 = "0xc33c";
    FA2 add_129_add_5_3 (.A0(GND_net), .B0(ramp_count[1]), .C0(GND_net), 
        .D0(n4441), .CI0(n4441), .A1(GND_net), .B1(ramp_count[2]), .C1(GND_net), 
        .D1(n8922), .CI1(n8922), .CO0(n8922), .CO1(n4443), .S0(n147[1]), 
        .S1(n147[2]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_3.INIT0 = "0xc33c";
    defparam add_129_add_5_3.INIT1 = "0xc33c";
    LUT4 i1675_2_lut (.A(n172_adj_934[6]), .B(n3347), .Z(blu_accum_31__N_383[5])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1675_2_lut.INIT = "0x8888";
    FA2 add_2611_13 (.A0(GND_net), .B0(grn_accum[14]), .C0(n626), .D0(n4509), 
        .CI0(n4509), .A1(GND_net), .B1(grn_accum[15]), .C1(n626), .D1(n8793), 
        .CI1(n8793), .CO0(n8793), .CO1(n4511), .S0(n172_adj_935[15]), 
        .S1(n172_adj_935[16]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2611_13.INIT0 = "0xc33c";
    defparam add_2611_13.INIT1 = "0xc33c";
    LUT4 i1584_2_lut (.A(n147[24]), .B(n1979), .Z(n2581)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1584_2_lut.INIT = "0x2222";
    FA2 add_129_add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .A1(GND_net), 
        .B1(ramp_count[0]), .C1(VCC_net), .D1(n8919), .CI1(n8919), .CO0(n8919), 
        .CO1(n4441), .S1(n147[0]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_1.INIT0 = "0xc33c";
    defparam add_129_add_5_1.INIT1 = "0xc33c";
    FA2 pwm_count_301_add_4_19 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[17]), 
        .D0(n4438), .CI0(n4438), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n8847), .CI1(n8847), .CO0(n8847), .S0(n77[17]));   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301_add_4_19.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_19.INIT1 = "0xc33c";
    LUT4 pwm_count_17__I_0_i7_2_lut (.A(pwm_count[3]), .B(curr_grn[3]), 
         .Z(n7_adj_895)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i7_2_lut.INIT = "0x6666";
    FA2 pwm_count_301_add_4_17 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[15]), 
        .D0(n4436), .CI0(n4436), .A1(GND_net), .B1(GND_net), .C1(pwm_count[16]), 
        .D1(n8844), .CI1(n8844), .CO0(n8844), .CO1(n4438), .S0(n77[15]), 
        .S1(n77[16]));   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301_add_4_17.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_17.INIT1 = "0xc33c";
    LUT4 i5002_4_lut_4_lut (.A(off_max_cnt[24]), .B(steady_count[6]), .C(steady_count[5]), 
         .D(n7467), .Z(n7483)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+(C+!(D))))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5002_4_lut_4_lut.INIT = "0x7eff";
    FA2 pwm_count_301_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
        .A1(GND_net), .B1(VCC_net), .C1(pwm_count[0]), .D1(n8820), .CI1(n8820), 
        .CO0(n8820), .CO1(n4422), .S1(n77[0]));   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam pwm_count_301_add_4_1.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_1.INIT1 = "0xc33c";
    LUT4 i1648_2_lut (.A(n172[10]), .B(n3347), .Z(red_accum_31__N_319[9])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1648_2_lut.INIT = "0x8888";
    FA2 add_129_add_5_27 (.A0(GND_net), .B0(ramp_count[25]), .C0(GND_net), 
        .D0(n4465), .CI0(n4465), .A1(GND_net), .B1(ramp_count[26]), 
        .C1(GND_net), .D1(n8958), .CI1(n8958), .CO0(n8958), .CO1(n4467), 
        .S0(n147[25]), .S1(n147[26]));   /* synthesis lineinfo="@1(376[39],376[53])"*/
    defparam add_129_add_5_27.INIT0 = "0xc33c";
    defparam add_129_add_5_27.INIT1 = "0xc33c";
    LUT4 i1707_2_lut (.A(n147_adj_933[8]), .B(n1979), .Z(n2633)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1707_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_i17_2_lut (.A(pwm_count[8]), .B(curr_grn[8]), 
         .Z(n17_adj_898)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i17_2_lut.INIT = "0x6666";
    LUT4 LessThan_76_i48_4_lut (.A(n7223), .B(ramp_count[23]), .C(ramp_max_cnt[25]), 
         .D(ramp_count[22]), .Z(n48)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;   /* synthesis lineinfo="@1(371[26],371[52])"*/
    defparam LessThan_76_i48_4_lut.INIT = "0x8f0e";
    LUT4 i1706_2_lut (.A(n147_adj_933[7]), .B(n1979), .Z(n2631)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1706_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_i15_2_lut (.A(pwm_count[7]), .B(curr_grn[7]), 
         .Z(n15_adj_899)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i15_2_lut.INIT = "0x6666";
    LUT4 i1647_2_lut (.A(n172[9]), .B(n3347), .Z(red_accum_31__N_319[8])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1647_2_lut.INIT = "0x8888";
    LUT4 i1646_2_lut (.A(n172[8]), .B(n3347), .Z(red_accum_31__N_319[7])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1646_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i10_3_lut_3_lut (.A(off_max_cnt[24]), .B(steady_count[6]), 
         .C(steady_count[5]), .Z(n10_adj_900)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i10_3_lut_3_lut.INIT = "0xd4d4";
    LUT4 i1705_2_lut (.A(n147_adj_933[6]), .B(n1979), .Z(n2629)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1705_2_lut.INIT = "0x2222";
    LUT4 i1583_2_lut (.A(n147[25]), .B(n1979), .Z(n2579)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1583_2_lut.INIT = "0x2222";
    LUT4 i5020_4_lut_4_lut (.A(off_max_cnt[24]), .B(steady_count[6]), .C(steady_count[5]), 
         .D(steady_count[7]), .Z(n7501)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+(C+(D))))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5020_4_lut_4_lut.INIT = "0x7ffe";
    LUT4 pwm_count_17__I_0_i13_2_lut (.A(pwm_count[6]), .B(curr_grn[6]), 
         .Z(n13_adj_901)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i13_2_lut.INIT = "0x6666";
    LUT4 i4759_4_lut (.A(n7581), .B(ramp_count[21]), .C(ramp_count[20]), 
         .D(ramp_max_cnt[25]), .Z(n7223)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!((D)+!C))) */ ;   /* synthesis lineinfo="@1(371[26],371[52])"*/
    defparam i4759_4_lut.INIT = "0xecfe";
    LUT4 i1674_2_lut (.A(n172_adj_934[5]), .B(n3347), .Z(blu_accum_31__N_383[4])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1674_2_lut.INIT = "0x8888";
    LUT4 i5100_4_lut (.A(n7224), .B(ramp_count[19]), .C(ramp_max_cnt[25]), 
         .D(ramp_count[18]), .Z(n7581)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;   /* synthesis lineinfo="@1(371[26],371[52])"*/
    defparam i5100_4_lut.INIT = "0x8f0e";
    LUT4 pwm_count_17__I_0_i27_2_lut (.A(pwm_count[13]), .B(curr_grn[13]), 
         .Z(n27_adj_902)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i27_2_lut.INIT = "0x6666";
    LUT4 i4760_4_lut (.A(ramp_count[15]), .B(n30), .C(ramp_count[16]), 
         .D(ramp_count[17]), .Z(n7224)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   /* synthesis lineinfo="@1(371[26],371[52])"*/
    defparam i4760_4_lut.INIT = "0xfffe";
    LUT4 i1582_2_lut (.A(n147[26]), .B(n1979), .Z(n2577)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1582_2_lut.INIT = "0x2222";
    LUT4 i1645_2_lut (.A(n172[7]), .B(n3347), .Z(red_accum_31__N_319[6])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1645_2_lut.INIT = "0x8888";
    LUT4 LessThan_76_i30_4_lut (.A(n7227), .B(ramp_count[14]), .C(ramp_max_cnt[25]), 
         .D(ramp_count[13]), .Z(n30)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;   /* synthesis lineinfo="@1(371[26],371[52])"*/
    defparam LessThan_76_i30_4_lut.INIT = "0x8f0e";
    LUT4 pwm_count_17__I_0_i23_2_lut (.A(pwm_count[11]), .B(curr_grn[11]), 
         .Z(n23_adj_903)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i23_2_lut.INIT = "0x6666";
    LUT4 i1704_2_lut (.A(n147_adj_933[5]), .B(n1979), .Z(n2627)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1704_2_lut.INIT = "0x2222";
    FA2 add_2612_11 (.A0(GND_net), .B0(blu_accum[13]), .C0(n626), .D0(n4565), 
        .CI0(n4565), .A1(GND_net), .B1(blu_accum[14]), .C1(n626), .D1(n8745), 
        .CI1(n8745), .CO0(n8745), .CO1(n4567), .S0(n172_adj_934[14]), 
        .S1(n172_adj_934[15]));   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam add_2612_11.INIT0 = "0xc33c";
    defparam add_2612_11.INIT1 = "0xc33c";
    LUT4 pwm_count_17__I_0_i21_2_lut (.A(pwm_count[10]), .B(curr_grn[10]), 
         .Z(n21_adj_904)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i21_2_lut.INIT = "0x6666";
    LUT4 i4892_4_lut (.A(n7228), .B(ramp_count[12]), .C(ramp_count[11]), 
         .D(ramp_max_cnt[25]), .Z(n7227)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!((D)+!C))) */ ;   /* synthesis lineinfo="@1(371[26],371[52])"*/
    defparam i4892_4_lut.INIT = "0xecfe";
    LUT4 i1703_2_lut (.A(n147_adj_933[4]), .B(n1979), .Z(n2625)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1703_2_lut.INIT = "0x2222";
    LUT4 i1702_2_lut (.A(n147_adj_933[3]), .B(n1979), .Z(n2623)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1702_2_lut.INIT = "0x2222";
    LUT4 i1639_2_lut (.A(n172_adj_935[32]), .B(n3347), .Z(grn_accum_31__N_351[31])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1639_2_lut.INIT = "0x8888";
    LUT4 i1544_2_lut (.A(n77[17]), .B(n3577), .Z(n97[17])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1544_2_lut.INIT = "0x2222";
    LUT4 i1782_4_lut (.A(n27_adj_905), .B(pwm_count[17]), .C(n32), .D(n28), 
         .Z(n3577)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1782_4_lut.INIT = "0xeccc";
    LUT4 i1565_2_lut (.A(n77[1]), .B(n3577), .Z(n97[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1565_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_i19_2_lut (.A(pwm_count[9]), .B(curr_grn[9]), 
         .Z(n19_adj_906)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i19_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_i29_2_lut (.A(pwm_count[14]), .B(curr_grn[14]), 
         .Z(n29_adj_907)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i29_2_lut.INIT = "0x6666";
    LUT4 i10_4_lut (.A(pwm_count[15]), .B(pwm_count[16]), .C(pwm_count[14]), 
         .D(pwm_count[8]), .Z(n27_adj_905)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.INIT = "0x8000";
    LUT4 i15_4_lut (.A(n29_adj_908), .B(pwm_count[9]), .C(n26), .D(pwm_count[2]), 
         .Z(n32)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15_4_lut.INIT = "0x8000";
    LUT4 i4761_4_lut (.A(n7646), .B(ramp_count[10]), .C(ramp_count[9]), 
         .D(ramp_max_cnt[25]), .Z(n7228)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!((D)+!C))) */ ;   /* synthesis lineinfo="@1(371[26],371[52])"*/
    defparam i4761_4_lut.INIT = "0xecfe";
    LUT4 i11_4_lut (.A(pwm_count[6]), .B(pwm_count[0]), .C(pwm_count[5]), 
         .D(pwm_count[10]), .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11_4_lut.INIT = "0x8000";
    LUT4 i12_4_lut (.A(pwm_count[12]), .B(pwm_count[11]), .C(pwm_count[3]), 
         .D(pwm_count[4]), .Z(n29_adj_908)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.INIT = "0x8000";
    LUT4 i9_3_lut (.A(pwm_count[1]), .B(pwm_count[7]), .C(pwm_count[13]), 
         .Z(n26)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9_3_lut.INIT = "0x8080";
    LUT4 mux_161_i31_4_lut (.A(n172_adj_935[31]), .B(grn_peak[30]), .C(n3347), 
         .D(n626), .Z(grn_accum_31__N_351[30])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam mux_161_i31_4_lut.INIT = "0xaca0";
    LUT4 i5165_4_lut (.A(n14), .B(ramp_count[8]), .C(ramp_max_cnt[25]), 
         .D(ramp_count[7]), .Z(n7646)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;   /* synthesis lineinfo="@1(371[26],371[52])"*/
    defparam i5165_4_lut.INIT = "0x8f0e";
    LUT4 i1555_2_lut (.A(n77[4]), .B(n3577), .Z(n97[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1555_2_lut.INIT = "0x2222";
    LUT4 mux_161_i30_4_lut (.A(n172_adj_935[30]), .B(grn_peak[29]), .C(n3347), 
         .D(n626), .Z(grn_accum_31__N_351[29])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam mux_161_i30_4_lut.INIT = "0xaca0";
    LUT4 i1542_2_lut (.A(n77[16]), .B(n3577), .Z(n97[16])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1542_2_lut.INIT = "0x2222";
    LUT4 i1581_2_lut (.A(n147[27]), .B(n1979), .Z(n2575)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1581_2_lut.INIT = "0x2222";
    LUT4 i1570_2_lut (.A(n147[5]), .B(n1979), .Z(n2573)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1570_2_lut.INIT = "0x2222";
    LUT4 i5111_4_lut (.A(n7659), .B(steady_count[27]), .C(off_max_cnt[27]), 
         .D(steady_count[26]), .Z(n611)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5111_4_lut.INIT = "0x8f0e";
    LUT4 i1638_2_lut (.A(n172_adj_935[29]), .B(n3347), .Z(grn_accum_31__N_351[28])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1638_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_58_i13_2_lut (.A(pwm_count[6]), .B(curr_red[6]), 
         .Z(n13_adj_816)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i13_2_lut.INIT = "0x6666";
    LUT4 i1644_2_lut (.A(n172[6]), .B(n3347), .Z(red_accum_31__N_319[5])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1644_2_lut.INIT = "0x8888";
    LUT4 i1637_2_lut (.A(n172_adj_935[28]), .B(n3347), .Z(grn_accum_31__N_351[27])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1637_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_58_i11_2_lut (.A(pwm_count[5]), .B(curr_red[5]), 
         .Z(n11_adj_854)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i11_2_lut.INIT = "0x6666";
    LUT4 i5178_4_lut (.A(n40), .B(n7639), .C(n8306), .D(n7405), .Z(n7659)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5178_4_lut.INIT = "0xccca";
    LUT4 i5195_3_lut (.A(n7700), .B(steady_count[20]), .C(off_max_cnt[27]), 
         .Z(n40)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5195_3_lut.INIT = "0x8e8e";
    LUT4 LessThan_76_i14_4_lut (.A(ramp_count[6]), .B(ramp_max_cnt[25]), 
         .C(n5967), .D(ramp_count[5]), .Z(n14)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B)) */ ;   /* synthesis lineinfo="@1(371[26],371[52])"*/
    defparam LessThan_76_i14_4_lut.INIT = "0xbbb3";
    LUT4 i1643_2_lut (.A(n172[5]), .B(n3347), .Z(red_accum_31__N_319[4])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1643_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_i31_2_lut (.A(pwm_count[15]), .B(curr_grn[15]), 
         .Z(n31_adj_909)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i31_2_lut.INIT = "0x6666";
    LUT4 i5158_4_lut (.A(n48_adj_910), .B(n7579), .C(n8306), .D(n7413), 
         .Z(n7639)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5158_4_lut.INIT = "0xaaac";
    LUT4 i1_4_lut (.A(ramp_count[3]), .B(ramp_count[1]), .C(ramp_count[4]), 
         .D(ramp_count[2]), .Z(n5967)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   /* synthesis lineinfo="@1(371[26],371[52])"*/
    defparam i1_4_lut.INIT = "0xa080";
    LUT4 i1536_2_lut (.A(n77[15]), .B(n3577), .Z(n97[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1536_2_lut.INIT = "0x2222";
    LUT4 i1636_2_lut (.A(n172_adj_935[27]), .B(n3347), .Z(grn_accum_31__N_351[26])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1636_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_58_i7_2_lut (.A(pwm_count[3]), .B(curr_red[3]), 
         .Z(n7_adj_856)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i7_2_lut.INIT = "0x6666";
    LUT4 i1635_2_lut (.A(n172_adj_935[26]), .B(n3347), .Z(grn_accum_31__N_351[25])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1635_2_lut.INIT = "0x8888";
    LUT4 i4924_4_lut (.A(off_max_cnt[24]), .B(n8272), .C(steady_count[24]), 
         .D(n7399), .Z(n7405)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+(D)))) */ ;
    defparam i4924_4_lut.INIT = "0xffde";
    LUT4 i1634_2_lut (.A(n172_adj_935[25]), .B(n3347), .Z(grn_accum_31__N_351[24])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1634_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_i25_2_lut (.A(pwm_count[12]), .B(curr_grn[12]), 
         .Z(n25_adj_911)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i25_2_lut.INIT = "0x6666";
    LUT4 i5219_3_lut (.A(n7699), .B(steady_count[19]), .C(off_max_cnt[24]), 
         .Z(n7700)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5219_3_lut.INIT = "0x8e8e";
    LUT4 pwm_count_17__I_0_58_i9_2_lut (.A(pwm_count[4]), .B(curr_red[4]), 
         .Z(n9_adj_855)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i9_2_lut.INIT = "0x6666";
    LUT4 i1633_2_lut (.A(n172_adj_935[24]), .B(n3347), .Z(grn_accum_31__N_351[23])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1633_2_lut.INIT = "0x8888";
    LUT4 i1_4_lut_adj_2 (.A(steady_count[27]), .B(n50), .C(steady_count[26]), 
         .D(steady_count[25]), .Z(n803)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_2.INIT = "0xfffe";
    LUT4 i5218_3_lut (.A(n7586), .B(n7664), .C(n7385), .Z(n7699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5218_3_lut.INIT = "0xcaca";
    LUT4 i5105_4_lut (.A(n7643), .B(steady_count[15]), .C(off_max_cnt[27]), 
         .D(steady_count[14]), .Z(n7586)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5105_4_lut.INIT = "0x8f0e";
    LUT4 i1632_2_lut (.A(n172_adj_935[23]), .B(n3347), .Z(grn_accum_31__N_351[22])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1632_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_58_i17_2_lut (.A(pwm_count[8]), .B(curr_red[8]), 
         .Z(n17_adj_815)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i17_2_lut.INIT = "0x6666";
    LUT4 i5183_3_lut (.A(n7663), .B(steady_count[18]), .C(off_max_cnt[24]), 
         .Z(n7664)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5183_3_lut.INIT = "0x8e8e";
    LUT4 i1577_2_lut (.A(n77[7]), .B(n3577), .Z(n97[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1577_2_lut.INIT = "0x2222";
    LUT4 i1631_2_lut (.A(n172_adj_935[22]), .B(n3347), .Z(grn_accum_31__N_351[21])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1631_2_lut.INIT = "0x8888";
    LUT4 i4904_4_lut (.A(off_max_cnt[24]), .B(steady_count[17]), .C(steady_count[18]), 
         .D(n7368), .Z(n7385)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+(D)))) */ ;
    defparam i4904_4_lut.INIT = "0xff7e";
    LUT4 pwm_count_17__I_0_58_i15_2_lut (.A(pwm_count[7]), .B(curr_red[7]), 
         .Z(n15)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i15_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_58_i23_2_lut (.A(pwm_count[11]), .B(curr_red[11]), 
         .Z(n23_adj_804)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i23_2_lut.INIT = "0x6666";
    LUT4 i1578_2_lut (.A(n77[6]), .B(n3577), .Z(n97[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1578_2_lut.INIT = "0x2222";
    LUT4 i5162_3_lut (.A(n4_adj_912), .B(steady_count[13]), .C(off_max_cnt[24]), 
         .Z(n7643)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5162_3_lut.INIT = "0x8e8e";
    LUT4 i1579_2_lut (.A(n77[3]), .B(n3577), .Z(n97[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1579_2_lut.INIT = "0x2222";
    LUT4 LessThan_61_i4_4_lut (.A(steady_count[0]), .B(steady_count[1]), 
         .C(off_max_cnt[27]), .D(off_max_cnt[24]), .Z(n4_adj_912)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C (D))+!B (C+(D)))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i4_4_lut.INIT = "0x8ecf";
    LUT4 i1630_2_lut (.A(n172_adj_935[21]), .B(n3347), .Z(grn_accum_31__N_351[20])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1630_2_lut.INIT = "0x8888";
    LUT4 i5205_3_lut (.A(n7694), .B(steady_count[25]), .C(off_max_cnt[27]), 
         .Z(n48_adj_910)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5205_3_lut.INIT = "0x8e8e";
    LUT4 i1535_2_lut (.A(n77[14]), .B(n3577), .Z(n97[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1535_2_lut.INIT = "0x2222";
    LUT4 i358_3_lut (.A(n5986), .B(steady_count[24]), .C(steady_count[23]), 
         .Z(n50)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i358_3_lut.INIT = "0xc8c8";
    LUT4 i1629_2_lut (.A(n172_adj_935[20]), .B(n3347), .Z(grn_accum_31__N_351[19])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1629_2_lut.INIT = "0x8888";
    LUT4 i1628_2_lut (.A(n172_adj_935[19]), .B(n3347), .Z(grn_accum_31__N_351[18])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1628_2_lut.INIT = "0x8888";
    LUT4 i1541_2_lut (.A(n77[5]), .B(n3577), .Z(n97[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1541_2_lut.INIT = "0x2222";
    LUT4 mux_61_i17_4_lut (.A(blu_accum[30]), .B(blu_peak[30]), .C(n202[2]), 
         .D(n202[0]), .Z(curr_blu_17__N_451[16])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam mux_61_i17_4_lut.INIT = "0xc0ca";
    LUT4 i5098_4_lut (.A(n20), .B(n6_adj_913), .C(n8300), .D(n7269), 
         .Z(n7579)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5098_4_lut.INIT = "0xaaac";
    LUT4 i5193_3_lut (.A(n7682), .B(curr_blu[17]), .C(pwm_count[17]), 
         .Z(blu_pwm_N_785)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam i5193_3_lut.INIT = "0x8e8e";
    LUT4 LessThan_61_i51_rep_59_2_lut (.A(off_max_cnt[27]), .B(steady_count[25]), 
         .Z(n8306)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i51_rep_59_2_lut.INIT = "0x6666";
    LUT4 i1_4_lut_adj_3 (.A(steady_count[22]), .B(n5989), .C(steady_count[21]), 
         .D(steady_count[20]), .Z(n5986)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_3.INIT = "0xa080";
    LUT4 i1627_2_lut (.A(n172_adj_935[18]), .B(n3347), .Z(grn_accum_31__N_351[17])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1627_2_lut.INIT = "0x8888";
    LUT4 i4932_4_lut (.A(off_max_cnt[24]), .B(n8272), .C(steady_count[24]), 
         .D(n7403), .Z(n7413)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+(D)))) */ ;
    defparam i4932_4_lut.INIT = "0xffde";
    LUT4 i1626_2_lut (.A(n172_adj_935[17]), .B(n3347), .Z(grn_accum_31__N_351[16])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1626_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i20_3_lut (.A(n18), .B(steady_count[12]), .C(off_max_cnt[24]), 
         .Z(n20)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i20_3_lut.INIT = "0x8e8e";
    LUT4 i1538_2_lut (.A(n77[0]), .B(n3577), .Z(n97[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1538_2_lut.INIT = "0x2222";
    LUT4 i1625_2_lut (.A(n172_adj_935[16]), .B(n3347), .Z(grn_accum_31__N_351[15])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1625_2_lut.INIT = "0x8888";
    LUT4 i1624_2_lut (.A(n172_adj_935[15]), .B(n3347), .Z(grn_accum_31__N_351[14])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1624_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i6_3_lut (.A(steady_count[2]), .B(steady_count[3]), 
         .C(off_max_cnt[24]), .Z(n6_adj_913)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i6_3_lut.INIT = "0x8e8e";
    LUT4 LessThan_61_i25_rep_53_2_lut (.A(off_max_cnt[24]), .B(steady_count[12]), 
         .Z(n8300)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i25_rep_53_2_lut.INIT = "0x6666";
    LUT4 i4788_4_lut (.A(off_max_cnt[27]), .B(off_max_cnt[24]), .C(steady_count[11]), 
         .D(steady_count[10]), .Z(n7269)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i4788_4_lut.INIT = "0x7bde";
    LUT4 i1534_2_lut (.A(n77[13]), .B(n3577), .Z(n97[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1534_2_lut.INIT = "0x2222";
    LUT4 i5213_3_lut (.A(n7693), .B(steady_count[24]), .C(off_max_cnt[24]), 
         .Z(n7694)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5213_3_lut.INIT = "0x8e8e";
    LUT4 pwm_count_17__I_0_58_i21_2_lut (.A(pwm_count[10]), .B(curr_red[10]), 
         .Z(n21_adj_805)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i21_2_lut.INIT = "0x6666";
    LUT4 i5212_4_lut (.A(n24), .B(n7641), .C(n8272), .D(n7409), .Z(n7693)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5212_4_lut.INIT = "0xcacc";
    LUT4 i1537_2_lut (.A(RGB_color_s[0]), .B(RGB_color_s[1]), .Z(blu_set[1])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(184[3],199[10])"*/
    defparam i1537_2_lut.INIT = "0x8888";
    LUT4 i1623_2_lut (.A(n172_adj_935[14]), .B(n3347), .Z(grn_accum_31__N_351[13])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1623_2_lut.INIT = "0x8888";
    LUT4 i1_4_lut_adj_4 (.A(steady_count[17]), .B(n5991), .C(steady_count[18]), 
         .D(steady_count[19]), .Z(n5989)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_4.INIT = "0x8000";
    LUT4 i1533_4_lut (.A(n202[1]), .B(BlinkRate_s[2]), .C(n221), .D(n899), 
         .Z(n212[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1533_4_lut.INIT = "0xc0c8";
    LUT4 i1622_2_lut (.A(n172_adj_935[13]), .B(n3347), .Z(grn_accum_31__N_351[12])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1622_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i24_4_lut (.A(steady_count[9]), .B(steady_count[22]), 
         .C(off_max_cnt[24]), .D(steady_count[21]), .Z(n24)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i24_4_lut.INIT = "0x8f0e";
    LUT4 i1621_2_lut (.A(n172_adj_935[12]), .B(n3347), .Z(grn_accum_31__N_351[11])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1621_2_lut.INIT = "0x8888";
    LUT4 i5160_3_lut (.A(n8_adj_843), .B(steady_count[23]), .C(off_max_cnt[27]), 
         .Z(n7641)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5160_3_lut.INIT = "0x8e8e";
    LUT4 i1620_2_lut (.A(n172_adj_935[11]), .B(n3347), .Z(grn_accum_31__N_351[10])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1620_2_lut.INIT = "0x8888";
    LUT4 i1619_2_lut (.A(n172_adj_935[10]), .B(n3347), .Z(grn_accum_31__N_351[9])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1619_2_lut.INIT = "0x8888";
    LUT4 i1563_2_lut (.A(n147[4]), .B(n1979), .Z(n2571)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1563_2_lut.INIT = "0x2222";
    LUT4 i1618_2_lut (.A(n172_adj_935[9]), .B(n3347), .Z(grn_accum_31__N_351[8])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1618_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_58_i19_2_lut (.A(pwm_count[9]), .B(curr_red[9]), 
         .Z(n19_adj_806)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i19_2_lut.INIT = "0x6666";
    LUT4 i1_4_lut_adj_5 (.A(steady_count[15]), .B(n5990), .C(steady_count[14]), 
         .D(steady_count[16]), .Z(n5991)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_5.INIT = "0xfffe";
    LUT4 i4928_4_lut (.A(off_max_cnt[24]), .B(steady_count[21]), .C(steady_count[22]), 
         .D(n8291), .Z(n7409)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+(D)))) */ ;
    defparam i4928_4_lut.INIT = "0xff7e";
    LUT4 i1617_2_lut (.A(n172_adj_935[8]), .B(n3347), .Z(grn_accum_31__N_351[7])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1617_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i18_3_lut (.A(steady_count[10]), .B(steady_count[11]), 
         .C(off_max_cnt[27]), .Z(n18)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i18_3_lut.INIT = "0x8e8e";
    LUT4 LessThan_61_i47_rep_25_2_lut (.A(off_max_cnt[27]), .B(steady_count[23]), 
         .Z(n8272)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i47_rep_25_2_lut.INIT = "0x6666";
    LUT4 i1557_2_lut (.A(n77[12]), .B(n3577), .Z(n97[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1557_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_58_i27_2_lut (.A(pwm_count[13]), .B(curr_red[13]), 
         .Z(n27)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i27_2_lut.INIT = "0x6666";
    LUT4 i4918_4_lut (.A(off_max_cnt[24]), .B(steady_count[21]), .C(steady_count[22]), 
         .D(n7657), .Z(n7399)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+(C+!(D))))) */ ;
    defparam i4918_4_lut.INIT = "0x7eff";
    LUT4 i1616_2_lut (.A(n172_adj_935[7]), .B(n3347), .Z(grn_accum_31__N_351[6])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1616_2_lut.INIT = "0x8888";
    LUT4 i42_2_lut (.A(n611), .B(n202[0]), .Z(n221)) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i42_2_lut.INIT = "0x8888";
    LUT4 i5176_4_lut (.A(off_max_cnt[27]), .B(n8277), .C(steady_count[20]), 
         .D(n7653), .Z(n7657)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+(D)))) */ ;
    defparam i5176_4_lut.INIT = "0xffde";
    LUT4 i1615_2_lut (.A(n172_adj_935[6]), .B(n3347), .Z(grn_accum_31__N_351[5])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1615_2_lut.INIT = "0x8888";
    LUT4 i1614_2_lut (.A(n172_adj_935[5]), .B(n3347), .Z(grn_accum_31__N_351[4])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1614_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i39_rep_30_2_lut (.A(off_max_cnt[24]), .B(steady_count[19]), 
         .Z(n8277)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i39_rep_30_2_lut.INIT = "0x6666";
    LUT4 i1613_2_lut (.A(n172_adj_935[4]), .B(n3347), .Z(grn_accum_31__N_351[3])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1613_2_lut.INIT = "0x8888";
    LUT4 i1559_2_lut (.A(n77[11]), .B(n3577), .Z(n97[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1559_2_lut.INIT = "0x2222";
    LUT4 i5172_4_lut (.A(off_max_cnt[24]), .B(steady_count[17]), .C(steady_count[18]), 
         .D(n7649), .Z(n7653)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+(D)))) */ ;
    defparam i5172_4_lut.INIT = "0xff7e";
    LUT4 i1669_2_lut (.A(n172[32]), .B(n3347), .Z(red_accum_31__N_319[31])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1669_2_lut.INIT = "0x8888";
    LUT4 i5168_4_lut (.A(off_max_cnt[27]), .B(steady_count[15]), .C(steady_count[16]), 
         .D(n7575), .Z(n7649)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+(D)))) */ ;
    defparam i5168_4_lut.INIT = "0xff7e";
    LUT4 pwm_count_17__I_0_58_i29_2_lut (.A(pwm_count[14]), .B(curr_red[14]), 
         .Z(n29)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i29_2_lut.INIT = "0x6666";
    LUT4 mux_165_i31_4_lut (.A(n172[31]), .B(red_peak[30]), .C(n3347), 
         .D(n626), .Z(red_accum_31__N_319[30])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam mux_165_i31_4_lut.INIT = "0xaca0";
    LUT4 i1668_2_lut (.A(n172[30]), .B(n3347), .Z(red_accum_31__N_319[29])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1668_2_lut.INIT = "0x8888";
    LUT4 i1667_2_lut (.A(n172[29]), .B(n3347), .Z(red_accum_31__N_319[28])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1667_2_lut.INIT = "0x8888";
    LUT4 i5094_3_lut (.A(off_max_cnt[27]), .B(n7257), .C(steady_count[14]), 
         .Z(n7575)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;
    defparam i5094_3_lut.INIT = "0xdede";
    LUT4 i1_4_lut_adj_6 (.A(steady_count[13]), .B(n22), .C(steady_count[12]), 
         .D(steady_count[11]), .Z(n5990)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_6.INIT = "0xa080";
    LUT4 pwm_count_17__I_0_58_i31_2_lut (.A(pwm_count[15]), .B(curr_red[15]), 
         .Z(n31_adj_914)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i31_2_lut.INIT = "0x6666";
    LUT4 i4776_4_lut (.A(off_max_cnt[24]), .B(steady_count[12]), .C(steady_count[13]), 
         .D(n7545), .Z(n7257)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A !(B (C)+!B (C+!(D))))) */ ;
    defparam i4776_4_lut.INIT = "0x5adb";
    LUT4 i5064_4_lut (.A(off_max_cnt[27]), .B(n8296), .C(steady_count[11]), 
         .D(n7519), .Z(n7545)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+(D)))) */ ;
    defparam i5064_4_lut.INIT = "0xffde";
    LUT4 i1560_2_lut (.A(n77[2]), .B(n3577), .Z(n97[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1560_2_lut.INIT = "0x2222";
    LUT4 LessThan_61_i21_rep_49_2_lut (.A(off_max_cnt[24]), .B(steady_count[10]), 
         .Z(n8296)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i21_rep_49_2_lut.INIT = "0x6666";
    LUT4 i1666_2_lut (.A(n172[28]), .B(n3347), .Z(red_accum_31__N_319[27])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1666_2_lut.INIT = "0x8888";
    LUT4 i366_4_lut (.A(n6028), .B(steady_count[10]), .C(steady_count[9]), 
         .D(n10_adj_915), .Z(n22)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i366_4_lut.INIT = "0xc8c0";
    LUT4 i5038_3_lut (.A(off_max_cnt[27]), .B(n7299), .C(steady_count[9]), 
         .Z(n7519)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;
    defparam i5038_3_lut.INIT = "0xdede";
    LUT4 i1_4_lut_adj_7 (.A(n202[2]), .B(n224), .C(BlinkRate_s[2]), .D(n803), 
         .Z(n5962)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1_4_lut_adj_7.INIT = "0xcfef";
    LUT4 i1564_2_lut (.A(n77[10]), .B(n3577), .Z(n97[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(474[22],474[35])"*/
    defparam i1564_2_lut.INIT = "0x2222";
    LUT4 i1_4_lut_adj_8 (.A(steady_count[8]), .B(steady_count[6]), .C(steady_count[5]), 
         .D(steady_count[7]), .Z(n6028)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_8.INIT = "0x8000";
    LUT4 pwm_count_17__I_0_58_i25_2_lut (.A(pwm_count[12]), .B(curr_red[12]), 
         .Z(n25_adj_916)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i25_2_lut.INIT = "0x6666";
    LUT4 i4818_4_lut (.A(off_max_cnt[24]), .B(steady_count[7]), .C(steady_count[8]), 
         .D(n7483), .Z(n7299)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A !(B (C)+!B (C+!(D))))) */ ;
    defparam i4818_4_lut.INIT = "0x5adb";
    LUT4 i1665_2_lut (.A(n172[27]), .B(n3347), .Z(red_accum_31__N_319[26])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1665_2_lut.INIT = "0x8888";
    LUT4 i1604_4_lut (.A(n202[3]), .B(BlinkRate_s[2]), .C(n227), .D(n899), 
         .Z(n212[3])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1604_4_lut.INIT = "0xc0c8";
    LUT4 i1664_2_lut (.A(n172[26]), .B(n3347), .Z(red_accum_31__N_319[25])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1664_2_lut.INIT = "0x8888";
    LUT4 i4986_4_lut (.A(n9_adj_917), .B(off_max_cnt[24]), .C(steady_count[2]), 
         .D(steady_count[3]), .Z(n7467)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+(D)))) */ ;
    defparam i4986_4_lut.INIT = "0xbffe";
    LUT4 i5182_4_lut (.A(n30_adj_918), .B(n10_adj_900), .C(n8326), .D(n7365), 
         .Z(n7663)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam i5182_4_lut.INIT = "0xaaac";
    LUT4 i5189_3_lut (.A(n7678), .B(curr_grn[17]), .C(pwm_count[17]), 
         .Z(grn_pwm_N_786)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam i5189_3_lut.INIT = "0x8e8e";
    LUT4 i1663_2_lut (.A(n172[25]), .B(n3347), .Z(red_accum_31__N_319[24])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1663_2_lut.INIT = "0x8888";
    LUT4 i5197_3_lut (.A(n7677), .B(curr_grn[16]), .C(pwm_count[16]), 
         .Z(n7678)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam i5197_3_lut.INIT = "0x8e8e";
    LUT4 LessThan_61_i30_3_lut (.A(n12), .B(steady_count[17]), .C(off_max_cnt[24]), 
         .Z(n30_adj_918)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i30_3_lut.INIT = "0x8e8e";
    LUT4 i347_4_lut (.A(steady_count[3]), .B(steady_count[4]), .C(n4_adj_919), 
         .D(steady_count[2]), .Z(n10_adj_915)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i347_4_lut.INIT = "0xeccc";
    LUT4 i48_2_lut (.A(n803), .B(n202[2]), .Z(n227)) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i48_2_lut.INIT = "0x8888";
    LUT4 i5196_4_lut (.A(n7668), .B(n7631), .C(n31_adj_909), .D(n7503), 
         .Z(n7677)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam i5196_4_lut.INIT = "0xccca";
    LUT4 i346_2_lut (.A(steady_count[0]), .B(steady_count[1]), .Z(n4_adj_919)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i346_2_lut.INIT = "0xeeee";
    LUT4 i5187_3_lut (.A(n7688), .B(curr_grn[12]), .C(n25_adj_911), .Z(n7668)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam i5187_3_lut.INIT = "0xcaca";
    LUT4 i5150_4_lut (.A(n28_adj_920), .B(n7603), .C(n31_adj_909), .D(n7507), 
         .Z(n7631)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam i5150_4_lut.INIT = "0xaaac";
    LUT4 i1726_2_lut (.A(n147_adj_933[27]), .B(n1979), .Z(n2671)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1726_2_lut.INIT = "0x2222";
    LUT4 i1725_2_lut (.A(n147_adj_933[26]), .B(n1979), .Z(n2669)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1725_2_lut.INIT = "0x2222";
    LUT4 i5022_4_lut (.A(n29_adj_907), .B(n27_adj_902), .C(n25_adj_911), 
         .D(n7489), .Z(n7503)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i5022_4_lut.INIT = "0xeeef";
    LUT4 i1724_2_lut (.A(n147_adj_933[25]), .B(n1979), .Z(n2667)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1724_2_lut.INIT = "0x2222";
    LUT4 i5207_3_lut (.A(n7692), .B(curr_grn[11]), .C(n23_adj_903), .Z(n7688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam i5207_3_lut.INIT = "0xcaca";
    LUT4 i1723_2_lut (.A(n147_adj_933[24]), .B(n1979), .Z(n2665)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1723_2_lut.INIT = "0x2222";
    LUT4 i5211_3_lut (.A(n7691), .B(curr_grn[10]), .C(n21_adj_904), .Z(n7692)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam i5211_3_lut.INIT = "0xcaca";
    LUT4 i1722_2_lut (.A(n147_adj_933[23]), .B(n1979), .Z(n2663)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1722_2_lut.INIT = "0x2222";
    LUT4 i5210_4_lut (.A(n16), .B(n6), .C(n19_adj_906), .D(n7307), .Z(n7691)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam i5210_4_lut.INIT = "0xaaac";
    LUT4 i1721_2_lut (.A(n147_adj_933[22]), .B(n1979), .Z(n2661)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1721_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_i16_3_lut (.A(n8_adj_921), .B(curr_grn[9]), .C(n19_adj_906), 
         .Z(n16)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i16_3_lut.INIT = "0xcaca";
    LUT4 i1720_2_lut (.A(n147_adj_933[21]), .B(n1979), .Z(n2659)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1720_2_lut.INIT = "0x2222";
    LUT4 i5125_3_lut (.A(n7630), .B(curr_grn[15]), .C(n31_adj_909), .Z(n28_adj_920)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam i5125_3_lut.INIT = "0xcaca";
    LUT4 i1701_2_lut (.A(n147_adj_933[2]), .B(n1979), .Z(n2621)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1701_2_lut.INIT = "0x2222";
    LUT4 i403_1_lut (.A(RGB_color_s[1]), .Z(red_set[1])) /* synthesis lut_function=(!(A)) */ ;   /* synthesis lineinfo="@1(184[3],199[10])"*/
    defparam i403_1_lut.INIT = "0x5555";
    LUT4 i5122_3_lut (.A(n10_adj_922), .B(curr_grn[7]), .C(n15_adj_899), 
         .Z(n7603)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam i5122_3_lut.INIT = "0xcaca";
    LUT4 i5185_3_lut (.A(n7690), .B(curr_red[17]), .C(pwm_count[17]), 
         .Z(red_pwm_N_784)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam i5185_3_lut.INIT = "0x8e8e";
    LUT4 i5026_4_lut (.A(n29_adj_907), .B(n27_adj_902), .C(n15_adj_899), 
         .D(n7311), .Z(n7507)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i5026_4_lut.INIT = "0xeeef";
    LUT4 i1605_2_lut (.A(n147_adj_933[1]), .B(n1979), .Z(n2619)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1605_2_lut.INIT = "0x2222";
    LUT4 i5209_3_lut (.A(n7689), .B(curr_red[16]), .C(pwm_count[16]), 
         .Z(n7690)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam i5209_3_lut.INIT = "0x8e8e";
    LUT4 i5149_3_lut (.A(n7629), .B(curr_grn[14]), .C(n29_adj_907), .Z(n7630)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam i5149_3_lut.INIT = "0xcaca";
    LUT4 i1741_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[25]), 
         .Z(curr_blu_17__N_451[11])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1741_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1740_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[24]), 
         .Z(curr_blu_17__N_451[10])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1740_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1558_2_lut (.A(n147_adj_933[0]), .B(n1979), .Z(n2567)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1558_2_lut.INIT = "0x2222";
    LUT4 i5208_4_lut (.A(n24_adj_923), .B(n7625), .C(n31_adj_914), .D(n7553), 
         .Z(n7689)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam i5208_4_lut.INIT = "0xccca";
    LUT4 i1759_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[27]), 
         .Z(curr_grn_17__N_433[13])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1759_2_lut_3_lut.INIT = "0x1010";
    LUT4 i5148_3_lut (.A(n4_adj_924), .B(curr_grn[13]), .C(n27_adj_902), 
         .Z(n7629)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam i5148_3_lut.INIT = "0xcaca";
    LUT4 i1547_2_lut (.A(n147[2]), .B(n1979), .Z(n2565)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1547_2_lut.INIT = "0x2222";
    LUT4 i1543_2_lut (.A(n147[1]), .B(n1979), .Z(n2563)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1543_2_lut.INIT = "0x2222";
    LUT4 i1755_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[23]), 
         .Z(curr_grn_17__N_433[9])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1755_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1602_2_lut (.A(n147[6]), .B(n1979), .Z(n2617)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1602_2_lut.INIT = "0x2222";
    LUT4 i1540_2_lut (.A(n147[0]), .B(n1979), .Z(n2561)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1540_2_lut.INIT = "0x2222";
    LUT4 i5199_3_lut (.A(n7698), .B(curr_blu[11]), .C(n23), .Z(n7680)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam i5199_3_lut.INIT = "0xcaca";
    LUT4 pwm_count_17__I_0_i4_4_lut (.A(curr_grn[0]), .B(curr_grn[1]), .C(pwm_count[1]), 
         .D(pwm_count[0]), .Z(n4_adj_924)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i4_4_lut.INIT = "0x0c8e";
    LUT4 i4830_2_lut_4_lut (.A(pwm_count[6]), .B(curr_grn[6]), .C(pwm_count[5]), 
         .D(curr_grn[5]), .Z(n7311)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;
    defparam i4830_2_lut_4_lut.INIT = "0x6ff6";
    LUT4 i5394_4_lut (.A(BlinkRate_s[2]), .B(n2220), .C(n803), .D(n202[2]), 
         .Z(n1975)) /* synthesis lut_function=((B (C (D))+!B (C+!(D)))+!A) */ ;
    defparam i5394_4_lut.INIT = "0xf577";
    LUT4 i1718_2_lut (.A(n147_adj_933[19]), .B(n1979), .Z(n2655)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1718_2_lut.INIT = "0x2222";
    LUT4 i5217_3_lut (.A(n7697), .B(curr_blu[10]), .C(n21), .Z(n7698)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam i5217_3_lut.INIT = "0xcaca";
    LUT4 select_19_Select_4_i2_2_lut (.A(grn_peak[30]), .B(BreatheRamp_s[2]), 
         .Z(grn_intensity_step_31__N_197[4])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(270[7],321[14])"*/
    defparam select_19_Select_4_i2_2_lut.INIT = "0x8888";
    LUT4 i5008_4_lut (.A(n23_adj_903), .B(n21_adj_904), .C(n19_adj_906), 
         .D(n7309), .Z(n7489)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5008_4_lut.INIT = "0xfffe";
    LUT4 i5203_3_lut (.A(n7696), .B(curr_red[12]), .C(n25_adj_916), .Z(n24_adj_923)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam i5203_3_lut.INIT = "0xcaca";
    LUT4 i1734_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[18]), 
         .Z(curr_blu_17__N_451[4])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1734_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1717_2_lut (.A(n147_adj_933[18]), .B(n1979), .Z(n2653)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1717_2_lut.INIT = "0x2222";
    LUT4 i5216_4_lut (.A(n16_adj_925), .B(n6_adj_814), .C(n19), .D(n7337), 
         .Z(n7697)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam i5216_4_lut.INIT = "0xaaac";
    LUT4 i1716_2_lut (.A(n147_adj_933[17]), .B(n1979), .Z(n2651)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1716_2_lut.INIT = "0x2222";
    LUT4 i4828_4_lut (.A(n17_adj_898), .B(n15_adj_899), .C(n13_adj_901), 
         .D(n7315), .Z(n7309)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i4828_4_lut.INIT = "0xaaab";
    LUT4 i1744_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[28]), 
         .Z(curr_blu_17__N_451[14])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1744_2_lut_3_lut.INIT = "0x1010";
    LUT4 i5144_4_lut (.A(n28_adj_926), .B(n7611), .C(n31_adj_914), .D(n7557), 
         .Z(n7625)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam i5144_4_lut.INIT = "0xaaac";
    LUT4 i1737_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[21]), 
         .Z(curr_blu_17__N_451[7])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1737_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1712_2_lut (.A(n147_adj_933[13]), .B(n1979), .Z(n2643)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1712_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_59_i16_3_lut (.A(n8_adj_810), .B(curr_blu[9]), 
         .C(n19), .Z(n16_adj_925)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i16_3_lut.INIT = "0xcaca";
    LUT4 i1561_2_lut (.A(n147[3]), .B(n1979), .Z(n2569)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1561_2_lut.INIT = "0x2222";
    LUT4 i5201_3_lut (.A(n7681), .B(curr_blu[16]), .C(pwm_count[16]), 
         .Z(n7682)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam i5201_3_lut.INIT = "0x8e8e";
    LUT4 i1715_2_lut (.A(n147_adj_933[16]), .B(n1979), .Z(n2649)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1715_2_lut.INIT = "0x2222";
    LUT4 i5072_4_lut (.A(n29), .B(n27), .C(n25_adj_916), .D(n7539), 
         .Z(n7553)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i5072_4_lut.INIT = "0xeeef";
    LUT4 i1580_2_lut_2_lut (.A(RGB_color_s[0]), .B(RGB_color_s[1]), .Z(grn_set[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(184[3],199[10])"*/
    defparam i1580_2_lut_2_lut.INIT = "0x2222";
    LUT4 i5200_4_lut (.A(n7672), .B(n7637), .C(n31), .D(n7453), .Z(n7681)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam i5200_4_lut.INIT = "0xccca";
    LUT4 i1756_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[24]), 
         .Z(curr_grn_17__N_433[10])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1756_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1714_2_lut (.A(n147_adj_933[15]), .B(n1979), .Z(n2647)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1714_2_lut.INIT = "0x2222";
    LUT4 i1713_2_lut (.A(n147_adj_933[14]), .B(n1979), .Z(n2645)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1713_2_lut.INIT = "0x2222";
    LUT4 select_18_Select_4_i2_2_lut (.A(red_peak[30]), .B(BreatheRamp_s[2]), 
         .Z(red_intensity_step_31__N_165[4])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(270[7],321[14])"*/
    defparam select_18_Select_4_i2_2_lut.INIT = "0x8888";
    LUT4 i5215_3_lut (.A(n7695), .B(curr_red[11]), .C(n23_adj_804), .Z(n7696)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam i5215_3_lut.INIT = "0xcaca";
    LUT4 pwm_count_17__I_0_i10_3_lut_3_lut (.A(curr_grn[5]), .B(curr_grn[6]), 
         .C(pwm_count[6]), .Z(n10_adj_922)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i10_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 LessThan_61_i9_2_lut (.A(off_max_cnt[27]), .B(steady_count[4]), 
         .Z(n9_adj_917)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(344[26],344[53])"*/
    defparam LessThan_61_i9_2_lut.INIT = "0x6666";
    LUT4 i1731_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[15]), 
         .Z(curr_blu_17__N_451[1])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1731_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1601_2_lut (.A(n147[7]), .B(n1979), .Z(n2615)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1601_2_lut.INIT = "0x2222";
    LUT4 i4834_4_lut (.A(n11_adj_927), .B(n9_adj_928), .C(n7_adj_895), 
         .D(n5_adj_929), .Z(n7315)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i4834_4_lut.INIT = "0xaaab";
    LUT4 i5214_4_lut (.A(n16_adj_930), .B(n7615), .C(n21_adj_805), .D(n7537), 
         .Z(n7695)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam i5214_4_lut.INIT = "0xcacc";
    LUT4 i5117_3_lut (.A(n7636), .B(curr_blu[15]), .C(n31), .Z(n28_adj_931)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam i5117_3_lut.INIT = "0xcaca";
    LUT4 pwm_count_17__I_0_i5_2_lut (.A(pwm_count[2]), .B(curr_grn[2]), 
         .Z(n5_adj_929)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i5_2_lut.INIT = "0x6666";
    LUT4 i5114_3_lut (.A(n10_adj_809), .B(curr_blu[7]), .C(n15_adj_787), 
         .Z(n7595)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam i5114_3_lut.INIT = "0xcaca";
    LUT4 i5191_3_lut (.A(n7680), .B(curr_blu[12]), .C(n25), .Z(n7672)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam i5191_3_lut.INIT = "0xcaca";
    LUT4 i4978_4_lut (.A(n29_adj_790), .B(n27_adj_789), .C(n15_adj_787), 
         .D(n7341), .Z(n7459)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i4978_4_lut.INIT = "0xeeef";
    LUT4 pwm_count_17__I_0_58_i16_3_lut (.A(n8), .B(curr_red[9]), .C(n19_adj_806), 
         .Z(n16_adj_930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam pwm_count_17__I_0_58_i16_3_lut.INIT = "0xcaca";
    LUT4 i1729_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[14]), 
         .Z(curr_grn_17__N_433[0])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1729_2_lut_3_lut.INIT = "0x1010";
    LUT4 i5156_4_lut (.A(n28_adj_931), .B(n7595), .C(n31), .D(n7459), 
         .Z(n7637)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam i5156_4_lut.INIT = "0xaaac";
    LUT4 i5134_3_lut (.A(n6_adj_788), .B(curr_red[10]), .C(n21_adj_805), 
         .Z(n7615)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam i5134_3_lut.INIT = "0xcaca";
    LUT4 i5155_3_lut (.A(n7635), .B(curr_blu[14]), .C(n29_adj_790), .Z(n7636)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam i5155_3_lut.INIT = "0xcaca";
    LUT4 pwm_count_17__I_0_i8_3_lut_3_lut (.A(curr_grn[4]), .B(curr_grn[8]), 
         .C(pwm_count[8]), .Z(n8_adj_921)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i8_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i5154_3_lut (.A(n4_adj_932), .B(curr_blu[13]), .C(n27_adj_789), 
         .Z(n7635)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam i5154_3_lut.INIT = "0xcaca";
    LUT4 i1733_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[17]), 
         .Z(curr_blu_17__N_451[3])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(342[9],384[16])"*/
    defparam i1733_2_lut_3_lut.INIT = "0x1010";
    LUT4 i5056_3_lut (.A(n19_adj_806), .B(n17_adj_815), .C(n9_adj_855), 
         .Z(n7537)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5056_3_lut.INIT = "0xfefe";
    LUT4 i4826_2_lut_4_lut (.A(pwm_count[8]), .B(curr_grn[8]), .C(pwm_count[4]), 
         .D(curr_grn[4]), .Z(n7307)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;
    defparam i4826_2_lut_4_lut.INIT = "0x6ff6";
    LUT4 pwm_count_17__I_0_59_i4_4_lut (.A(curr_blu[0]), .B(curr_blu[1]), 
         .C(pwm_count[1]), .D(pwm_count[0]), .Z(n4_adj_932)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   /* synthesis lineinfo="@1(488[10],488[30])"*/
    defparam pwm_count_17__I_0_59_i4_4_lut.INIT = "0x0c8e";
    LUT4 i4962_4_lut (.A(n23), .B(n21), .C(n19), .D(n7339), .Z(n7443)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4962_4_lut.INIT = "0xfffe";
    LUT4 pwm_count_17__I_0_i11_2_lut (.A(pwm_count[5]), .B(curr_grn[5]), 
         .Z(n11_adj_927)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i11_2_lut.INIT = "0x6666";
    LUT4 i5133_3_lut (.A(n7624), .B(curr_red[15]), .C(n31_adj_914), .Z(n28_adj_926)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam i5133_3_lut.INIT = "0xcaca";
    LUT4 pwm_count_17__I_0_i9_2_lut (.A(pwm_count[4]), .B(curr_grn[4]), 
         .Z(n9_adj_928)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(483[10],483[30])"*/
    defparam pwm_count_17__I_0_i9_2_lut.INIT = "0x6666";
    LUT4 i5130_3_lut (.A(n10), .B(curr_red[7]), .C(n15), .Z(n7611)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(478[10],478[30])"*/
    defparam i5130_3_lut.INIT = "0xcaca";
    LUT4 select_19_Select_3_i2_2_lut (.A(grn_peak[29]), .B(BreatheRamp_s[2]), 
         .Z(grn_intensity_step_31__N_197[3])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(270[7],321[14])"*/
    defparam select_19_Select_3_i2_2_lut.INIT = "0x8888";
    LUT4 i4972_4_lut (.A(n29_adj_790), .B(n27_adj_789), .C(n25), .D(n7443), 
         .Z(n7453)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i4972_4_lut.INIT = "0xeeef";
    LUT4 i1600_2_lut (.A(n147[8]), .B(n1979), .Z(n2613)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@1(328[5],386[8])"*/
    defparam i1600_2_lut.INIT = "0x2222";
    pll_24M __ (.GND_net(GND_net), .clk12M_c(clk12M_c), .n2(n2), .OUTGLOBAL(clk24M));   /* synthesis lineinfo="@1(151[9],151[100])"*/
    FD1P3XZ red_peak_i1 (.D(red_set[1]), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(red_peak[30])) /* synthesis LSE_LINE_FILE_ID=74, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;   /* synthesis lineinfo="@1(204[5],212[8])"*/
    defparam red_peak_i1.REGSET = "RESET";
    defparam red_peak_i1.SRMODE = "ASYNC";
    VHI i1 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module pll_24M
//

module pll_24M (GND_net, clk12M_c, n2, OUTGLOBAL);
    input GND_net;
    input clk12M_c;
    input n2;
    output OUTGLOBAL;
    
    wire clk12M_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@2(83[2],83[8])"*/
    wire OUTGLOBAL /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@1(103[6],103[12])"*/
    
    \pll_24M_ipgen_lscc_pll(DIVR="0",DIVF="63",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="12.000000")  lscc_pll_inst (.GND_net(GND_net), 
            .clk12M_c(clk12M_c), .n2(n2), .OUTGLOBAL(OUTGLOBAL));   /* synthesis lineinfo="@0(17[41],17[316])"*/
    
endmodule

//
// Verilog Description of module \pll_24M_ipgen_lscc_pll(DIVR="0",DIVF="63",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="12.000000") 
//

module \pll_24M_ipgen_lscc_pll(DIVR="0",DIVF="63",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="12.000000")  (GND_net, 
            clk12M_c, n2, OUTGLOBAL);
    input GND_net;
    input clk12M_c;
    input n2;
    output OUTGLOBAL;
    
    wire clk12M_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@2(83[2],83[8])"*/
    wire OUTGLOBAL /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@1(103[6],103[12])"*/
    
    wire feedback_w;
    
    PLL_B u_PLL_B (.REFERENCECLK(clk12M_c), .FEEDBACK(feedback_w), .DYNAMICDELAY7(GND_net), 
          .DYNAMICDELAY6(GND_net), .DYNAMICDELAY5(GND_net), .DYNAMICDELAY4(GND_net), 
          .DYNAMICDELAY3(GND_net), .DYNAMICDELAY2(GND_net), .DYNAMICDELAY1(GND_net), 
          .DYNAMICDELAY0(GND_net), .BYPASS(GND_net), .RESET_N(n2), .SCLK(GND_net), 
          .SDI(GND_net), .LATCH(GND_net), .INTFBOUT(feedback_w), .OUTGLOBAL(OUTGLOBAL)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=56, LSE_LCOL=41, LSE_RCOL=316, LSE_LLINE=17, LSE_RLINE=17 */ ;   /* synthesis lineinfo="@0(17[41],17[316])"*/
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
