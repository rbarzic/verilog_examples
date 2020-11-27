// Verilog netlist produced by program LSE :  version Radiant Software (64-bit) 1.1.0.165.1
// Netlist written on Tue Apr 30 14:14:22 2019
// Source file index table: 
// Object locations will have the form @<file_index>(<first_ line>[<left_column>],<last_line>[<right_column>])
// file 0 "/home/ronan/perso/github/verilog_examples/ledtest_ice40up5k/impl_1/pll_24M/rtl/pll_24M.v"
// file 1 "/home/ronan/perso/github/verilog_examples/ledtest_ice40up5k/source/impl_1/LED_control.v"
// file 2 "/home/ronan/perso/github/verilog_examples/ledtest_ice40up5k/source/impl_1/rgb_led_top.vhd"
// file 3 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/CCU2_B.v"
// file 4 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3BZ.v"
// file 5 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3DZ.v"
// file 6 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3IZ.v"
// file 7 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3JZ.v"
// file 8 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/HSOSC.v"
// file 9 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/HSOSC1P8V.v"
// file 10 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/IB.v"
// file 11 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/IFD1P3AZ.v"
// file 12 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/LSOSC.v"
// file 13 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/LSOSC1P8V.v"
// file 14 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/OB.v"
// file 15 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/OBZ_B.v"
// file 16 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/OFD1P3AZ.v"
// file 17 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/PDP4K.v"
// file 18 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/RGB.v"
// file 19 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/RGB1P8V.v"
// file 20 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/SP256K.v"
// file 21 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/legacy.v"

//
// Verilog Description of module led_top
//

module led_top (clk12M, rst, color_sel, RGB_Blink_En, REDn, BLUn, 
            GRNn, RED, BLU, GRN);
    input clk12M;
    input rst;
    input [1:0]color_sel;
    input RGB_Blink_En;
    output REDn /* synthesis black_box_pad_pin=1 */ ;
    output BLUn /* synthesis black_box_pad_pin=1 */ ;
    output GRNn /* synthesis black_box_pad_pin=1 */ ;
    output RED;
    output BLU;
    output GRN;
    
    wire clk12M_c /* synthesis is_clock=1 */ ;
    
    wire rst_c, color_sel_c_1, color_sel_c_0, RED_c, BLU_c, GRN_c, 
        BlinkRate_s_3__N_9_c_0, n8579, n8580, n8578, GND_net, VCC_net;
    
    VLO i1 (.Z(GND_net));
    IB clk12M_pad (.I(clk12M), .O(clk12M_c));
    IB rst_pad (.I(rst), .O(rst_c));
    RGB_CORE U2_RGB_CORE_inst (.CURREN(VCC_net), .RGBLEDEN(VCC_net), .RGB0PWM(BLU_c), 
            .RGB1PWM(GRN_c), .RGB2PWM(RED_c), .RGB2(n8578), .RGB1(n8579), 
            .RGB0(n8580)) /* synthesis syn_instantiated=1 */ ;
    defparam U2_RGB_CORE_inst.CURRENT_MODE = "0";
    defparam U2_RGB_CORE_inst.RGB0_CURRENT = "0b111111";
    defparam U2_RGB_CORE_inst.RGB1_CURRENT = "0b111111";
    defparam U2_RGB_CORE_inst.RGB2_CURRENT = "0b111111";
    defparam U2_RGB_CORE_inst.FABRIC_TRIME = "DISABLE";
    OB GRN_pad (.I(GRN_c), .O(GRN));
    OB BLU_pad (.I(BLU_c), .O(BLU));
    OB RED_pad (.I(RED_c), .O(RED));
    IB \color_sel_pad[1]  (.I(color_sel[1]), .O(color_sel_c_1));
    IB \color_sel_pad[0]  (.I(color_sel[0]), .O(color_sel_c_0));
    IB \BlinkRate_s_3__N_9_pad[0]  (.I(RGB_Blink_En), .O(BlinkRate_s_3__N_9_c_0));
    \LED_control(BreatheRamp=4'b0110)  U1 (.rst_c(rst_c), .color_sel_c_0(color_sel_c_0), 
            .BlinkRate_s_3__N_9_c_0(BlinkRate_s_3__N_9_c_0), .RED_c(RED_c), 
            .GRN_c(GRN_c), .BLU_c(BLU_c), .GND_net(GND_net), .color_sel_c_1(color_sel_c_1), 
            .clk12M_c(clk12M_c));
    OB_RGB U2_rgb0Pad (.T_N(VCC_net), .I(n8580), .B(BLUn)) /* synthesis syn_instantiated=1 */ ;
    OB_RGB U2_rgb1Pad (.T_N(VCC_net), .I(n8579), .B(GRNn)) /* synthesis syn_instantiated=1 */ ;
    OB_RGB U2_rgb2Pad (.T_N(VCC_net), .I(n8578), .B(REDn)) /* synthesis syn_instantiated=1 */ ;
    VHI i5345 (.Z(VCC_net));
    
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
    
    wire clk24M /* synthesis is_clock=1 */ ;
    wire clk12M_c /* synthesis is_clock=1 */ ;
    wire [1:0]red_set;
    wire [31:0]red_peak;
    wire [27:0]n147;
    
    wire n1979, n2511;
    wire [27:0]off_max_cnt;
    wire [27:0]steady_count;
    
    wire n6585, n6600;
    wire [32:0]n172;
    
    wire n3235;
    wire [31:0]blu_accum_31__N_383;
    wire [1:0]grn_set;
    wire [31:0]grn_peak;
    wire [17:0]curr_blu_17__N_451;
    wire [17:0]curr_blu;
    
    wire VCC_net;
    wire [3:0]RGB_color_s;
    wire [1:0]blu_set;
    wire [31:0]blu_peak;
    wire [3:0]BlinkRate_s;
    wire [3:0]n202;
    wire [31:0]red_accum;
    wire [17:0]curr_red_17__N_415;
    wire [3:0]BreatheRamp_s;
    wire [27:0]ramp_max_cnt;
    
    wire n6464, n6506;
    wire [31:0]grn_intensity_step_31__N_197;
    wire [31:0]grn_intensity_step;
    wire [31:0]red_intensity_step_31__N_165;
    wire [31:0]red_intensity_step;
    
    wire n20, n22, n7736, n6498, n50;
    wire [31:0]blu_intensity_step_31__N_229;
    wire [31:0]blu_intensity_step;
    wire [32:0]n172_adj_976;
    wire [31:0]red_accum_31__N_319;
    wire [17:0]curr_grn_17__N_433;
    wire [17:0]curr_grn;
    
    wire n22_adj_788, n5878, n2477, n1975;
    wire [27:0]ramp_count;
    wire [17:0]curr_red;
    
    wire red_pwm_N_784, grn_pwm_N_786, blu_pwm_N_785;
    wire [3:0]n212;
    
    wire n2467, n4451, n8378;
    wire [31:0]blu_accum;
    
    wire n626, n4453, n2475, n6496, n6569, n24;
    wire [27:0]n147_adj_977;
    
    wire n2473, n2509, n4314, n8465;
    wire [17:0]pwm_count;
    
    wire n4316;
    wire [17:0]n77;
    
    wire n4322, n8477, n4324, n4395, n8426;
    wire [31:0]grn_accum;
    
    wire n4397;
    wire [32:0]n172_adj_978;
    
    wire n4351, n8360, n4353, n8, n44, n7745, n6589, n46, n2499, 
        n2497, n4393, n8423, n2471, n7824, n4449, n8375, n2495, 
        n2493, n2469, n4312, n8462, n4310, n8459, n3465;
    wire [17:0]n97;
    wire [31:0]grn_accum_31__N_351;
    
    wire n5850, n2559, n1977, n4349, n8357, n6578, n6587, n4447, 
        n8372, n4445, n8369, n4391, n8420, n4389, n8417, n4347, 
        n8354, n4345, n8351, n4343, n8348, n4341, n8345, n4387, 
        n8414, n1781, n8411, n1782, n4320, n8474, n4318, n8471, 
        n8366, n1846, n18, n4384, n8573, n2557, n4442, n8528, 
        n2555, n4382, n8570, n2553, n4440, n8525, n2551, n2549, 
        n4438, n8522, n2547, n2465, n4380, n8567, n5916, n10, 
        n6, n23, n6484, n2507, n4436, n8519, n2489, n7816, n6477, 
        n2503, n4339, n8342, n4378, n8564, n2479, n2485, n4434, 
        n8516, n2501, n2483, n27, n32, n28, n4432, n8513, n2545, 
        n4430, n8510, n2463, n2461, n2459, n2457, n2455, n2453, 
        n2505, n2451, n2449, n2481, n4, n29, n26, n2543, n2513, 
        n2487, n2523, n4428, n8507, n4426, n8504, n2521, n2519, 
        n2517, n2541, n2515, n2539, n2491, n2531, n2537, n2529, 
        n2535, n2527, n2533, n2525, n4424, n8501, n4422, n8498, 
        n10_adj_818, n4420, n8495, n4418, n8492, n4416, n8489, 
        n8486, n1911, n6562, n6574, n6671, n4413, n8453, n4376, 
        n8561, n6550, n7753, n6532, n42, n4411, n8450, n4374, 
        n8558, n4372, n8555, n4337, n8339, n6516, n6504, n8_adj_835, 
        n4409, n8447, n4370, n8552, n4335, n8336, n8468, n14, 
        n4471, n8408, n6715, n4469, n8405, n4467, n8402, n4368, 
        n8549, n4465, n8399, n4463, n8396, n4407, n8444, n4405, 
        n8441, n4366, n8546, n18_adj_859, n4461, n8393, n4364, 
        n8543, n4403, n8438, n4459, n8390, n4362, n8540, n4360, 
        n8537, n4333, n8333, n4331, n8330, n4358, n8534, n4457, 
        n8387, n4455, n8384, n4401, n8435, n4399, n8432, n8531, 
        n4355, n8576, n4329, n8327, n8429, n8324, n4326, n8483, 
        n8480, n8456, n8363, n6501, n6729, n6487, n5894, n6_adj_883, 
        n8381, n6475, n221, n899, n611, n6472, n224, n803, n12, 
        n6462, n10_adj_884, n227, n6751, n8_adj_885, n6456, n7, 
        n7795, n24_adj_886, n34, n35, n6834, n52, n16, n22_adj_887, 
        n25, n6807, n48, n12_adj_888, n30, n10_adj_889, n34_adj_890, 
        n7750, n6547, n36, n44_adj_891, n24_adj_892, n34_adj_893, 
        n35_adj_894, n6754, n16_adj_895, n22_adj_896, n25_adj_897, 
        n6727, n28_adj_898, n32_adj_899, n6760, n28_adj_900, n32_adj_901, 
        n6840, n33, n31, n29_adj_902, n6739, n19, n20_adj_903, 
        n23_adj_904, n21, n4_adj_905, n26_adj_906, n30_adj_907, n6744, 
        n15, n27_adj_908, n6718, n17, n6705, n6536, n6545, n13, 
        n11, n6694, n33_adj_909, n31_adj_910, n29_adj_911, n6819, 
        n9, n7_adj_912, n8_adj_913, n19_adj_914, n38, n40, n6442, 
        n6_adj_915, n20_adj_916, n6809, n23_adj_917, n21_adj_918, 
        n6795, n7831, n32_adj_919, n4_adj_920, n26_adj_921, n6831, 
        n5886, n30_adj_922, n30_adj_923, n6824, n6518, n6527, n24_adj_924, 
        n34_adj_925, n35_adj_926, n6674, n16_adj_927, n22_adj_928, 
        n25_adj_929, n6647, n28_adj_930, n32_adj_931, n6680, n33_adj_932, 
        n31_adj_933, n29_adj_934, n6659, n19_adj_935, n6_adj_936, 
        n20_adj_937, n6649, n23_adj_938, n21_adj_939, n6635, n4_adj_940, 
        n26_adj_941, n30_adj_942, n6664, n12_adj_943, n15_adj_944, 
        n14_adj_945, n27_adj_946, n6638, n17_adj_947, n6625, n13_adj_948, 
        n11_adj_949, n6614, n9_adj_950, n7_adj_951, n18_adj_952, n10_adj_953, 
        n12_adj_954, n15_adj_955, n14_adj_956, n2220, n18_adj_957, 
        n26_adj_958, n27_adj_959, n6798, n17_adj_960, n6785, n22_adj_961, 
        n13_adj_962, n11_adj_963, n6774, n2, n9_adj_964, n7_adj_965, 
        n14_adj_966, n18_adj_967, n6449, n40_adj_968, n54, n7707, 
        n6592, n28_adj_969, n38_adj_970, n6543, n5855, n48_adj_971, 
        n52_adj_972, n1034, n4_adj_973, n26_adj_974, n7704, n6513, 
        n50_adj_975, n5874, n5877, n5879;
    
    FD1P3XZ grn_peak_i1 (.D(grn_set[0]), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(grn_peak[29])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_peak_i1.REGSET = "RESET";
    defparam grn_peak_i1.SRMODE = "ASYNC";
    LUT4 i1590_2_lut (.A(n147[3]), .B(n1979), .Z(n2511)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1590_2_lut.INIT = "0x2222";
    LUT4 i4205_4_lut (.A(off_max_cnt[27]), .B(steady_count[25]), .C(steady_count[26]), 
         .D(n6585), .Z(n6600)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B (C)+!B (C+(D))))) */ ;
    defparam i4205_4_lut.INIT = "0x24a5";
    LUT4 i1576_2_lut (.A(n172[19]), .B(n3235), .Z(blu_accum_31__N_383[18])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1576_2_lut.INIT = "0x8888";
    FD1P3XZ curr_blu_i17 (.D(curr_blu_17__N_451[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[17])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i17.REGSET = "RESET";
    defparam curr_blu_i17.SRMODE = "ASYNC";
    FD1P3XZ RGB_color_s_i1 (.D(color_sel_c_0), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(RGB_color_s[0])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam RGB_color_s_i1.REGSET = "RESET";
    defparam RGB_color_s_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i16 (.D(curr_blu_17__N_451[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[16])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i16.REGSET = "RESET";
    defparam curr_blu_i16.SRMODE = "ASYNC";
    FD1P3XZ blu_peak_i1 (.D(blu_set[1]), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(blu_peak[30])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_peak_i1.REGSET = "RESET";
    defparam blu_peak_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i15 (.D(curr_blu_17__N_451[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[15])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i15.REGSET = "RESET";
    defparam curr_blu_i15.SRMODE = "ASYNC";
    FD1P3XZ off_max_cnt_i1 (.D(BlinkRate_s[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(off_max_cnt[24])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam off_max_cnt_i1.REGSET = "SET";
    defparam off_max_cnt_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i14 (.D(curr_blu_17__N_451[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[14])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i14.REGSET = "RESET";
    defparam curr_blu_i14.SRMODE = "ASYNC";
    LUT4 i1654_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[19]), 
         .Z(curr_red_17__N_415[5])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1654_2_lut_3_lut.INIT = "0x1010";
    FD1P3XZ ramp_max_cnt_i1 (.D(BreatheRamp_s[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(ramp_max_cnt[25])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_max_cnt_i1.REGSET = "RESET";
    defparam ramp_max_cnt_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i13 (.D(curr_blu_17__N_451[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[13])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i13.REGSET = "RESET";
    defparam curr_blu_i13.SRMODE = "ASYNC";
    LUT4 i4111_4_lut (.A(off_max_cnt[24]), .B(steady_count[7]), .C(steady_count[13]), 
         .D(n6464), .Z(n6506)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B (C)+!B (C+(D))))) */ ;
    defparam i4111_4_lut.INIT = "0x24a5";
    FD1P3XZ curr_blu_i12 (.D(curr_blu_17__N_451[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[12])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i12.REGSET = "RESET";
    defparam curr_blu_i12.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i11 (.D(curr_blu_17__N_451[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[11])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i11.REGSET = "RESET";
    defparam curr_blu_i11.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i10 (.D(curr_blu_17__N_451[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[10])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i10.REGSET = "RESET";
    defparam curr_blu_i10.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i9 (.D(curr_blu_17__N_451[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[9])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i9.REGSET = "RESET";
    defparam curr_blu_i9.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i8 (.D(curr_blu_17__N_451[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[8])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i8.REGSET = "RESET";
    defparam curr_blu_i8.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i7 (.D(curr_blu_17__N_451[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[7])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i7.REGSET = "RESET";
    defparam curr_blu_i7.SRMODE = "ASYNC";
    FD1P3XZ grn_intensity_step_i2 (.D(grn_intensity_step_31__N_197[4]), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(grn_intensity_step[4])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_intensity_step_i2.REGSET = "RESET";
    defparam grn_intensity_step_i2.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i6 (.D(curr_blu_17__N_451[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[6])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i6.REGSET = "RESET";
    defparam curr_blu_i6.SRMODE = "ASYNC";
    FD1P3XZ red_intensity_step_i1 (.D(red_intensity_step_31__N_165[4]), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(red_intensity_step[4])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_intensity_step_i1.REGSET = "RESET";
    defparam red_intensity_step_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i5 (.D(curr_blu_17__N_451[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[5])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i5.REGSET = "RESET";
    defparam curr_blu_i5.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i4 (.D(curr_blu_17__N_451[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[4])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i4.REGSET = "RESET";
    defparam curr_blu_i4.SRMODE = "ASYNC";
    FD1P3XZ grn_intensity_step_i1 (.D(grn_intensity_step_31__N_197[3]), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(grn_intensity_step[3])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_intensity_step_i1.REGSET = "RESET";
    defparam grn_intensity_step_i1.SRMODE = "ASYNC";
    FD1P3XZ blu_intensity_step_i1 (.D(blu_intensity_step_31__N_229[4]), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(blu_intensity_step[4])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_intensity_step_i1.REGSET = "RESET";
    defparam blu_intensity_step_i1.SRMODE = "ASYNC";
    LUT4 LessThan_61_i50_4_lut (.A(n20), .B(n22), .C(n7736), .D(n6498), 
         .Z(n50)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam LessThan_61_i50_4_lut.INIT = "0xccca";
    FD1P3XZ curr_blu_i3 (.D(curr_blu_17__N_451[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[3])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i3.REGSET = "RESET";
    defparam curr_blu_i3.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i2 (.D(curr_blu_17__N_451[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[2])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i2.REGSET = "RESET";
    defparam curr_blu_i2.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i1 (.D(curr_blu_17__N_451[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[1])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i1.REGSET = "RESET";
    defparam curr_blu_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i17 (.D(curr_grn_17__N_433[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[17])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i17.REGSET = "RESET";
    defparam curr_grn_i17.SRMODE = "ASYNC";
    LUT4 i1543_2_lut (.A(n172_adj_976[17]), .B(n3235), .Z(red_accum_31__N_319[16])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1543_2_lut.INIT = "0x8888";
    FD1P3XZ curr_grn_i16 (.D(curr_grn_17__N_433[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[16])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i16.REGSET = "RESET";
    defparam curr_grn_i16.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i15 (.D(curr_grn_17__N_433[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[15])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i15.REGSET = "RESET";
    defparam curr_grn_i15.SRMODE = "ASYNC";
    LUT4 i1575_2_lut (.A(n172[18]), .B(n3235), .Z(blu_accum_31__N_383[17])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1575_2_lut.INIT = "0x8888";
    LUT4 i1548_2_lut (.A(n172_adj_976[22]), .B(n3235), .Z(red_accum_31__N_319[21])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1548_2_lut.INIT = "0x8888";
    FD1P3XZ ramp_count__i20 (.D(n2477), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[20])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i20.REGSET = "RESET";
    defparam ramp_count__i20.SRMODE = "ASYNC";
    LUT4 i1574_2_lut (.A(n172[17]), .B(n3235), .Z(blu_accum_31__N_383[16])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1574_2_lut.INIT = "0x8888";
    LUT4 i1_4_lut (.A(steady_count[13]), .B(n22_adj_788), .C(steady_count[12]), 
         .D(steady_count[11]), .Z(n5878)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut.INIT = "0xa080";
    FD1P3XZ curr_grn_i14 (.D(curr_grn_17__N_433[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[14])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i14.REGSET = "RESET";
    defparam curr_grn_i14.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i13 (.D(curr_grn_17__N_433[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[13])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i13.REGSET = "RESET";
    defparam curr_grn_i13.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i12 (.D(curr_grn_17__N_433[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[12])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i12.REGSET = "RESET";
    defparam curr_grn_i12.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i11 (.D(curr_grn_17__N_433[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[11])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i11.REGSET = "RESET";
    defparam curr_grn_i11.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i10 (.D(curr_grn_17__N_433[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[10])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i10.REGSET = "RESET";
    defparam curr_grn_i10.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i0 (.D(curr_red_17__N_415[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[0])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i0.REGSET = "RESET";
    defparam curr_red_i0.SRMODE = "ASYNC";
    LUT4 i1573_2_lut (.A(n172[16]), .B(n3235), .Z(blu_accum_31__N_383[15])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1573_2_lut.INIT = "0x8888";
    FD1P3XZ curr_grn_i0 (.D(curr_grn_17__N_433[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[0])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i0.REGSET = "RESET";
    defparam curr_grn_i0.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i9 (.D(curr_grn_17__N_433[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[9])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i9.REGSET = "RESET";
    defparam curr_grn_i9.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i8 (.D(curr_grn_17__N_433[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[8])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i8.REGSET = "RESET";
    defparam curr_grn_i8.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i0 (.D(curr_blu_17__N_451[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[0])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_blu_i0.REGSET = "RESET";
    defparam curr_blu_i0.SRMODE = "ASYNC";
    FD1P3XZ BreatheRamp_s_i1 (.D(BlinkRate_s_3__N_9_c_0), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(BreatheRamp_s[2])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam BreatheRamp_s_i1.REGSET = "RESET";
    defparam BreatheRamp_s_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i7 (.D(curr_grn_17__N_433[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[7])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i7.REGSET = "RESET";
    defparam curr_grn_i7.SRMODE = "ASYNC";
    FD1P3XZ red_pwm (.D(red_pwm_N_784), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(RED_c)) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_pwm.REGSET = "RESET";
    defparam red_pwm.SRMODE = "ASYNC";
    FD1P3XZ grn_pwm (.D(grn_pwm_N_786), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(GRN_c)) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_pwm.REGSET = "RESET";
    defparam grn_pwm.SRMODE = "ASYNC";
    FD1P3XZ blu_pwm (.D(blu_pwm_N_785), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(BLU_c)) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_pwm.REGSET = "RESET";
    defparam blu_pwm.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i6 (.D(curr_grn_17__N_433[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[6])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i6.REGSET = "RESET";
    defparam curr_grn_i6.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i5 (.D(curr_grn_17__N_433[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[5])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i5.REGSET = "RESET";
    defparam curr_grn_i5.SRMODE = "ASYNC";
    FD1P3XZ blink_state_FSM_i0 (.D(n212[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(n202[0]));
    defparam blink_state_FSM_i0.REGSET = "SET";
    defparam blink_state_FSM_i0.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i4 (.D(curr_grn_17__N_433[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[4])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i4.REGSET = "RESET";
    defparam curr_grn_i4.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i3 (.D(curr_grn_17__N_433[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[3])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i3.REGSET = "RESET";
    defparam curr_grn_i3.SRMODE = "ASYNC";
    LUT4 i1572_2_lut (.A(n172[15]), .B(n3235), .Z(blu_accum_31__N_383[14])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1572_2_lut.INIT = "0x8888";
    FD1P3XZ curr_grn_i2 (.D(curr_grn_17__N_433[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[2])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i2.REGSET = "RESET";
    defparam curr_grn_i2.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i1 (.D(curr_grn_17__N_433[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[1])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_grn_i1.REGSET = "RESET";
    defparam curr_grn_i1.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i25 (.D(n2467), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[25])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i25.REGSET = "RESET";
    defparam ramp_count__i25.SRMODE = "ASYNC";
    FD1P3XZ off_max_cnt_i2 (.D(GND_net), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(off_max_cnt[27])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam off_max_cnt_i2.REGSET = "SET";
    defparam off_max_cnt_i2.SRMODE = "ASYNC";
    LUT4 i1547_2_lut (.A(n172_adj_976[21]), .B(n3235), .Z(red_accum_31__N_319[20])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1547_2_lut.INIT = "0x8888";
    FD1P3XZ curr_red_i17 (.D(curr_red_17__N_415[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[17])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i17.REGSET = "RESET";
    defparam curr_red_i17.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i16 (.D(curr_red_17__N_415[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[16])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i16.REGSET = "RESET";
    defparam curr_red_i16.SRMODE = "ASYNC";
    FA2 add_2500_9 (.A0(GND_net), .B0(blu_accum[11]), .C0(n626), .D0(n4451), 
        .CI0(n4451), .A1(GND_net), .B1(blu_accum[12]), .C1(n626), .D1(n8378), 
        .CI1(n8378), .CO0(n8378), .CO1(n4453), .S0(n172[12]), .S1(n172[13]));
    defparam add_2500_9.INIT0 = "0xc33c";
    defparam add_2500_9.INIT1 = "0xc33c";
    FD1P3XZ curr_red_i15 (.D(curr_red_17__N_415[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[15])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i15.REGSET = "RESET";
    defparam curr_red_i15.SRMODE = "ASYNC";
    LUT4 i1571_2_lut (.A(n172[14]), .B(n3235), .Z(blu_accum_31__N_383[13])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1571_2_lut.INIT = "0x8888";
    FD1P3XZ curr_red_i14 (.D(curr_red_17__N_415[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[14])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i14.REGSET = "RESET";
    defparam curr_red_i14.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i13 (.D(curr_red_17__N_415[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[13])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i13.REGSET = "RESET";
    defparam curr_red_i13.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i12 (.D(curr_red_17__N_415[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[12])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i12.REGSET = "RESET";
    defparam curr_red_i12.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i11 (.D(curr_red_17__N_415[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[11])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i11.REGSET = "RESET";
    defparam curr_red_i11.SRMODE = "ASYNC";
    LUT4 i1570_2_lut (.A(n172[13]), .B(n3235), .Z(blu_accum_31__N_383[12])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1570_2_lut.INIT = "0x8888";
    FD1P3XZ curr_red_i10 (.D(curr_red_17__N_415[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[10])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i10.REGSET = "RESET";
    defparam curr_red_i10.SRMODE = "ASYNC";
    LUT4 i1569_2_lut (.A(n172[12]), .B(n3235), .Z(blu_accum_31__N_383[11])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1569_2_lut.INIT = "0x8888";
    LUT4 i1568_2_lut (.A(n172[11]), .B(n3235), .Z(blu_accum_31__N_383[10])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1568_2_lut.INIT = "0x8888";
    FD1P3XZ ramp_count__i21 (.D(n2475), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[21])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i21.REGSET = "RESET";
    defparam ramp_count__i21.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i9 (.D(curr_red_17__N_415[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[9])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i9.REGSET = "RESET";
    defparam curr_red_i9.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i8 (.D(curr_red_17__N_415[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[8])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i8.REGSET = "RESET";
    defparam curr_red_i8.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i7 (.D(curr_red_17__N_415[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[7])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i7.REGSET = "RESET";
    defparam curr_red_i7.SRMODE = "ASYNC";
    LUT4 i1567_2_lut (.A(n172[10]), .B(n3235), .Z(blu_accum_31__N_383[9])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1567_2_lut.INIT = "0x8888";
    FD1P3XZ curr_red_i6 (.D(curr_red_17__N_415[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[6])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i6.REGSET = "RESET";
    defparam curr_red_i6.SRMODE = "ASYNC";
    LUT4 i1566_2_lut (.A(n172[9]), .B(n3235), .Z(blu_accum_31__N_383[8])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1566_2_lut.INIT = "0x8888";
    LUT4 i4174_4_lut (.A(off_max_cnt[24]), .B(steady_count[21]), .C(steady_count[22]), 
         .D(n6496), .Z(n6569)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+(D))))) */ ;
    defparam i4174_4_lut.INIT = "0x0081";
    LUT4 LessThan_61_i24_4_lut (.A(steady_count[9]), .B(steady_count[22]), 
         .C(off_max_cnt[24]), .D(steady_count[21]), .Z(n24)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam LessThan_61_i24_4_lut.INIT = "0x8f0e";
    FD1P3XZ curr_red_i5 (.D(curr_red_17__N_415[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[5])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i5.REGSET = "RESET";
    defparam curr_red_i5.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i4 (.D(curr_red_17__N_415[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[4])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i4.REGSET = "RESET";
    defparam curr_red_i4.SRMODE = "ASYNC";
    LUT4 i1474_2_lut (.A(n147_adj_977[22]), .B(n1979), .Z(n2473)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1474_2_lut.INIT = "0x2222";
    FD1P3XZ curr_red_i3 (.D(curr_red_17__N_415[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[3])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i3.REGSET = "RESET";
    defparam curr_red_i3.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i2 (.D(curr_red_17__N_415[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[2])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i2.REGSET = "RESET";
    defparam curr_red_i2.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i1 (.D(curr_red_17__N_415[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[1])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam curr_red_i1.REGSET = "RESET";
    defparam curr_red_i1.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i31 (.D(blu_accum_31__N_383[31]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[31])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i31.REGSET = "RESET";
    defparam blu_accum_i31.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i30 (.D(blu_accum_31__N_383[30]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[30])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i30.REGSET = "RESET";
    defparam blu_accum_i30.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i29 (.D(blu_accum_31__N_383[29]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[29])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i29.REGSET = "RESET";
    defparam blu_accum_i29.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i28 (.D(blu_accum_31__N_383[28]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[28])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i28.REGSET = "RESET";
    defparam blu_accum_i28.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i27 (.D(blu_accum_31__N_383[27]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[27])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i27.REGSET = "RESET";
    defparam blu_accum_i27.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i26 (.D(blu_accum_31__N_383[26]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[26])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i26.REGSET = "RESET";
    defparam blu_accum_i26.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i25 (.D(blu_accum_31__N_383[25]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[25])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i25.REGSET = "RESET";
    defparam blu_accum_i25.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i24 (.D(blu_accum_31__N_383[24]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[24])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i24.REGSET = "RESET";
    defparam blu_accum_i24.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i23 (.D(blu_accum_31__N_383[23]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[23])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i23.REGSET = "RESET";
    defparam blu_accum_i23.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i22 (.D(blu_accum_31__N_383[22]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[22])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i22.REGSET = "RESET";
    defparam blu_accum_i22.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i21 (.D(blu_accum_31__N_383[21]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[21])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i21.REGSET = "RESET";
    defparam blu_accum_i21.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i20 (.D(blu_accum_31__N_383[20]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[20])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i20.REGSET = "RESET";
    defparam blu_accum_i20.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i19 (.D(blu_accum_31__N_383[19]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[19])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i19.REGSET = "RESET";
    defparam blu_accum_i19.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i18 (.D(blu_accum_31__N_383[18]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[18])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i18.REGSET = "RESET";
    defparam blu_accum_i18.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i17 (.D(blu_accum_31__N_383[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[17])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i17.REGSET = "RESET";
    defparam blu_accum_i17.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i16 (.D(blu_accum_31__N_383[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[16])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i16.REGSET = "RESET";
    defparam blu_accum_i16.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i15 (.D(blu_accum_31__N_383[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[15])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i15.REGSET = "RESET";
    defparam blu_accum_i15.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i14 (.D(blu_accum_31__N_383[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[14])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i14.REGSET = "RESET";
    defparam blu_accum_i14.SRMODE = "ASYNC";
    LUT4 i4069_3_lut (.A(off_max_cnt[24]), .B(steady_count[5]), .C(steady_count[6]), 
         .Z(n6464)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam i4069_3_lut.INIT = "0x8181";
    LUT4 i1589_2_lut (.A(n147[2]), .B(n1979), .Z(n2509)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1589_2_lut.INIT = "0x2222";
    FA2 pwm_count_301_add_4_7 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[5]), 
        .D0(n4314), .CI0(n4314), .A1(GND_net), .B1(GND_net), .C1(pwm_count[6]), 
        .D1(n8465), .CI1(n8465), .CO0(n8465), .CO1(n4316), .S0(n77[5]), 
        .S1(n77[6]));
    defparam pwm_count_301_add_4_7.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_7.INIT1 = "0xc33c";
    FD1P3XZ blu_accum_i13 (.D(blu_accum_31__N_383[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[13])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i13.REGSET = "RESET";
    defparam blu_accum_i13.SRMODE = "ASYNC";
    LUT4 i1565_2_lut (.A(n172[8]), .B(n3235), .Z(blu_accum_31__N_383[7])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1565_2_lut.INIT = "0x8888";
    FA2 pwm_count_301_add_4_15 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[13]), 
        .D0(n4322), .CI0(n4322), .A1(GND_net), .B1(GND_net), .C1(pwm_count[14]), 
        .D1(n8477), .CI1(n8477), .CO0(n8477), .CO1(n4324), .S0(n77[13]), 
        .S1(n77[14]));
    defparam pwm_count_301_add_4_15.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_15.INIT1 = "0xc33c";
    FD1P3XZ blu_accum_i12 (.D(blu_accum_31__N_383[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[12])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i12.REGSET = "RESET";
    defparam blu_accum_i12.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i11 (.D(blu_accum_31__N_383[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[11])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i11.REGSET = "RESET";
    defparam blu_accum_i11.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i10 (.D(blu_accum_31__N_383[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[10])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i10.REGSET = "RESET";
    defparam blu_accum_i10.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i9 (.D(blu_accum_31__N_383[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[9])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i9.REGSET = "RESET";
    defparam blu_accum_i9.SRMODE = "ASYNC";
    FA2 add_2499_11 (.A0(GND_net), .B0(grn_accum[12]), .C0(n626), .D0(n4395), 
        .CI0(n4395), .A1(GND_net), .B1(grn_accum[13]), .C1(n626), .D1(n8426), 
        .CI1(n8426), .CO0(n8426), .CO1(n4397), .S0(n172_adj_978[13]), 
        .S1(n172_adj_978[14]));
    defparam add_2499_11.INIT0 = "0xc33c";
    defparam add_2499_11.INIT1 = "0xc33c";
    FD1P3XZ blu_accum_i8 (.D(blu_accum_31__N_383[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[8])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i8.REGSET = "RESET";
    defparam blu_accum_i8.SRMODE = "ASYNC";
    FA2 add_129_add_5_25 (.A0(GND_net), .B0(ramp_count[23]), .C0(GND_net), 
        .D0(n4351), .CI0(n4351), .A1(GND_net), .B1(ramp_count[24]), 
        .C1(GND_net), .D1(n8360), .CI1(n8360), .CO0(n8360), .CO1(n4353), 
        .S0(n147_adj_977[23]), .S1(n147_adj_977[24]));
    defparam add_129_add_5_25.INIT0 = "0xc33c";
    defparam add_129_add_5_25.INIT1 = "0xc33c";
    LUT4 LessThan_61_i46_4_lut (.A(n8), .B(n44), .C(n7745), .D(n6589), 
         .Z(n46)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam LessThan_61_i46_4_lut.INIT = "0xcacc";
    FD1P3XZ ramp_count__i22 (.D(n2473), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[22])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i22.REGSET = "RESET";
    defparam ramp_count__i22.SRMODE = "ASYNC";
    LUT4 i1546_2_lut (.A(n172_adj_976[20]), .B(n3235), .Z(red_accum_31__N_319[19])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1546_2_lut.INIT = "0x8888";
    FD1P3XZ blu_accum_i7 (.D(blu_accum_31__N_383[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[7])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i7.REGSET = "RESET";
    defparam blu_accum_i7.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i6 (.D(blu_accum_31__N_383[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[6])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i6.REGSET = "RESET";
    defparam blu_accum_i6.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i9 (.D(n2499), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[9])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i9.REGSET = "RESET";
    defparam ramp_count__i9.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i5 (.D(blu_accum_31__N_383[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[5])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i5.REGSET = "RESET";
    defparam blu_accum_i5.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i10 (.D(n2497), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[10])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i10.REGSET = "RESET";
    defparam ramp_count__i10.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i23 (.D(n2471), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[23])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i23.REGSET = "RESET";
    defparam ramp_count__i23.SRMODE = "ASYNC";
    FA2 add_2499_9 (.A0(GND_net), .B0(grn_accum[10]), .C0(n626), .D0(n4393), 
        .CI0(n4393), .A1(GND_net), .B1(grn_accum[11]), .C1(n626), .D1(n8423), 
        .CI1(n8423), .CO0(n8423), .CO1(n4395), .S0(n172_adj_978[11]), 
        .S1(n172_adj_978[12]));
    defparam add_2499_9.INIT0 = "0xc33c";
    defparam add_2499_9.INIT1 = "0xc33c";
    FD1P3XZ blu_accum_i4 (.D(blu_accum_31__N_383[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[4])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam blu_accum_i4.REGSET = "RESET";
    defparam blu_accum_i4.SRMODE = "ASYNC";
    LUT4 i1564_2_lut (.A(n172[7]), .B(n3235), .Z(blu_accum_31__N_383[6])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1564_2_lut.INIT = "0x8888";
    LUT4 i4190_4_lut (.A(off_max_cnt[24]), .B(n7824), .C(steady_count[24]), 
         .D(n6569), .Z(n6585)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+!(D))))) */ ;
    defparam i4190_4_lut.INIT = "0x2100";
    LUT4 i1487_2_lut (.A(n147_adj_977[9]), .B(n1979), .Z(n2499)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1487_2_lut.INIT = "0x2222";
    FD1P3XZ ramp_count__i11 (.D(n2495), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[11])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i11.REGSET = "RESET";
    defparam ramp_count__i11.SRMODE = "ASYNC";
    FA2 add_2500_7 (.A0(GND_net), .B0(blu_accum[9]), .C0(n626), .D0(n4449), 
        .CI0(n4449), .A1(GND_net), .B1(blu_accum[10]), .C1(n626), .D1(n8375), 
        .CI1(n8375), .CO0(n8375), .CO1(n4451), .S0(n172[10]), .S1(n172[11]));
    defparam add_2500_7.INIT0 = "0xc33c";
    defparam add_2500_7.INIT1 = "0xc33c";
    LUT4 i1563_2_lut (.A(n172[6]), .B(n3235), .Z(blu_accum_31__N_383[5])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1563_2_lut.INIT = "0x8888";
    FD1P3XZ ramp_count__i12 (.D(n2493), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[12])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i12.REGSET = "RESET";
    defparam ramp_count__i12.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i24 (.D(n2469), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[24])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i24.REGSET = "RESET";
    defparam ramp_count__i24.SRMODE = "ASYNC";
    FD1P3XZ grn_peak_i2 (.D(RGB_color_s[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_peak[30])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_peak_i2.REGSET = "RESET";
    defparam grn_peak_i2.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i31 (.D(grn_accum_31__N_351[31]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[31])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i31.REGSET = "RESET";
    defparam grn_accum_i31.SRMODE = "ASYNC";
    FA2 pwm_count_301_add_4_5 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[3]), 
        .D0(n4312), .CI0(n4312), .A1(GND_net), .B1(GND_net), .C1(pwm_count[4]), 
        .D1(n8462), .CI1(n8462), .CO0(n8462), .CO1(n4314), .S0(n77[3]), 
        .S1(n77[4]));
    defparam pwm_count_301_add_4_5.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_5.INIT1 = "0xc33c";
    FA2 pwm_count_301_add_4_3 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[1]), 
        .D0(n4310), .CI0(n4310), .A1(GND_net), .B1(GND_net), .C1(pwm_count[2]), 
        .D1(n8459), .CI1(n8459), .CO0(n8459), .CO1(n4312), .S0(n77[1]), 
        .S1(n77[2]));
    defparam pwm_count_301_add_4_3.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_3.INIT1 = "0xc33c";
    LUT4 i1464_2_lut (.A(n77[8]), .B(n3465), .Z(n97[8])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1464_2_lut.INIT = "0x2222";
    FD1P3XZ pwm_count_301__i17 (.D(n97[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[17])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i17.REGSET = "RESET";
    defparam pwm_count_301__i17.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i30 (.D(grn_accum_31__N_351[30]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[30])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i30.REGSET = "RESET";
    defparam grn_accum_i30.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i4 (.D(n97[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[4])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i4.REGSET = "RESET";
    defparam pwm_count_301__i4.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i29 (.D(grn_accum_31__N_351[29]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[29])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i29.REGSET = "RESET";
    defparam grn_accum_i29.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i16 (.D(n97[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[16])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i16.REGSET = "RESET";
    defparam pwm_count_301__i16.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i28 (.D(grn_accum_31__N_351[28]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[28])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i28.REGSET = "RESET";
    defparam grn_accum_i28.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i27 (.D(grn_accum_31__N_351[27]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[27])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i27.REGSET = "RESET";
    defparam grn_accum_i27.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i15 (.D(n97[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[15])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i15.REGSET = "RESET";
    defparam pwm_count_301__i15.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i26 (.D(grn_accum_31__N_351[26]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[26])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i26.REGSET = "RESET";
    defparam grn_accum_i26.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i25 (.D(grn_accum_31__N_351[25]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[25])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i25.REGSET = "RESET";
    defparam grn_accum_i25.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i24 (.D(grn_accum_31__N_351[24]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[24])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i24.REGSET = "RESET";
    defparam grn_accum_i24.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i23 (.D(grn_accum_31__N_351[23]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[23])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i23.REGSET = "RESET";
    defparam grn_accum_i23.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i22 (.D(grn_accum_31__N_351[22]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[22])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i22.REGSET = "RESET";
    defparam grn_accum_i22.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i21 (.D(grn_accum_31__N_351[21]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[21])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i21.REGSET = "RESET";
    defparam grn_accum_i21.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i3 (.D(n97[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[3])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i3.REGSET = "RESET";
    defparam pwm_count_301__i3.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i20 (.D(grn_accum_31__N_351[20]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[20])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i20.REGSET = "RESET";
    defparam grn_accum_i20.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i14 (.D(n97[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[14])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i14.REGSET = "RESET";
    defparam pwm_count_301__i14.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i19 (.D(grn_accum_31__N_351[19]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[19])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i19.REGSET = "RESET";
    defparam grn_accum_i19.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i18 (.D(grn_accum_31__N_351[18]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[18])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i18.REGSET = "RESET";
    defparam grn_accum_i18.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i17 (.D(grn_accum_31__N_351[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[17])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i17.REGSET = "RESET";
    defparam grn_accum_i17.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i16 (.D(grn_accum_31__N_351[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[16])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i16.REGSET = "RESET";
    defparam grn_accum_i16.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i15 (.D(grn_accum_31__N_351[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[15])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i15.REGSET = "RESET";
    defparam grn_accum_i15.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i14 (.D(grn_accum_31__N_351[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[14])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i14.REGSET = "RESET";
    defparam grn_accum_i14.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i13 (.D(n97[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[13])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i13.REGSET = "RESET";
    defparam pwm_count_301__i13.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i13 (.D(grn_accum_31__N_351[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[13])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i13.REGSET = "RESET";
    defparam grn_accum_i13.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i12 (.D(grn_accum_31__N_351[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[12])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i12.REGSET = "RESET";
    defparam grn_accum_i12.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i11 (.D(grn_accum_31__N_351[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[11])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i11.REGSET = "RESET";
    defparam grn_accum_i11.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i10 (.D(grn_accum_31__N_351[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[10])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i10.REGSET = "RESET";
    defparam grn_accum_i10.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i9 (.D(grn_accum_31__N_351[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[9])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i9.REGSET = "RESET";
    defparam grn_accum_i9.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i8 (.D(grn_accum_31__N_351[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[8])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i8.REGSET = "RESET";
    defparam grn_accum_i8.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i7 (.D(grn_accum_31__N_351[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[7])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i7.REGSET = "RESET";
    defparam grn_accum_i7.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i12 (.D(n97[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[12])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i12.REGSET = "RESET";
    defparam pwm_count_301__i12.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i6 (.D(grn_accum_31__N_351[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[6])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i6.REGSET = "RESET";
    defparam grn_accum_i6.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i5 (.D(grn_accum_31__N_351[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[5])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i5.REGSET = "RESET";
    defparam grn_accum_i5.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i4 (.D(grn_accum_31__N_351[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[4])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i4.REGSET = "RESET";
    defparam grn_accum_i4.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i3 (.D(grn_accum_31__N_351[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[3])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam grn_accum_i3.REGSET = "RESET";
    defparam grn_accum_i3.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i11 (.D(n97[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[11])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i11.REGSET = "RESET";
    defparam pwm_count_301__i11.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i31 (.D(red_accum_31__N_319[31]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[31])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i31.REGSET = "RESET";
    defparam red_accum_i31.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i30 (.D(red_accum_31__N_319[30]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[30])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i30.REGSET = "RESET";
    defparam red_accum_i30.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i29 (.D(red_accum_31__N_319[29]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[29])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i29.REGSET = "RESET";
    defparam red_accum_i29.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i28 (.D(red_accum_31__N_319[28]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[28])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i28.REGSET = "RESET";
    defparam red_accum_i28.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i2 (.D(n97[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[2])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i2.REGSET = "RESET";
    defparam pwm_count_301__i2.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i27 (.D(red_accum_31__N_319[27]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[27])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i27.REGSET = "RESET";
    defparam red_accum_i27.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i10 (.D(n97[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[10])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i10.REGSET = "RESET";
    defparam pwm_count_301__i10.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i26 (.D(red_accum_31__N_319[26]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[26])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i26.REGSET = "RESET";
    defparam red_accum_i26.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i25 (.D(red_accum_31__N_319[25]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[25])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i25.REGSET = "RESET";
    defparam red_accum_i25.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i24 (.D(red_accum_31__N_319[24]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[24])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i24.REGSET = "RESET";
    defparam red_accum_i24.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i9 (.D(n97[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[9])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i9.REGSET = "RESET";
    defparam pwm_count_301__i9.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i23 (.D(red_accum_31__N_319[23]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[23])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i23.REGSET = "RESET";
    defparam red_accum_i23.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i22 (.D(red_accum_31__N_319[22]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[22])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i22.REGSET = "RESET";
    defparam red_accum_i22.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i21 (.D(red_accum_31__N_319[21]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[21])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i21.REGSET = "RESET";
    defparam red_accum_i21.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i20 (.D(red_accum_31__N_319[20]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[20])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i20.REGSET = "RESET";
    defparam red_accum_i20.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i19 (.D(red_accum_31__N_319[19]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[19])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i19.REGSET = "RESET";
    defparam red_accum_i19.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i18 (.D(red_accum_31__N_319[18]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[18])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i18.REGSET = "RESET";
    defparam red_accum_i18.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i17 (.D(red_accum_31__N_319[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[17])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i17.REGSET = "RESET";
    defparam red_accum_i17.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i16 (.D(red_accum_31__N_319[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[16])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i16.REGSET = "RESET";
    defparam red_accum_i16.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i8 (.D(n97[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[8])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i8.REGSET = "RESET";
    defparam pwm_count_301__i8.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i15 (.D(red_accum_31__N_319[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[15])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i15.REGSET = "RESET";
    defparam red_accum_i15.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i14 (.D(red_accum_31__N_319[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[14])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i14.REGSET = "RESET";
    defparam red_accum_i14.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i13 (.D(red_accum_31__N_319[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[13])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i13.REGSET = "RESET";
    defparam red_accum_i13.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i12 (.D(red_accum_31__N_319[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[12])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i12.REGSET = "RESET";
    defparam red_accum_i12.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i11 (.D(red_accum_31__N_319[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[11])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i11.REGSET = "RESET";
    defparam red_accum_i11.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i10 (.D(red_accum_31__N_319[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[10])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i10.REGSET = "RESET";
    defparam red_accum_i10.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i9 (.D(red_accum_31__N_319[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[9])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i9.REGSET = "RESET";
    defparam red_accum_i9.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i8 (.D(red_accum_31__N_319[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[8])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i8.REGSET = "RESET";
    defparam red_accum_i8.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i7 (.D(red_accum_31__N_319[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[7])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i7.REGSET = "RESET";
    defparam red_accum_i7.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i6 (.D(red_accum_31__N_319[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[6])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i6.REGSET = "RESET";
    defparam red_accum_i6.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i1 (.D(n97[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[1])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i1.REGSET = "RESET";
    defparam pwm_count_301__i1.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i5 (.D(red_accum_31__N_319[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[5])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i5.REGSET = "RESET";
    defparam red_accum_i5.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i4 (.D(red_accum_31__N_319[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[4])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam red_accum_i4.REGSET = "RESET";
    defparam red_accum_i4.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i7 (.D(n97[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[7])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i7.REGSET = "RESET";
    defparam pwm_count_301__i7.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i6 (.D(n97[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[6])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i6.REGSET = "RESET";
    defparam pwm_count_301__i6.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i5 (.D(n97[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[5])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i5.REGSET = "RESET";
    defparam pwm_count_301__i5.SRMODE = "ASYNC";
    FD1P3XZ pwm_count_301__i0 (.D(n97[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(pwm_count[0])) /* synthesis syn_use_carry_chain=1 */ ;
    defparam pwm_count_301__i0.REGSET = "RESET";
    defparam pwm_count_301__i0.SRMODE = "ASYNC";
    FD1P3XZ blink_state_FSM_i1 (.D(n212[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(n202[1]));
    defparam blink_state_FSM_i1.REGSET = "RESET";
    defparam blink_state_FSM_i1.SRMODE = "ASYNC";
    FD1P3XZ blink_state_FSM_i2 (.D(n5850), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(n202[2]));
    defparam blink_state_FSM_i2.REGSET = "RESET";
    defparam blink_state_FSM_i2.SRMODE = "ASYNC";
    FD1P3XZ blink_state_FSM_i3 (.D(n212[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(n202[3]));
    defparam blink_state_FSM_i3.REGSET = "RESET";
    defparam blink_state_FSM_i3.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i27 (.D(n2559), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[27])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i27.REGSET = "RESET";
    defparam steady_count__i27.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i26 (.D(n2557), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[26])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i26.REGSET = "RESET";
    defparam steady_count__i26.SRMODE = "ASYNC";
    LUT4 i1486_2_lut (.A(n147_adj_977[10]), .B(n1979), .Z(n2497)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1486_2_lut.INIT = "0x2222";
    FA2 add_129_add_5_23 (.A0(GND_net), .B0(ramp_count[21]), .C0(GND_net), 
        .D0(n4349), .CI0(n4349), .A1(GND_net), .B1(ramp_count[22]), 
        .C1(GND_net), .D1(n8357), .CI1(n8357), .CO0(n8357), .CO1(n4351), 
        .S0(n147_adj_977[21]), .S1(n147_adj_977[22]));
    defparam add_129_add_5_23.INIT0 = "0xc33c";
    defparam add_129_add_5_23.INIT1 = "0xc33c";
    LUT4 i4192_4_lut (.A(off_max_cnt[24]), .B(n7824), .C(steady_count[24]), 
         .D(n6578), .Z(n6587)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;
    defparam i4192_4_lut.INIT = "0x0021";
    FA2 add_2500_5 (.A0(GND_net), .B0(blu_accum[7]), .C0(n626), .D0(n4447), 
        .CI0(n4447), .A1(GND_net), .B1(blu_accum[8]), .C1(n626), .D1(n8372), 
        .CI1(n8372), .CO0(n8372), .CO1(n4449), .S0(n172[8]), .S1(n172[9]));
    defparam add_2500_5.INIT0 = "0xc33c";
    defparam add_2500_5.INIT1 = "0xc33c";
    FA2 add_2500_3 (.A0(GND_net), .B0(blu_accum[5]), .C0(n626), .D0(n4445), 
        .CI0(n4445), .A1(GND_net), .B1(blu_accum[6]), .C1(n626), .D1(n8369), 
        .CI1(n8369), .CO0(n8369), .CO1(n4447), .S0(n172[6]), .S1(n172[7]));
    defparam add_2500_3.INIT0 = "0xc33c";
    defparam add_2500_3.INIT1 = "0xc33c";
    FA2 add_2499_7 (.A0(GND_net), .B0(grn_accum[8]), .C0(n626), .D0(n4391), 
        .CI0(n4391), .A1(GND_net), .B1(grn_accum[9]), .C1(n626), .D1(n8420), 
        .CI1(n8420), .CO0(n8420), .CO1(n4393), .S0(n172_adj_978[9]), 
        .S1(n172_adj_978[10]));
    defparam add_2499_7.INIT0 = "0xc33c";
    defparam add_2499_7.INIT1 = "0xc33c";
    FA2 add_2499_5 (.A0(GND_net), .B0(grn_accum[6]), .C0(n626), .D0(n4389), 
        .CI0(n4389), .A1(GND_net), .B1(grn_accum[7]), .C1(n626), .D1(n8417), 
        .CI1(n8417), .CO0(n8417), .CO1(n4391), .S0(n172_adj_978[7]), 
        .S1(n172_adj_978[8]));
    defparam add_2499_5.INIT0 = "0xc33c";
    defparam add_2499_5.INIT1 = "0xc33c";
    FA2 add_129_add_5_21 (.A0(GND_net), .B0(ramp_count[19]), .C0(GND_net), 
        .D0(n4347), .CI0(n4347), .A1(GND_net), .B1(ramp_count[20]), 
        .C1(GND_net), .D1(n8354), .CI1(n8354), .CO0(n8354), .CO1(n4349), 
        .S0(n147_adj_977[19]), .S1(n147_adj_977[20]));
    defparam add_129_add_5_21.INIT0 = "0xc33c";
    defparam add_129_add_5_21.INIT1 = "0xc33c";
    FA2 add_129_add_5_19 (.A0(GND_net), .B0(ramp_count[17]), .C0(GND_net), 
        .D0(n4345), .CI0(n4345), .A1(GND_net), .B1(ramp_count[18]), 
        .C1(GND_net), .D1(n8351), .CI1(n8351), .CO0(n8351), .CO1(n4347), 
        .S0(n147_adj_977[17]), .S1(n147_adj_977[18]));
    defparam add_129_add_5_19.INIT0 = "0xc33c";
    defparam add_129_add_5_19.INIT1 = "0xc33c";
    FA2 add_129_add_5_17 (.A0(GND_net), .B0(ramp_count[15]), .C0(GND_net), 
        .D0(n4343), .CI0(n4343), .A1(GND_net), .B1(ramp_count[16]), 
        .C1(GND_net), .D1(n8348), .CI1(n8348), .CO0(n8348), .CO1(n4345), 
        .S0(n147_adj_977[15]), .S1(n147_adj_977[16]));
    defparam add_129_add_5_17.INIT0 = "0xc33c";
    defparam add_129_add_5_17.INIT1 = "0xc33c";
    FA2 add_129_add_5_15 (.A0(GND_net), .B0(ramp_count[13]), .C0(GND_net), 
        .D0(n4341), .CI0(n4341), .A1(GND_net), .B1(ramp_count[14]), 
        .C1(GND_net), .D1(n8345), .CI1(n8345), .CO0(n8345), .CO1(n4343), 
        .S0(n147_adj_977[13]), .S1(n147_adj_977[14]));
    defparam add_129_add_5_15.INIT0 = "0xc33c";
    defparam add_129_add_5_15.INIT1 = "0xc33c";
    LUT4 i1473_2_lut (.A(n147_adj_977[23]), .B(n1979), .Z(n2471)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1473_2_lut.INIT = "0x2222";
    FA2 add_2499_3 (.A0(GND_net), .B0(grn_accum[4]), .C0(n1781), .D0(n4387), 
        .CI0(n4387), .A1(GND_net), .B1(grn_accum[5]), .C1(n626), .D1(n8414), 
        .CI1(n8414), .CO0(n8414), .CO1(n4389), .S0(n172_adj_978[5]), 
        .S1(n172_adj_978[6]));
    defparam add_2499_3.INIT0 = "0xc33c";
    defparam add_2499_3.INIT1 = "0xc33c";
    FA2 add_2499_1 (.A0(GND_net), .B0(n626), .C0(GND_net), .A1(GND_net), 
        .B1(grn_accum[3]), .C1(n1782), .D1(n8411), .CI1(n8411), .CO0(n8411), 
        .CO1(n4387), .S1(n172_adj_978[4]));
    defparam add_2499_1.INIT0 = "0xc33c";
    defparam add_2499_1.INIT1 = "0xc33c";
    FA2 pwm_count_301_add_4_13 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[11]), 
        .D0(n4320), .CI0(n4320), .A1(GND_net), .B1(GND_net), .C1(pwm_count[12]), 
        .D1(n8474), .CI1(n8474), .CO0(n8474), .CO1(n4322), .S0(n77[11]), 
        .S1(n77[12]));
    defparam pwm_count_301_add_4_13.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_13.INIT1 = "0xc33c";
    FA2 pwm_count_301_add_4_11 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[9]), 
        .D0(n4318), .CI0(n4318), .A1(GND_net), .B1(GND_net), .C1(pwm_count[10]), 
        .D1(n8471), .CI1(n8471), .CO0(n8471), .CO1(n4320), .S0(n77[9]), 
        .S1(n77[10]));
    defparam pwm_count_301_add_4_11.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_11.INIT1 = "0xc33c";
    FA2 add_2500_1 (.A0(GND_net), .B0(n626), .C0(GND_net), .A1(GND_net), 
        .B1(blu_accum[4]), .C1(n1846), .D1(n8366), .CI1(n8366), .CO0(n8366), 
        .CO1(n4445), .S1(n172[5]));
    defparam add_2500_1.INIT0 = "0xc33c";
    defparam add_2500_1.INIT1 = "0xc33c";
    LUT4 LessThan_61_i20_3_lut (.A(n18), .B(steady_count[12]), .C(off_max_cnt[24]), 
         .Z(n20)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i20_3_lut.INIT = "0x8e8e";
    FA2 add_128_add_5_29 (.A0(GND_net), .B0(steady_count[27]), .C0(GND_net), 
        .D0(n4384), .CI0(n4384), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n8573), .CI1(n8573), .CO0(n8573), .S0(n147[27]));
    defparam add_128_add_5_29.INIT0 = "0xc33c";
    defparam add_128_add_5_29.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i25 (.D(n2555), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[25])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i25.REGSET = "RESET";
    defparam steady_count__i25.SRMODE = "ASYNC";
    FA2 add_2501_29 (.A0(GND_net), .B0(red_accum[31]), .C0(n626), .D0(n4442), 
        .CI0(n4442), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(n8528), 
        .CI1(n8528), .CO0(n8528), .S0(n172_adj_976[32]));
    defparam add_2501_29.INIT0 = "0xc33c";
    defparam add_2501_29.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i24 (.D(n2553), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[24])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i24.REGSET = "RESET";
    defparam steady_count__i24.SRMODE = "ASYNC";
    FA2 add_128_add_5_27 (.A0(GND_net), .B0(steady_count[25]), .C0(GND_net), 
        .D0(n4382), .CI0(n4382), .A1(GND_net), .B1(steady_count[26]), 
        .C1(GND_net), .D1(n8570), .CI1(n8570), .CO0(n8570), .CO1(n4384), 
        .S0(n147[25]), .S1(n147[26]));
    defparam add_128_add_5_27.INIT0 = "0xc33c";
    defparam add_128_add_5_27.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i23 (.D(n2551), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[23])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i23.REGSET = "RESET";
    defparam steady_count__i23.SRMODE = "ASYNC";
    FA2 add_2501_27 (.A0(GND_net), .B0(red_accum[29]), .C0(n626), .D0(n4440), 
        .CI0(n4440), .A1(GND_net), .B1(red_accum[30]), .C1(n626), .D1(n8525), 
        .CI1(n8525), .CO0(n8525), .CO1(n4442), .S0(n172_adj_976[30]), 
        .S1(n172_adj_976[31]));
    defparam add_2501_27.INIT0 = "0xc33c";
    defparam add_2501_27.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i22 (.D(n2549), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[22])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i22.REGSET = "RESET";
    defparam steady_count__i22.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i21 (.D(n2547), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[21])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i21.REGSET = "RESET";
    defparam steady_count__i21.SRMODE = "ASYNC";
    FA2 add_2501_25 (.A0(GND_net), .B0(red_accum[27]), .C0(n626), .D0(n4438), 
        .CI0(n4438), .A1(GND_net), .B1(red_accum[28]), .C1(n626), .D1(n8522), 
        .CI1(n8522), .CO0(n8522), .CO1(n4440), .S0(n172_adj_976[28]), 
        .S1(n172_adj_976[29]));
    defparam add_2501_25.INIT0 = "0xc33c";
    defparam add_2501_25.INIT1 = "0xc33c";
    FD1P3XZ ramp_count__i26 (.D(n2465), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[26])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i26.REGSET = "RESET";
    defparam ramp_count__i26.SRMODE = "ASYNC";
    FD1P3XZ BlinkRate_s_i1 (.D(BlinkRate_s_3__N_9_c_0), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(BlinkRate_s[2])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam BlinkRate_s_i1.REGSET = "SET";
    defparam BlinkRate_s_i1.SRMODE = "ASYNC";
    FA2 add_128_add_5_25 (.A0(GND_net), .B0(steady_count[23]), .C0(GND_net), 
        .D0(n4380), .CI0(n4380), .A1(GND_net), .B1(steady_count[24]), 
        .C1(GND_net), .D1(n8567), .CI1(n8567), .CO0(n8567), .CO1(n4382), 
        .S0(n147[23]), .S1(n147[24]));
    defparam add_128_add_5_25.INIT0 = "0xc33c";
    defparam add_128_add_5_25.INIT1 = "0xc33c";
    LUT4 i1562_2_lut (.A(n172[5]), .B(n3235), .Z(blu_accum_31__N_383[4])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1562_2_lut.INIT = "0x8888";
    LUT4 i366_4_lut (.A(n5916), .B(steady_count[10]), .C(steady_count[9]), 
         .D(n10), .Z(n22_adj_788)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i366_4_lut.INIT = "0xc8c0";
    LUT4 i1545_2_lut (.A(n172_adj_976[19]), .B(n3235), .Z(red_accum_31__N_319[18])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1545_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i22_3_lut (.A(n6), .B(steady_count[26]), .C(off_max_cnt[27]), 
         .Z(n22)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i22_3_lut.INIT = "0x8e8e";
    LUT4 i4101_4_lut (.A(off_max_cnt[24]), .B(n23), .C(steady_count[12]), 
         .D(n6484), .Z(n6496)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+!(D))))) */ ;
    defparam i4101_4_lut.INIT = "0x2100";
    LUT4 i1485_2_lut (.A(n147_adj_977[11]), .B(n1979), .Z(n2495)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1485_2_lut.INIT = "0x2222";
    LUT4 i1484_2_lut (.A(n147_adj_977[12]), .B(n1979), .Z(n2493)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1484_2_lut.INIT = "0x2222";
    LUT4 LessThan_61_i53_rep_83_2_lut (.A(off_max_cnt[27]), .B(steady_count[26]), 
         .Z(n7736)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam LessThan_61_i53_rep_83_2_lut.INIT = "0x6666";
    LUT4 LessThan_61_i47_rep_171_2_lut (.A(off_max_cnt[27]), .B(steady_count[23]), 
         .Z(n7824)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam LessThan_61_i47_rep_171_2_lut.INIT = "0x6666";
    LUT4 i1472_2_lut (.A(n147_adj_977[24]), .B(n1979), .Z(n2469)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1472_2_lut.INIT = "0x2222";
    LUT4 i1653_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[18]), 
         .Z(curr_red_17__N_415[4])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1653_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1544_2_lut (.A(n172_adj_976[18]), .B(n3235), .Z(red_accum_31__N_319[17])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1544_2_lut.INIT = "0x8888";
    LUT4 i1527_2_lut (.A(n172_adj_978[32]), .B(n3235), .Z(grn_accum_31__N_351[31])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1527_2_lut.INIT = "0x8888";
    LUT4 i1493_2_lut (.A(n147[1]), .B(n1979), .Z(n2507)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1493_2_lut.INIT = "0x2222";
    FD1P3XZ ramp_count__i7 (.D(n2503), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[7])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i7.REGSET = "RESET";
    defparam ramp_count__i7.SRMODE = "ASYNC";
    FA2 add_2501_23 (.A0(GND_net), .B0(red_accum[25]), .C0(n626), .D0(n4436), 
        .CI0(n4436), .A1(GND_net), .B1(red_accum[26]), .C1(n626), .D1(n8519), 
        .CI1(n8519), .CO0(n8519), .CO1(n4438), .S0(n172_adj_976[26]), 
        .S1(n172_adj_976[27]));
    defparam add_2501_23.INIT0 = "0xc33c";
    defparam add_2501_23.INIT1 = "0xc33c";
    LUT4 i1482_2_lut (.A(n147_adj_977[14]), .B(n1979), .Z(n2489)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1482_2_lut.INIT = "0x2222";
    LUT4 i1542_2_lut (.A(n172_adj_976[16]), .B(n3235), .Z(red_accum_31__N_319[15])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1542_2_lut.INIT = "0x8888";
    LUT4 i1_4_lut_adj_2 (.A(steady_count[8]), .B(steady_count[6]), .C(steady_count[5]), 
         .D(steady_count[7]), .Z(n5916)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_2.INIT = "0x8000";
    LUT4 i4089_4_lut (.A(off_max_cnt[24]), .B(n7816), .C(steady_count[10]), 
         .D(n6477), .Z(n6484)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !(B (C)+!B (C+(D)))) */ ;
    defparam i4089_4_lut.INIT = "0x84a5";
    LUT4 i1432_2_lut (.A(n77[17]), .B(n3465), .Z(n97[17])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1432_2_lut.INIT = "0x2222";
    LUT4 i1541_2_lut (.A(n172_adj_976[15]), .B(n3235), .Z(red_accum_31__N_319[14])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1541_2_lut.INIT = "0x8888";
    FD1P3XZ ramp_count__i19 (.D(n2479), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[19])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i19.REGSET = "RESET";
    defparam ramp_count__i19.SRMODE = "ASYNC";
    FA2 add_129_add_5_13 (.A0(GND_net), .B0(ramp_count[11]), .C0(GND_net), 
        .D0(n4339), .CI0(n4339), .A1(GND_net), .B1(ramp_count[12]), 
        .C1(GND_net), .D1(n8342), .CI1(n8342), .CO0(n8342), .CO1(n4341), 
        .S0(n147_adj_977[11]), .S1(n147_adj_977[12]));
    defparam add_129_add_5_13.INIT0 = "0xc33c";
    defparam add_129_add_5_13.INIT1 = "0xc33c";
    FA2 add_128_add_5_23 (.A0(GND_net), .B0(steady_count[21]), .C0(GND_net), 
        .D0(n4378), .CI0(n4378), .A1(GND_net), .B1(steady_count[22]), 
        .C1(GND_net), .D1(n8564), .CI1(n8564), .CO0(n8564), .CO1(n4380), 
        .S0(n147[21]), .S1(n147[22]));
    defparam add_128_add_5_23.INIT0 = "0xc33c";
    defparam add_128_add_5_23.INIT1 = "0xc33c";
    FD1P3XZ ramp_count__i16 (.D(n2485), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[16])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i16.REGSET = "RESET";
    defparam ramp_count__i16.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i8 (.D(n2501), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[8])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i8.REGSET = "RESET";
    defparam ramp_count__i8.SRMODE = "ASYNC";
    FA2 add_2501_21 (.A0(GND_net), .B0(red_accum[23]), .C0(n626), .D0(n4434), 
        .CI0(n4434), .A1(GND_net), .B1(red_accum[24]), .C1(n626), .D1(n8516), 
        .CI1(n8516), .CO0(n8516), .CO1(n4436), .S0(n172_adj_976[24]), 
        .S1(n172_adj_976[25]));
    defparam add_2501_21.INIT0 = "0xc33c";
    defparam add_2501_21.INIT1 = "0xc33c";
    FD1P3XZ ramp_count__i17 (.D(n2483), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[17])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i17.REGSET = "RESET";
    defparam ramp_count__i17.SRMODE = "ASYNC";
    FD1P3XZ RGB_color_s_i2 (.D(color_sel_c_1), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(RGB_color_s[1])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam RGB_color_s_i2.REGSET = "RESET";
    defparam RGB_color_s_i2.SRMODE = "ASYNC";
    LUT4 i1670_4_lut (.A(n27), .B(pwm_count[17]), .C(n32), .D(n28), 
         .Z(n3465)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1670_4_lut.INIT = "0xeccc";
    FD1P3XZ steady_count__i20 (.D(n2545), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[20])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i20.REGSET = "RESET";
    defparam steady_count__i20.SRMODE = "ASYNC";
    LUT4 i10_4_lut (.A(pwm_count[15]), .B(pwm_count[16]), .C(pwm_count[14]), 
         .D(pwm_count[8]), .Z(n27)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.INIT = "0x8000";
    FA2 add_2501_19 (.A0(GND_net), .B0(red_accum[21]), .C0(n626), .D0(n4432), 
        .CI0(n4432), .A1(GND_net), .B1(red_accum[22]), .C1(n626), .D1(n8513), 
        .CI1(n8513), .CO0(n8513), .CO1(n4434), .S0(n172_adj_976[22]), 
        .S1(n172_adj_976[23]));
    defparam add_2501_19.INIT0 = "0xc33c";
    defparam add_2501_19.INIT1 = "0xc33c";
    FD1P3XZ ramp_count__i27 (.D(n2463), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[27])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i27.REGSET = "RESET";
    defparam ramp_count__i27.SRMODE = "ASYNC";
    FA2 add_2501_17 (.A0(GND_net), .B0(red_accum[19]), .C0(n626), .D0(n4430), 
        .CI0(n4430), .A1(GND_net), .B1(red_accum[20]), .C1(n626), .D1(n8510), 
        .CI1(n8510), .CO0(n8510), .CO1(n4432), .S0(n172_adj_976[20]), 
        .S1(n172_adj_976[21]));
    defparam add_2501_17.INIT0 = "0xc33c";
    defparam add_2501_17.INIT1 = "0xc33c";
    FD1P3XZ ramp_count__i5 (.D(n2461), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[5])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i5.REGSET = "RESET";
    defparam ramp_count__i5.SRMODE = "ASYNC";
    LUT4 i4103_4_lut (.A(off_max_cnt[24]), .B(n23), .C(steady_count[12]), 
         .D(steady_count[10]), .Z(n6498)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+(D))))) */ ;
    defparam i4103_4_lut.INIT = "0x2001";
    FD1P3XZ ramp_count__i4 (.D(n2459), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[4])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i4.REGSET = "RESET";
    defparam ramp_count__i4.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i3 (.D(n2457), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[3])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i3.REGSET = "RESET";
    defparam ramp_count__i3.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i0 (.D(n2455), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[0])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i0.REGSET = "RESET";
    defparam steady_count__i0.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i2 (.D(n2453), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[2])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i2.REGSET = "RESET";
    defparam ramp_count__i2.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i1 (.D(n2451), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[1])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i1.REGSET = "RESET";
    defparam ramp_count__i1.SRMODE = "ASYNC";
    LUT4 i1490_2_lut (.A(n147_adj_977[6]), .B(n1979), .Z(n2505)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1490_2_lut.INIT = "0x2222";
    FD1P3XZ ramp_count__i0 (.D(n2449), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[0])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i0.REGSET = "RESET";
    defparam ramp_count__i0.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i18 (.D(n2481), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[18])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i18.REGSET = "RESET";
    defparam ramp_count__i18.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i4 (.D(n2513), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[4])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i4.REGSET = "RESET";
    defparam steady_count__i4.SRMODE = "ASYNC";
    LUT4 i347_4_lut (.A(steady_count[3]), .B(steady_count[4]), .C(n4), 
         .D(steady_count[2]), .Z(n10)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i347_4_lut.INIT = "0xeccc";
    LUT4 LessThan_61_i18_3_lut (.A(steady_count[10]), .B(steady_count[11]), 
         .C(off_max_cnt[27]), .Z(n18)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i18_3_lut.INIT = "0x8e8e";
    LUT4 i1540_2_lut (.A(n172_adj_976[14]), .B(n3235), .Z(red_accum_31__N_319[13])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1540_2_lut.INIT = "0x8888";
    LUT4 i15_4_lut (.A(n29), .B(pwm_count[9]), .C(n26), .D(pwm_count[2]), 
         .Z(n32)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15_4_lut.INIT = "0x8000";
    LUT4 i1539_2_lut (.A(n172_adj_976[13]), .B(n3235), .Z(red_accum_31__N_319[12])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1539_2_lut.INIT = "0x8888";
    LUT4 i346_2_lut (.A(steady_count[0]), .B(steady_count[1]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i346_2_lut.INIT = "0xeeee";
    LUT4 i1606_2_lut (.A(n147[19]), .B(n1979), .Z(n2543)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1606_2_lut.INIT = "0x2222";
    LUT4 i1538_2_lut (.A(n172_adj_976[12]), .B(n3235), .Z(red_accum_31__N_319[11])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1538_2_lut.INIT = "0x8888";
    FD1P3XZ steady_count__i3 (.D(n2511), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[3])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i3.REGSET = "RESET";
    defparam steady_count__i3.SRMODE = "ASYNC";
    LUT4 i1537_2_lut (.A(n172_adj_976[11]), .B(n3235), .Z(red_accum_31__N_319[10])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1537_2_lut.INIT = "0x8888";
    FD1P3XZ steady_count__i2 (.D(n2509), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[2])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i2.REGSET = "RESET";
    defparam steady_count__i2.SRMODE = "ASYNC";
    LUT4 i1481_2_lut (.A(n147_adj_977[15]), .B(n1979), .Z(n2487)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1481_2_lut.INIT = "0x2222";
    FD1P3XZ steady_count__i1 (.D(n2507), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[1])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i1.REGSET = "RESET";
    defparam steady_count__i1.SRMODE = "ASYNC";
    LUT4 LessThan_61_i6_3_lut (.A(steady_count[2]), .B(steady_count[3]), 
         .C(off_max_cnt[24]), .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i6_3_lut.INIT = "0x8e8e";
    LUT4 i1596_2_lut (.A(n147[9]), .B(n1979), .Z(n2523)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1596_2_lut.INIT = "0x2222";
    FD1P3XZ ramp_count__i14 (.D(n2489), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[14])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i14.REGSET = "RESET";
    defparam ramp_count__i14.SRMODE = "ASYNC";
    LUT4 i4082_4_lut (.A(off_max_cnt[24]), .B(off_max_cnt[27]), .C(steady_count[8]), 
         .D(steady_count[4]), .Z(n6477)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D)))) */ ;
    defparam i4082_4_lut.INIT = "0x8421";
    FA2 add_2501_15 (.A0(GND_net), .B0(red_accum[17]), .C0(n626), .D0(n4428), 
        .CI0(n4428), .A1(GND_net), .B1(red_accum[18]), .C1(n626), .D1(n8507), 
        .CI1(n8507), .CO0(n8507), .CO1(n4430), .S0(n172_adj_976[18]), 
        .S1(n172_adj_976[19]));
    defparam add_2501_15.INIT0 = "0xc33c";
    defparam add_2501_15.INIT1 = "0xc33c";
    FD1P3XZ ramp_count__i6 (.D(n2505), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[6])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i6.REGSET = "RESET";
    defparam ramp_count__i6.SRMODE = "ASYNC";
    FA2 add_2501_13 (.A0(GND_net), .B0(red_accum[15]), .C0(n626), .D0(n4426), 
        .CI0(n4426), .A1(GND_net), .B1(red_accum[16]), .C1(n626), .D1(n8504), 
        .CI1(n8504), .CO0(n8504), .CO1(n4428), .S0(n172_adj_976[16]), 
        .S1(n172_adj_976[17]));
    defparam add_2501_13.INIT0 = "0xc33c";
    defparam add_2501_13.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i19 (.D(n2543), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[19])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i19.REGSET = "RESET";
    defparam steady_count__i19.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i15 (.D(n2487), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[15])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i15.REGSET = "RESET";
    defparam ramp_count__i15.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i9 (.D(n2523), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[9])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i9.REGSET = "RESET";
    defparam steady_count__i9.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i8 (.D(n2521), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[8])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i8.REGSET = "RESET";
    defparam steady_count__i8.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i7 (.D(n2519), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[7])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i7.REGSET = "RESET";
    defparam steady_count__i7.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i6 (.D(n2517), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[6])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i6.REGSET = "RESET";
    defparam steady_count__i6.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i18 (.D(n2541), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[18])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i18.REGSET = "RESET";
    defparam steady_count__i18.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i5 (.D(n2515), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[5])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i5.REGSET = "RESET";
    defparam steady_count__i5.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i17 (.D(n2539), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[17])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i17.REGSET = "RESET";
    defparam steady_count__i17.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i13 (.D(n2491), .SP(n1975), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[13])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam ramp_count__i13.REGSET = "RESET";
    defparam ramp_count__i13.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i13 (.D(n2531), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[13])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i13.REGSET = "RESET";
    defparam steady_count__i13.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i16 (.D(n2537), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[16])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i16.REGSET = "RESET";
    defparam steady_count__i16.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i12 (.D(n2529), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[12])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i12.REGSET = "RESET";
    defparam steady_count__i12.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i15 (.D(n2535), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[15])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i15.REGSET = "RESET";
    defparam steady_count__i15.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i11 (.D(n2527), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[11])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i11.REGSET = "RESET";
    defparam steady_count__i11.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i14 (.D(n2533), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[14])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i14.REGSET = "RESET";
    defparam steady_count__i14.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i10 (.D(n2525), .SP(n1977), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[10])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
    defparam steady_count__i10.REGSET = "RESET";
    defparam steady_count__i10.SRMODE = "ASYNC";
    LUT4 LessThan_61_i8_3_lut (.A(steady_count[4]), .B(steady_count[8]), 
         .C(off_max_cnt[24]), .Z(n8)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i8_3_lut.INIT = "0x8e8e";
    LUT4 i11_4_lut (.A(pwm_count[6]), .B(pwm_count[0]), .C(pwm_count[5]), 
         .D(pwm_count[10]), .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11_4_lut.INIT = "0x8000";
    LUT4 i1595_2_lut (.A(n147[8]), .B(n1979), .Z(n2521)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1595_2_lut.INIT = "0x2222";
    FA2 add_2501_11 (.A0(GND_net), .B0(red_accum[13]), .C0(n626), .D0(n4424), 
        .CI0(n4424), .A1(GND_net), .B1(red_accum[14]), .C1(n626), .D1(n8501), 
        .CI1(n8501), .CO0(n8501), .CO1(n4426), .S0(n172_adj_976[14]), 
        .S1(n172_adj_976[15]));
    defparam add_2501_11.INIT0 = "0xc33c";
    defparam add_2501_11.INIT1 = "0xc33c";
    FA2 add_2501_9 (.A0(GND_net), .B0(red_accum[11]), .C0(n626), .D0(n4422), 
        .CI0(n4422), .A1(GND_net), .B1(red_accum[12]), .C1(n626), .D1(n8498), 
        .CI1(n8498), .CO0(n8498), .CO1(n4424), .S0(n172_adj_976[12]), 
        .S1(n172_adj_976[13]));
    defparam add_2501_9.INIT0 = "0xc33c";
    defparam add_2501_9.INIT1 = "0xc33c";
    LUT4 pwm_count_17__I_0_59_i10_3_lut_3_lut (.A(curr_blu[5]), .B(curr_blu[6]), 
         .C(pwm_count[6]), .Z(n10_adj_818)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_59_i10_3_lut_3_lut.INIT = "0x8e8e";
    FA2 add_2501_7 (.A0(GND_net), .B0(red_accum[9]), .C0(n626), .D0(n4420), 
        .CI0(n4420), .A1(GND_net), .B1(red_accum[10]), .C1(n626), .D1(n8495), 
        .CI1(n8495), .CO0(n8495), .CO1(n4422), .S0(n172_adj_976[10]), 
        .S1(n172_adj_976[11]));
    defparam add_2501_7.INIT0 = "0xc33c";
    defparam add_2501_7.INIT1 = "0xc33c";
    FA2 add_2501_5 (.A0(GND_net), .B0(red_accum[7]), .C0(n626), .D0(n4418), 
        .CI0(n4418), .A1(GND_net), .B1(red_accum[8]), .C1(n626), .D1(n8492), 
        .CI1(n8492), .CO0(n8492), .CO1(n4420), .S0(n172_adj_976[8]), 
        .S1(n172_adj_976[9]));
    defparam add_2501_5.INIT0 = "0xc33c";
    defparam add_2501_5.INIT1 = "0xc33c";
    FA2 add_2501_3 (.A0(GND_net), .B0(red_accum[5]), .C0(n626), .D0(n4416), 
        .CI0(n4416), .A1(GND_net), .B1(red_accum[6]), .C1(n626), .D1(n8489), 
        .CI1(n8489), .CO0(n8489), .CO1(n4418), .S0(n172_adj_976[6]), 
        .S1(n172_adj_976[7]));
    defparam add_2501_3.INIT0 = "0xc33c";
    defparam add_2501_3.INIT1 = "0xc33c";
    FA2 add_2501_1 (.A0(GND_net), .B0(n626), .C0(GND_net), .A1(GND_net), 
        .B1(red_accum[4]), .C1(n1911), .D1(n8486), .CI1(n8486), .CO0(n8486), 
        .CO1(n4416), .S1(n172_adj_976[5]));
    defparam add_2501_1.INIT0 = "0xc33c";
    defparam add_2501_1.INIT1 = "0xc33c";
    LUT4 i4179_4_lut (.A(off_max_cnt[24]), .B(n7824), .C(steady_count[24]), 
         .D(n6562), .Z(n6574)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+!(D))))) */ ;
    defparam i4179_4_lut.INIT = "0x2100";
    LUT4 i12_4_lut (.A(pwm_count[12]), .B(pwm_count[11]), .C(pwm_count[3]), 
         .D(pwm_count[4]), .Z(n29)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.INIT = "0x8000";
    LUT4 i1536_2_lut (.A(n172_adj_976[10]), .B(n3235), .Z(red_accum_31__N_319[9])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1536_2_lut.INIT = "0x8888";
    LUT4 i4276_2_lut_4_lut (.A(pwm_count[14]), .B(curr_blu[14]), .C(pwm_count[13]), 
         .D(curr_blu[13]), .Z(n6671)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;
    defparam i4276_2_lut_4_lut.INIT = "0x9009";
    FA2 add_2499_29 (.A0(GND_net), .B0(grn_accum[30]), .C0(n626), .D0(n4413), 
        .CI0(n4413), .A1(GND_net), .B1(grn_accum[31]), .C1(n626), .D1(n8453), 
        .CI1(n8453), .CO0(n8453), .S0(n172_adj_978[31]), .S1(n172_adj_978[32]));
    defparam add_2499_29.INIT0 = "0xc33c";
    defparam add_2499_29.INIT1 = "0xc33c";
    FA2 add_128_add_5_21 (.A0(GND_net), .B0(steady_count[19]), .C0(GND_net), 
        .D0(n4376), .CI0(n4376), .A1(GND_net), .B1(steady_count[20]), 
        .C1(GND_net), .D1(n8561), .CI1(n8561), .CO0(n8561), .CO1(n4378), 
        .S0(n147[19]), .S1(n147[20]));
    defparam add_128_add_5_21.INIT0 = "0xc33c";
    defparam add_128_add_5_21.INIT1 = "0xc33c";
    LUT4 i9_3_lut (.A(pwm_count[1]), .B(pwm_count[7]), .C(pwm_count[13]), 
         .Z(n26)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9_3_lut.INIT = "0x8080";
    LUT4 i4167_4_lut (.A(off_max_cnt[24]), .B(steady_count[21]), .C(steady_count[22]), 
         .D(n6550), .Z(n6562)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+(D))))) */ ;
    defparam i4167_4_lut.INIT = "0x0081";
    LUT4 i1535_2_lut (.A(n172_adj_976[9]), .B(n3235), .Z(red_accum_31__N_319[8])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1535_2_lut.INIT = "0x8888";
    LUT4 i1594_2_lut (.A(n147[7]), .B(n1979), .Z(n2519)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1594_2_lut.INIT = "0x2222";
    LUT4 i4155_4_lut (.A(off_max_cnt[27]), .B(n7753), .C(steady_count[20]), 
         .D(n6532), .Z(n6550)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+!(D))))) */ ;
    defparam i4155_4_lut.INIT = "0x2100";
    LUT4 i1593_2_lut (.A(n147[6]), .B(n1979), .Z(n2517)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1593_2_lut.INIT = "0x2222";
    LUT4 LessThan_61_i44_3_lut (.A(n42), .B(steady_count[25]), .C(off_max_cnt[27]), 
         .Z(n44)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i44_3_lut.INIT = "0x8e8e";
    LUT4 LessThan_61_i51_rep_92_2_lut (.A(off_max_cnt[27]), .B(steady_count[25]), 
         .Z(n7745)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam LessThan_61_i51_rep_92_2_lut.INIT = "0x6666";
    FA2 add_2499_27 (.A0(GND_net), .B0(grn_accum[28]), .C0(n626), .D0(n4411), 
        .CI0(n4411), .A1(GND_net), .B1(grn_accum[29]), .C1(n626), .D1(n8450), 
        .CI1(n8450), .CO0(n8450), .CO1(n4413), .S0(n172_adj_978[29]), 
        .S1(n172_adj_978[30]));
    defparam add_2499_27.INIT0 = "0xc33c";
    defparam add_2499_27.INIT1 = "0xc33c";
    LUT4 i1605_2_lut (.A(n147[18]), .B(n1979), .Z(n2541)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1605_2_lut.INIT = "0x2222";
    FA2 add_128_add_5_19 (.A0(GND_net), .B0(steady_count[17]), .C0(GND_net), 
        .D0(n4374), .CI0(n4374), .A1(GND_net), .B1(steady_count[18]), 
        .C1(GND_net), .D1(n8558), .CI1(n8558), .CO0(n8558), .CO1(n4376), 
        .S0(n147[17]), .S1(n147[18]));
    defparam add_128_add_5_19.INIT0 = "0xc33c";
    defparam add_128_add_5_19.INIT1 = "0xc33c";
    LUT4 mux_161_i31_4_lut (.A(n172_adj_978[31]), .B(grn_peak[30]), .C(n3235), 
         .D(n626), .Z(grn_accum_31__N_351[30])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_161_i31_4_lut.INIT = "0xaca0";
    FA2 add_128_add_5_17 (.A0(GND_net), .B0(steady_count[15]), .C0(GND_net), 
        .D0(n4372), .CI0(n4372), .A1(GND_net), .B1(steady_count[16]), 
        .C1(GND_net), .D1(n8555), .CI1(n8555), .CO0(n8555), .CO1(n4374), 
        .S0(n147[15]), .S1(n147[16]));
    defparam add_128_add_5_17.INIT0 = "0xc33c";
    defparam add_128_add_5_17.INIT1 = "0xc33c";
    FA2 add_129_add_5_11 (.A0(GND_net), .B0(ramp_count[9]), .C0(GND_net), 
        .D0(n4337), .CI0(n4337), .A1(GND_net), .B1(ramp_count[10]), 
        .C1(GND_net), .D1(n8339), .CI1(n8339), .CO0(n8339), .CO1(n4339), 
        .S0(n147_adj_977[9]), .S1(n147_adj_977[10]));
    defparam add_129_add_5_11.INIT0 = "0xc33c";
    defparam add_129_add_5_11.INIT1 = "0xc33c";
    LUT4 i1534_2_lut (.A(n172_adj_976[8]), .B(n3235), .Z(red_accum_31__N_319[7])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1534_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i39_rep_100_2_lut (.A(off_max_cnt[24]), .B(steady_count[19]), 
         .Z(n7753)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam LessThan_61_i39_rep_100_2_lut.INIT = "0x6666";
    LUT4 i1533_2_lut (.A(n172_adj_976[7]), .B(n3235), .Z(red_accum_31__N_319[6])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1533_2_lut.INIT = "0x8888";
    LUT4 i1443_2_lut (.A(n77[4]), .B(n3465), .Z(n97[4])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1443_2_lut.INIT = "0x2222";
    LUT4 i4137_4_lut (.A(off_max_cnt[24]), .B(steady_count[17]), .C(steady_count[18]), 
         .D(n6516), .Z(n6532)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam i4137_4_lut.INIT = "0x8100";
    LUT4 i4121_4_lut (.A(off_max_cnt[27]), .B(steady_count[15]), .C(steady_count[16]), 
         .D(n6504), .Z(n6516)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam i4121_4_lut.INIT = "0x8100";
    LUT4 pwm_count_17__I_0_59_i8_3_lut_3_lut (.A(curr_blu[4]), .B(curr_blu[8]), 
         .C(pwm_count[8]), .Z(n8_adj_835)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_59_i8_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i4194_4_lut (.A(off_max_cnt[24]), .B(off_max_cnt[27]), .C(steady_count[24]), 
         .D(steady_count[23]), .Z(n6589)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D)))) */ ;
    defparam i4194_4_lut.INIT = "0x8421";
    LUT4 i1453_2_lut (.A(n77[1]), .B(n3465), .Z(n97[1])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1453_2_lut.INIT = "0x2222";
    FA2 add_2499_25 (.A0(GND_net), .B0(grn_accum[26]), .C0(n626), .D0(n4409), 
        .CI0(n4409), .A1(GND_net), .B1(grn_accum[27]), .C1(n626), .D1(n8447), 
        .CI1(n8447), .CO0(n8447), .CO1(n4411), .S0(n172_adj_978[27]), 
        .S1(n172_adj_978[28]));
    defparam add_2499_25.INIT0 = "0xc33c";
    defparam add_2499_25.INIT1 = "0xc33c";
    LUT4 mux_161_i30_4_lut (.A(n172_adj_978[30]), .B(grn_peak[29]), .C(n3235), 
         .D(n626), .Z(grn_accum_31__N_351[29])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_161_i30_4_lut.INIT = "0xaca0";
    FA2 add_128_add_5_15 (.A0(GND_net), .B0(steady_count[13]), .C0(GND_net), 
        .D0(n4370), .CI0(n4370), .A1(GND_net), .B1(steady_count[14]), 
        .C1(GND_net), .D1(n8552), .CI1(n8552), .CO0(n8552), .CO1(n4372), 
        .S0(n147[13]), .S1(n147[14]));
    defparam add_128_add_5_15.INIT0 = "0xc33c";
    defparam add_128_add_5_15.INIT1 = "0xc33c";
    FA2 add_129_add_5_9 (.A0(GND_net), .B0(ramp_count[7]), .C0(GND_net), 
        .D0(n4335), .CI0(n4335), .A1(GND_net), .B1(ramp_count[8]), .C1(GND_net), 
        .D1(n8336), .CI1(n8336), .CO0(n8336), .CO1(n4337), .S0(n147_adj_977[7]), 
        .S1(n147_adj_977[8]));
    defparam add_129_add_5_9.INIT0 = "0xc33c";
    defparam add_129_add_5_9.INIT1 = "0xc33c";
    FA2 pwm_count_301_add_4_9 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[7]), 
        .D0(n4316), .CI0(n4316), .A1(GND_net), .B1(GND_net), .C1(pwm_count[8]), 
        .D1(n8468), .CI1(n8468), .CO0(n8468), .CO1(n4318), .S0(n77[7]), 
        .S1(n77[8]));
    defparam pwm_count_301_add_4_9.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_9.INIT1 = "0xc33c";
    LUT4 i1592_2_lut (.A(n147[5]), .B(n1979), .Z(n2515)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1592_2_lut.INIT = "0x2222";
    LUT4 LessThan_61_i42_3_lut (.A(steady_count[23]), .B(steady_count[24]), 
         .C(off_max_cnt[24]), .Z(n42)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i42_3_lut.INIT = "0x8e8e";
    LUT4 pwm_count_17__I_0_i14_3_lut_3_lut (.A(curr_grn[13]), .B(curr_grn[14]), 
         .C(pwm_count[14]), .Z(n14)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_i14_3_lut_3_lut.INIT = "0x8e8e";
    FA2 add_2500_29 (.A0(GND_net), .B0(blu_accum[31]), .C0(n626), .D0(n4471), 
        .CI0(n4471), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(n8408), 
        .CI1(n8408), .CO0(n8408), .S0(n172[32]));
    defparam add_2500_29.INIT0 = "0xc33c";
    defparam add_2500_29.INIT1 = "0xc33c";
    LUT4 i1604_2_lut (.A(n147[17]), .B(n1979), .Z(n2539)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1604_2_lut.INIT = "0x2222";
    LUT4 i1532_2_lut (.A(n172_adj_976[6]), .B(n3235), .Z(red_accum_31__N_319[5])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1532_2_lut.INIT = "0x8888";
    LUT4 i4320_2_lut_4_lut (.A(pwm_count[8]), .B(curr_grn[8]), .C(pwm_count[4]), 
         .D(curr_grn[4]), .Z(n6715)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;
    defparam i4320_2_lut_4_lut.INIT = "0x9009";
    LUT4 i1483_2_lut (.A(n147_adj_977[13]), .B(n1979), .Z(n2491)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1483_2_lut.INIT = "0x2222";
    FA2 add_2500_27 (.A0(GND_net), .B0(blu_accum[29]), .C0(n626), .D0(n4469), 
        .CI0(n4469), .A1(GND_net), .B1(blu_accum[30]), .C1(n626), .D1(n8405), 
        .CI1(n8405), .CO0(n8405), .CO1(n4471), .S0(n172[30]), .S1(n172[31]));
    defparam add_2500_27.INIT0 = "0xc33c";
    defparam add_2500_27.INIT1 = "0xc33c";
    FA2 add_2500_25 (.A0(GND_net), .B0(blu_accum[27]), .C0(n626), .D0(n4467), 
        .CI0(n4467), .A1(GND_net), .B1(blu_accum[28]), .C1(n626), .D1(n8402), 
        .CI1(n8402), .CO0(n8402), .CO1(n4469), .S0(n172[28]), .S1(n172[29]));
    defparam add_2500_25.INIT0 = "0xc33c";
    defparam add_2500_25.INIT1 = "0xc33c";
    FA2 add_128_add_5_13 (.A0(GND_net), .B0(steady_count[11]), .C0(GND_net), 
        .D0(n4368), .CI0(n4368), .A1(GND_net), .B1(steady_count[12]), 
        .C1(GND_net), .D1(n8549), .CI1(n8549), .CO0(n8549), .CO1(n4370), 
        .S0(n147[11]), .S1(n147[12]));
    defparam add_128_add_5_13.INIT0 = "0xc33c";
    defparam add_128_add_5_13.INIT1 = "0xc33c";
    LUT4 i1531_2_lut (.A(n172_adj_976[5]), .B(n3235), .Z(red_accum_31__N_319[4])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1531_2_lut.INIT = "0x8888";
    FA2 add_2500_23 (.A0(GND_net), .B0(blu_accum[25]), .C0(n626), .D0(n4465), 
        .CI0(n4465), .A1(GND_net), .B1(blu_accum[26]), .C1(n626), .D1(n8399), 
        .CI1(n8399), .CO0(n8399), .CO1(n4467), .S0(n172[26]), .S1(n172[27]));
    defparam add_2500_23.INIT0 = "0xc33c";
    defparam add_2500_23.INIT1 = "0xc33c";
    FA2 add_2500_21 (.A0(GND_net), .B0(blu_accum[23]), .C0(n626), .D0(n4463), 
        .CI0(n4463), .A1(GND_net), .B1(blu_accum[24]), .C1(n626), .D1(n8396), 
        .CI1(n8396), .CO0(n8396), .CO1(n4465), .S0(n172[24]), .S1(n172[25]));
    defparam add_2500_21.INIT0 = "0xc33c";
    defparam add_2500_21.INIT1 = "0xc33c";
    FA2 add_2499_23 (.A0(GND_net), .B0(grn_accum[24]), .C0(n626), .D0(n4407), 
        .CI0(n4407), .A1(GND_net), .B1(grn_accum[25]), .C1(n626), .D1(n8444), 
        .CI1(n8444), .CO0(n8444), .CO1(n4409), .S0(n172_adj_978[25]), 
        .S1(n172_adj_978[26]));
    defparam add_2499_23.INIT0 = "0xc33c";
    defparam add_2499_23.INIT1 = "0xc33c";
    FA2 add_2499_21 (.A0(GND_net), .B0(grn_accum[22]), .C0(n626), .D0(n4405), 
        .CI0(n4405), .A1(GND_net), .B1(grn_accum[23]), .C1(n626), .D1(n8441), 
        .CI1(n8441), .CO0(n8441), .CO1(n4407), .S0(n172_adj_978[23]), 
        .S1(n172_adj_978[24]));
    defparam add_2499_21.INIT0 = "0xc33c";
    defparam add_2499_21.INIT1 = "0xc33c";
    FA2 add_128_add_5_11 (.A0(GND_net), .B0(steady_count[9]), .C0(GND_net), 
        .D0(n4366), .CI0(n4366), .A1(GND_net), .B1(steady_count[10]), 
        .C1(GND_net), .D1(n8546), .CI1(n8546), .CO0(n8546), .CO1(n4368), 
        .S0(n147[9]), .S1(n147[10]));
    defparam add_128_add_5_11.INIT0 = "0xc33c";
    defparam add_128_add_5_11.INIT1 = "0xc33c";
    LUT4 pwm_count_17__I_0_i18_3_lut_3_lut (.A(curr_grn[10]), .B(curr_grn[11]), 
         .C(pwm_count[11]), .Z(n18_adj_859)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_i18_3_lut_3_lut.INIT = "0x8e8e";
    FA2 add_2500_19 (.A0(GND_net), .B0(blu_accum[21]), .C0(n626), .D0(n4461), 
        .CI0(n4461), .A1(GND_net), .B1(blu_accum[22]), .C1(n626), .D1(n8393), 
        .CI1(n8393), .CO0(n8393), .CO1(n4463), .S0(n172[22]), .S1(n172[23]));
    defparam add_2500_19.INIT0 = "0xc33c";
    defparam add_2500_19.INIT1 = "0xc33c";
    FA2 add_128_add_5_9 (.A0(GND_net), .B0(steady_count[7]), .C0(GND_net), 
        .D0(n4364), .CI0(n4364), .A1(GND_net), .B1(steady_count[8]), 
        .C1(GND_net), .D1(n8543), .CI1(n8543), .CO0(n8543), .CO1(n4366), 
        .S0(n147[7]), .S1(n147[8]));
    defparam add_128_add_5_9.INIT0 = "0xc33c";
    defparam add_128_add_5_9.INIT1 = "0xc33c";
    FA2 add_2499_19 (.A0(GND_net), .B0(grn_accum[20]), .C0(n626), .D0(n4403), 
        .CI0(n4403), .A1(GND_net), .B1(grn_accum[21]), .C1(n626), .D1(n8438), 
        .CI1(n8438), .CO0(n8438), .CO1(n4405), .S0(n172_adj_978[21]), 
        .S1(n172_adj_978[22]));
    defparam add_2499_19.INIT0 = "0xc33c";
    defparam add_2499_19.INIT1 = "0xc33c";
    FA2 add_2500_17 (.A0(GND_net), .B0(blu_accum[19]), .C0(n626), .D0(n4459), 
        .CI0(n4459), .A1(GND_net), .B1(blu_accum[20]), .C1(n626), .D1(n8390), 
        .CI1(n8390), .CO0(n8390), .CO1(n4461), .S0(n172[20]), .S1(n172[21]));
    defparam add_2500_17.INIT0 = "0xc33c";
    defparam add_2500_17.INIT1 = "0xc33c";
    FA2 add_128_add_5_7 (.A0(GND_net), .B0(steady_count[5]), .C0(GND_net), 
        .D0(n4362), .CI0(n4362), .A1(GND_net), .B1(steady_count[6]), 
        .C1(GND_net), .D1(n8540), .CI1(n8540), .CO0(n8540), .CO1(n4364), 
        .S0(n147[5]), .S1(n147[6]));
    defparam add_128_add_5_7.INIT0 = "0xc33c";
    defparam add_128_add_5_7.INIT1 = "0xc33c";
    FA2 add_128_add_5_5 (.A0(GND_net), .B0(steady_count[3]), .C0(GND_net), 
        .D0(n4360), .CI0(n4360), .A1(GND_net), .B1(steady_count[4]), 
        .C1(GND_net), .D1(n8537), .CI1(n8537), .CO0(n8537), .CO1(n4362), 
        .S0(n147[3]), .S1(n147[4]));
    defparam add_128_add_5_5.INIT0 = "0xc33c";
    defparam add_128_add_5_5.INIT1 = "0xc33c";
    FA2 add_129_add_5_7 (.A0(GND_net), .B0(ramp_count[5]), .C0(GND_net), 
        .D0(n4333), .CI0(n4333), .A1(GND_net), .B1(ramp_count[6]), .C1(GND_net), 
        .D1(n8333), .CI1(n8333), .CO0(n8333), .CO1(n4335), .S0(n147_adj_977[5]), 
        .S1(n147_adj_977[6]));
    defparam add_129_add_5_7.INIT0 = "0xc33c";
    defparam add_129_add_5_7.INIT1 = "0xc33c";
    FA2 add_129_add_5_5 (.A0(GND_net), .B0(ramp_count[3]), .C0(GND_net), 
        .D0(n4331), .CI0(n4331), .A1(GND_net), .B1(ramp_count[4]), .C1(GND_net), 
        .D1(n8330), .CI1(n8330), .CO0(n8330), .CO1(n4333), .S0(n147_adj_977[3]), 
        .S1(n147_adj_977[4]));
    defparam add_129_add_5_5.INIT0 = "0xc33c";
    defparam add_129_add_5_5.INIT1 = "0xc33c";
    FA2 add_128_add_5_3 (.A0(GND_net), .B0(steady_count[1]), .C0(GND_net), 
        .D0(n4358), .CI0(n4358), .A1(GND_net), .B1(steady_count[2]), 
        .C1(GND_net), .D1(n8534), .CI1(n8534), .CO0(n8534), .CO1(n4360), 
        .S0(n147[1]), .S1(n147[2]));
    defparam add_128_add_5_3.INIT0 = "0xc33c";
    defparam add_128_add_5_3.INIT1 = "0xc33c";
    LUT4 i1465_2_lut (.A(n77[7]), .B(n3465), .Z(n97[7])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1465_2_lut.INIT = "0x2222";
    FA2 add_2500_15 (.A0(GND_net), .B0(blu_accum[17]), .C0(n626), .D0(n4457), 
        .CI0(n4457), .A1(GND_net), .B1(blu_accum[18]), .C1(n626), .D1(n8387), 
        .CI1(n8387), .CO0(n8387), .CO1(n4459), .S0(n172[18]), .S1(n172[19]));
    defparam add_2500_15.INIT0 = "0xc33c";
    defparam add_2500_15.INIT1 = "0xc33c";
    FA2 add_2500_13 (.A0(GND_net), .B0(blu_accum[15]), .C0(n626), .D0(n4455), 
        .CI0(n4455), .A1(GND_net), .B1(blu_accum[16]), .C1(n626), .D1(n8384), 
        .CI1(n8384), .CO0(n8384), .CO1(n4457), .S0(n172[16]), .S1(n172[17]));
    defparam add_2500_13.INIT0 = "0xc33c";
    defparam add_2500_13.INIT1 = "0xc33c";
    FA2 add_2499_17 (.A0(GND_net), .B0(grn_accum[18]), .C0(n626), .D0(n4401), 
        .CI0(n4401), .A1(GND_net), .B1(grn_accum[19]), .C1(n626), .D1(n8435), 
        .CI1(n8435), .CO0(n8435), .CO1(n4403), .S0(n172_adj_978[19]), 
        .S1(n172_adj_978[20]));
    defparam add_2499_17.INIT0 = "0xc33c";
    defparam add_2499_17.INIT1 = "0xc33c";
    LUT4 i4183_4_lut (.A(off_max_cnt[24]), .B(steady_count[21]), .C(steady_count[22]), 
         .D(n7816), .Z(n6578)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+(D))))) */ ;
    defparam i4183_4_lut.INIT = "0x0081";
    LUT4 i1600_2_lut (.A(n147[13]), .B(n1979), .Z(n2531)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1600_2_lut.INIT = "0x2222";
    LUT4 i1430_2_lut (.A(n77[16]), .B(n3465), .Z(n97[16])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1430_2_lut.INIT = "0x2222";
    LUT4 i1466_2_lut (.A(n77[6]), .B(n3465), .Z(n97[6])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1466_2_lut.INIT = "0x2222";
    FA2 add_2499_15 (.A0(GND_net), .B0(grn_accum[16]), .C0(n626), .D0(n4399), 
        .CI0(n4399), .A1(GND_net), .B1(grn_accum[17]), .C1(n626), .D1(n8432), 
        .CI1(n8432), .CO0(n8432), .CO1(n4401), .S0(n172_adj_978[17]), 
        .S1(n172_adj_978[18]));
    defparam add_2499_15.INIT0 = "0xc33c";
    defparam add_2499_15.INIT1 = "0xc33c";
    LUT4 i1603_2_lut (.A(n147[16]), .B(n1979), .Z(n2537)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1603_2_lut.INIT = "0x2222";
    FA2 add_128_add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .A1(GND_net), 
        .B1(steady_count[0]), .C1(VCC_net), .D1(n8531), .CI1(n8531), 
        .CO0(n8531), .CO1(n4358), .S1(n147[0]));
    defparam add_128_add_5_1.INIT0 = "0xc33c";
    defparam add_128_add_5_1.INIT1 = "0xc33c";
    FA2 add_129_add_5_29 (.A0(GND_net), .B0(ramp_count[27]), .C0(GND_net), 
        .D0(n4355), .CI0(n4355), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n8576), .CI1(n8576), .CO0(n8576), .S0(n147_adj_977[27]));
    defparam add_129_add_5_29.INIT0 = "0xc33c";
    defparam add_129_add_5_29.INIT1 = "0xc33c";
    FA2 add_129_add_5_3 (.A0(GND_net), .B0(ramp_count[1]), .C0(GND_net), 
        .D0(n4329), .CI0(n4329), .A1(GND_net), .B1(ramp_count[2]), .C1(GND_net), 
        .D1(n8327), .CI1(n8327), .CO0(n8327), .CO1(n4331), .S0(n147_adj_977[1]), 
        .S1(n147_adj_977[2]));
    defparam add_129_add_5_3.INIT0 = "0xc33c";
    defparam add_129_add_5_3.INIT1 = "0xc33c";
    FA2 add_2499_13 (.A0(GND_net), .B0(grn_accum[14]), .C0(n626), .D0(n4397), 
        .CI0(n4397), .A1(GND_net), .B1(grn_accum[15]), .C1(n626), .D1(n8429), 
        .CI1(n8429), .CO0(n8429), .CO1(n4399), .S0(n172_adj_978[15]), 
        .S1(n172_adj_978[16]));
    defparam add_2499_13.INIT0 = "0xc33c";
    defparam add_2499_13.INIT1 = "0xc33c";
    FA2 add_129_add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .A1(GND_net), 
        .B1(ramp_count[0]), .C1(VCC_net), .D1(n8324), .CI1(n8324), .CO0(n8324), 
        .CO1(n4329), .S1(n147_adj_977[0]));
    defparam add_129_add_5_1.INIT0 = "0xc33c";
    defparam add_129_add_5_1.INIT1 = "0xc33c";
    FA2 pwm_count_301_add_4_19 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[17]), 
        .D0(n4326), .CI0(n4326), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n8483), .CI1(n8483), .CO0(n8483), .S0(n77[17]));
    defparam pwm_count_301_add_4_19.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_19.INIT1 = "0xc33c";
    LUT4 i1526_2_lut (.A(n172_adj_978[29]), .B(n3235), .Z(grn_accum_31__N_351[28])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1526_2_lut.INIT = "0x8888";
    FA2 pwm_count_301_add_4_17 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[15]), 
        .D0(n4324), .CI0(n4324), .A1(GND_net), .B1(GND_net), .C1(pwm_count[16]), 
        .D1(n8480), .CI1(n8480), .CO0(n8480), .CO1(n4326), .S0(n77[15]), 
        .S1(n77[16]));
    defparam pwm_count_301_add_4_17.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_17.INIT1 = "0xc33c";
    FA2 pwm_count_301_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
        .A1(GND_net), .B1(VCC_net), .C1(pwm_count[0]), .D1(n8456), .CI1(n8456), 
        .CO0(n8456), .CO1(n4310), .S1(n77[0]));
    defparam pwm_count_301_add_4_1.INIT0 = "0xc33c";
    defparam pwm_count_301_add_4_1.INIT1 = "0xc33c";
    FA2 add_129_add_5_27 (.A0(GND_net), .B0(ramp_count[25]), .C0(GND_net), 
        .D0(n4353), .CI0(n4353), .A1(GND_net), .B1(ramp_count[26]), 
        .C1(GND_net), .D1(n8363), .CI1(n8363), .CO0(n8363), .CO1(n4355), 
        .S0(n147_adj_977[25]), .S1(n147_adj_977[26]));
    defparam add_129_add_5_27.INIT0 = "0xc33c";
    defparam add_129_add_5_27.INIT1 = "0xc33c";
    LUT4 LessThan_61_i19_rep_163_2_lut (.A(off_max_cnt[27]), .B(steady_count[9]), 
         .Z(n7816)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam LessThan_61_i19_rep_163_2_lut.INIT = "0x6666";
    LUT4 i4109_3_lut (.A(off_max_cnt[27]), .B(n6501), .C(steady_count[14]), 
         .Z(n6504)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;
    defparam i4109_3_lut.INIT = "0x8484";
    LUT4 i1599_2_lut (.A(n147[12]), .B(n1979), .Z(n2529)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1599_2_lut.INIT = "0x2222";
    LUT4 i1429_2_lut (.A(n77[5]), .B(n3465), .Z(n97[5])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1429_2_lut.INIT = "0x2222";
    LUT4 i4334_2_lut_4_lut (.A(pwm_count[11]), .B(curr_grn[11]), .C(pwm_count[10]), 
         .D(curr_grn[10]), .Z(n6729)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;
    defparam i4334_2_lut_4_lut.INIT = "0x9009";
    LUT4 i1525_2_lut (.A(n172_adj_978[28]), .B(n3235), .Z(grn_accum_31__N_351[27])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1525_2_lut.INIT = "0x8888";
    LUT4 i1602_2_lut (.A(n147[15]), .B(n1979), .Z(n2535)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1602_2_lut.INIT = "0x2222";
    LUT4 i4106_4_lut (.A(off_max_cnt[24]), .B(steady_count[12]), .C(steady_count[13]), 
         .D(n6487), .Z(n6501)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B (C)+!B (C+(D))))) */ ;
    defparam i4106_4_lut.INIT = "0x24a5";
    LUT4 i1598_2_lut (.A(n147[11]), .B(n1979), .Z(n2527)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1598_2_lut.INIT = "0x2222";
    LUT4 i1_2_lut (.A(ramp_count[26]), .B(ramp_count[27]), .Z(n5894)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.INIT = "0xeeee";
    LUT4 i1601_2_lut (.A(n147[14]), .B(n1979), .Z(n2533)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1601_2_lut.INIT = "0x2222";
    LUT4 i1424_2_lut (.A(n77[15]), .B(n3465), .Z(n97[15])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1424_2_lut.INIT = "0x2222";
    LUT4 i1426_2_lut (.A(n77[0]), .B(n3465), .Z(n97[0])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1426_2_lut.INIT = "0x2222";
    LUT4 i1651_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[16]), 
         .Z(curr_red_17__N_415[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1651_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_i6_3_lut_3_lut (.A(curr_grn[2]), .B(curr_grn[3]), 
         .C(pwm_count[3]), .Z(n6_adj_883)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_i6_3_lut_3_lut.INIT = "0x8e8e";
    FA2 add_2500_11 (.A0(GND_net), .B0(blu_accum[13]), .C0(n626), .D0(n4453), 
        .CI0(n4453), .A1(GND_net), .B1(blu_accum[14]), .C1(n626), .D1(n8381), 
        .CI1(n8381), .CO0(n8381), .CO1(n4455), .S0(n172[14]), .S1(n172[15]));
    defparam add_2500_11.INIT0 = "0xc33c";
    defparam add_2500_11.INIT1 = "0xc33c";
    LUT4 i4092_4_lut (.A(n23), .B(off_max_cnt[24]), .C(n6475), .D(steady_count[10]), 
         .Z(n6487)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !((D)+!C)))) */ ;
    defparam i4092_4_lut.INIT = "0x4010";
    LUT4 i1524_2_lut (.A(n172_adj_978[27]), .B(n3235), .Z(grn_accum_31__N_351[26])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1524_2_lut.INIT = "0x8888";
    LUT4 i1523_2_lut (.A(n172_adj_978[26]), .B(n3235), .Z(grn_accum_31__N_351[25])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1523_2_lut.INIT = "0x8888";
    LUT4 i1421_4_lut (.A(n202[1]), .B(BlinkRate_s[2]), .C(n221), .D(n899), 
         .Z(n212[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i1421_4_lut.INIT = "0xc0c8";
    LUT4 i1597_2_lut (.A(n147[10]), .B(n1979), .Z(n2525)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1597_2_lut.INIT = "0x2222";
    LUT4 i1522_2_lut (.A(n172_adj_978[25]), .B(n3235), .Z(grn_accum_31__N_351[24])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1522_2_lut.INIT = "0x8888";
    LUT4 i1521_2_lut (.A(n172_adj_978[24]), .B(n3235), .Z(grn_accum_31__N_351[23])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1521_2_lut.INIT = "0x8888";
    LUT4 i42_2_lut (.A(n611), .B(n202[0]), .Z(n221)) /* synthesis lut_function=(A (B)) */ ;
    defparam i42_2_lut.INIT = "0x8888";
    LUT4 i4080_3_lut (.A(off_max_cnt[27]), .B(n6472), .C(steady_count[9]), 
         .Z(n6475)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;
    defparam i4080_3_lut.INIT = "0x8484";
    LUT4 i1_4_lut_adj_3 (.A(n202[2]), .B(n224), .C(BlinkRate_s[2]), .D(n803), 
         .Z(n5850)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C))) */ ;
    defparam i1_4_lut_adj_3.INIT = "0xcfef";
    LUT4 pwm_count_17__I_0_i12_3_lut_3_lut (.A(curr_grn[7]), .B(curr_grn[16]), 
         .C(pwm_count[16]), .Z(n12)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_i12_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i45_2_lut (.A(n899), .B(n202[1]), .Z(n224)) /* synthesis lut_function=(A (B)) */ ;
    defparam i45_2_lut.INIT = "0x8888";
    LUT4 i1520_2_lut (.A(n172_adj_978[23]), .B(n3235), .Z(grn_accum_31__N_351[22])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1520_2_lut.INIT = "0x8888";
    LUT4 i1519_2_lut (.A(n172_adj_978[22]), .B(n3235), .Z(grn_accum_31__N_351[21])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1519_2_lut.INIT = "0x8888";
    LUT4 i4077_4_lut (.A(off_max_cnt[24]), .B(steady_count[7]), .C(steady_count[8]), 
         .D(n6462), .Z(n6472)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B (C)+!B (C+(D))))) */ ;
    defparam i4077_4_lut.INIT = "0x24a5";
    LUT4 pwm_count_17__I_0_i10_3_lut_3_lut (.A(curr_grn[5]), .B(curr_grn[6]), 
         .C(pwm_count[6]), .Z(n10_adj_884)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_i10_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i1492_4_lut (.A(n202[3]), .B(BlinkRate_s[2]), .C(n227), .D(n899), 
         .Z(n212[3])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i1492_4_lut.INIT = "0xc0c8";
    LUT4 i4356_2_lut_4_lut (.A(pwm_count[14]), .B(curr_grn[14]), .C(pwm_count[13]), 
         .D(curr_grn[13]), .Z(n6751)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;
    defparam i4356_2_lut_4_lut.INIT = "0x9009";
    LUT4 i48_2_lut (.A(n803), .B(n202[2]), .Z(n227)) /* synthesis lut_function=(A (B)) */ ;
    defparam i48_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_i8_3_lut_3_lut (.A(curr_grn[4]), .B(curr_grn[8]), 
         .C(pwm_count[8]), .Z(n8_adj_885)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_i8_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i4067_4_lut (.A(off_max_cnt[24]), .B(steady_count[5]), .C(steady_count[6]), 
         .D(n6456), .Z(n6462)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+(D))))) */ ;
    defparam i4067_4_lut.INIT = "0x0081";
    LUT4 i1467_2_lut (.A(n77[3]), .B(n3465), .Z(n97[3])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1467_2_lut.INIT = "0x2222";
    LUT4 mux_61_i17_4_lut (.A(blu_accum[30]), .B(blu_peak[30]), .C(n202[2]), 
         .D(n202[0]), .Z(curr_blu_17__N_451[16])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam mux_61_i17_4_lut.INIT = "0xc0ca";
    LUT4 i1614_2_lut (.A(n147[27]), .B(n1979), .Z(n2559)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1614_2_lut.INIT = "0x2222";
    LUT4 i4_4_lut (.A(n7), .B(n5894), .C(BlinkRate_s[2]), .D(n202[0]), 
         .Z(n1977)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i4_4_lut.INIT = "0xffef";
    LUT4 i1518_2_lut (.A(n172_adj_978[21]), .B(n3235), .Z(grn_accum_31__N_351[20])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1518_2_lut.INIT = "0x8888";
    LUT4 i1425_2_lut (.A(RGB_color_s[0]), .B(RGB_color_s[1]), .Z(blu_set[1])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1425_2_lut.INIT = "0x8888";
    LUT4 i1423_2_lut (.A(n77[14]), .B(n3465), .Z(n97[14])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1423_2_lut.INIT = "0x2222";
    LUT4 i4061_4_lut (.A(n7795), .B(off_max_cnt[24]), .C(steady_count[2]), 
         .D(steady_count[3]), .Z(n6456)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+(D))))) */ ;
    defparam i4061_4_lut.INIT = "0x4001";
    LUT4 i1517_2_lut (.A(n172_adj_978[20]), .B(n3235), .Z(grn_accum_31__N_351[19])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1517_2_lut.INIT = "0x8888";
    LUT4 i1516_2_lut (.A(n172_adj_978[19]), .B(n3235), .Z(grn_accum_31__N_351[18])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1516_2_lut.INIT = "0x8888";
    LUT4 i1652_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[17]), 
         .Z(curr_red_17__N_415[3])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1652_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_58_i36_4_lut (.A(n24_adj_886), .B(n34), .C(n35), 
         .D(n6834), .Z(red_pwm_N_784)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_58_i36_4_lut.INIT = "0xcacc";
    LUT4 LessThan_61_i9_rep_142_2_lut (.A(off_max_cnt[27]), .B(steady_count[4]), 
         .Z(n7795)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam LessThan_61_i9_rep_142_2_lut.INIT = "0x6666";
    LUT4 i1515_2_lut (.A(n172_adj_978[18]), .B(n3235), .Z(grn_accum_31__N_351[17])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1515_2_lut.INIT = "0x8888";
    LUT4 i2_2_lut (.A(n202[2]), .B(n52), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.INIT = "0xeeee";
    LUT4 i1650_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[15]), 
         .Z(curr_red_17__N_415[1])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1650_2_lut_3_lut.INIT = "0x1010";
    LUT4 i403_1_lut (.A(RGB_color_s[1]), .Z(red_set[1])) /* synthesis lut_function=(!(A)) */ ;
    defparam i403_1_lut.INIT = "0x5555";
    LUT4 pwm_count_17__I_0_58_i24_4_lut (.A(n16), .B(n22_adj_887), .C(n25), 
         .D(n6807), .Z(n24_adj_886)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_58_i24_4_lut.INIT = "0xcacc";
    LUT4 LessThan_76_i52_4_lut (.A(n48), .B(ramp_count[25]), .C(ramp_max_cnt[25]), 
         .D(ramp_count[24]), .Z(n52)) /* synthesis lut_function=(A (B+!(C))+!A (B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam LessThan_76_i52_4_lut.INIT = "0xcf8e";
    LUT4 i1613_2_lut (.A(n147[26]), .B(n1979), .Z(n2557)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1613_2_lut.INIT = "0x2222";
    LUT4 LessThan_61_i30_3_lut (.A(n12_adj_888), .B(steady_count[17]), .C(off_max_cnt[24]), 
         .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i30_3_lut.INIT = "0x8e8e";
    LUT4 i1514_2_lut (.A(n172_adj_978[17]), .B(n3235), .Z(grn_accum_31__N_351[16])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1514_2_lut.INIT = "0x8888";
    LUT4 i1513_2_lut (.A(n172_adj_978[16]), .B(n3235), .Z(grn_accum_31__N_351[15])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1513_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i36_4_lut (.A(n10_adj_889), .B(n34_adj_890), .C(n7750), 
         .D(n6547), .Z(n36)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam LessThan_61_i36_4_lut.INIT = "0xcacc";
    LUT4 i1512_2_lut (.A(n172_adj_978[15]), .B(n3235), .Z(grn_accum_31__N_351[14])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1512_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i41_rep_97_2_lut (.A(off_max_cnt[27]), .B(steady_count[20]), 
         .Z(n7750)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam LessThan_61_i41_rep_97_2_lut.INIT = "0x6666";
    LUT4 i1629_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[25]), 
         .Z(curr_blu_17__N_451[11])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1629_2_lut_3_lut.INIT = "0x1010";
    LUT4 LessThan_76_i48_4_lut (.A(n44_adj_891), .B(ramp_count[23]), .C(ramp_max_cnt[25]), 
         .D(ramp_count[22]), .Z(n48)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam LessThan_76_i48_4_lut.INIT = "0x8f0e";
    LUT4 i1628_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[24]), 
         .Z(curr_blu_17__N_451[10])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1628_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_i36_4_lut (.A(n24_adj_892), .B(n34_adj_893), 
         .C(n35_adj_894), .D(n6754), .Z(grn_pwm_N_786)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_i36_4_lut.INIT = "0xcacc";
    LUT4 pwm_count_17__I_0_i24_4_lut (.A(n16_adj_895), .B(n22_adj_896), 
         .C(n25_adj_897), .D(n6727), .Z(n24_adj_892)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_i24_4_lut.INIT = "0xcacc";
    LUT4 pwm_count_17__I_0_i34_4_lut (.A(n28_adj_898), .B(n32_adj_899), 
         .C(n35_adj_894), .D(n6760), .Z(n34_adj_893)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_i34_4_lut.INIT = "0xcacc";
    LUT4 i1422_2_lut (.A(n77[13]), .B(n3465), .Z(n97[13])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1422_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_58_i34_4_lut (.A(n28_adj_900), .B(n32_adj_901), 
         .C(n35), .D(n6840), .Z(n34)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_58_i34_4_lut.INIT = "0xcacc";
    LUT4 i4359_4_lut (.A(n33), .B(n31), .C(n29_adj_902), .D(n6739), 
         .Z(n6754)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4359_4_lut.INIT = "0x0100";
    LUT4 pwm_count_17__I_0_i16_3_lut (.A(n8_adj_885), .B(curr_grn[9]), .C(n19), 
         .Z(n16_adj_895)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam pwm_count_17__I_0_i16_3_lut.INIT = "0xcaca";
    LUT4 pwm_count_17__I_0_i22_4_lut (.A(n6_adj_883), .B(n20_adj_903), .C(n25_adj_897), 
         .D(n6729), .Z(n22_adj_896)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_i22_4_lut.INIT = "0xcacc";
    LUT4 i4332_4_lut (.A(n23_adj_904), .B(n21), .C(n19), .D(n6715), 
         .Z(n6727)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i4332_4_lut.INIT = "0x1011";
    LUT4 i1647_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[27]), 
         .Z(curr_grn_17__N_433[13])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1647_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_i28_4_lut (.A(n4_adj_905), .B(n26_adj_906), .C(n31), 
         .D(n6751), .Z(n28_adj_898)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_i28_4_lut.INIT = "0xcacc";
    LUT4 pwm_count_17__I_0_i32_3_lut (.A(n30_adj_907), .B(curr_grn[17]), 
         .C(n35_adj_894), .Z(n32_adj_899)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam pwm_count_17__I_0_i32_3_lut.INIT = "0xcaca";
    LUT4 i4365_4_lut (.A(n33), .B(n31), .C(n29_adj_902), .D(n6744), 
         .Z(n6760)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i4365_4_lut.INIT = "0x5455";
    LUT4 pwm_count_17__I_0_i30_4_lut (.A(n10_adj_884), .B(n12), .C(n33), 
         .D(n15), .Z(n30_adj_907)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam pwm_count_17__I_0_i30_4_lut.INIT = "0xccca";
    LUT4 pwm_count_17__I_0_i4_4_lut (.A(curr_grn[0]), .B(curr_grn[1]), .C(pwm_count[1]), 
         .D(pwm_count[0]), .Z(n4_adj_905)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;
    defparam pwm_count_17__I_0_i4_4_lut.INIT = "0x0c8e";
    LUT4 i1511_2_lut (.A(n172_adj_978[14]), .B(n3235), .Z(grn_accum_31__N_351[13])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1511_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_i26_3_lut (.A(n14), .B(curr_grn[15]), .C(n31), 
         .Z(n26_adj_906)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam pwm_count_17__I_0_i26_3_lut.INIT = "0xcaca";
    LUT4 i1643_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[23]), 
         .Z(curr_grn_17__N_433[9])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1643_2_lut_3_lut.INIT = "0x1010";
    LUT4 i4344_4_lut (.A(n27_adj_908), .B(n25_adj_897), .C(n23_adj_904), 
         .D(n6718), .Z(n6739)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i4344_4_lut.INIT = "0x5455";
    LUT4 i4323_4_lut (.A(n21), .B(n19), .C(n17), .D(n6705), .Z(n6718)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4323_4_lut.INIT = "0x0001";
    LUT4 i4150_4_lut (.A(off_max_cnt[24]), .B(steady_count[18]), .C(steady_count[19]), 
         .D(n6536), .Z(n6545)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+(D))))) */ ;
    defparam i4150_4_lut.INIT = "0x0081";
    LUT4 i4310_4_lut (.A(n15), .B(n13), .C(n11), .D(n6694), .Z(n6705)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4310_4_lut.INIT = "0x0001";
    LUT4 i4439_4_lut (.A(n33_adj_909), .B(n31_adj_910), .C(n29_adj_911), 
         .D(n6819), .Z(n6834)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4439_4_lut.INIT = "0x0100";
    LUT4 i4299_4_lut (.A(n9), .B(n7_adj_912), .C(pwm_count[2]), .D(curr_grn[2]), 
         .Z(n6694)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam i4299_4_lut.INIT = "0x1001";
    LUT4 i1622_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[18]), 
         .Z(curr_blu_17__N_451[4])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1622_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1632_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[28]), 
         .Z(curr_blu_17__N_451[14])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1632_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1612_2_lut (.A(n147[25]), .B(n1979), .Z(n2555)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1612_2_lut.INIT = "0x2222";
    LUT4 i1625_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[21]), 
         .Z(curr_blu_17__N_451[7])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1625_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_i20_3_lut (.A(n18_adj_859), .B(curr_grn[12]), 
         .C(n25_adj_897), .Z(n20_adj_903)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam pwm_count_17__I_0_i20_3_lut.INIT = "0xcaca";
    LUT4 i4349_4_lut (.A(n27_adj_908), .B(n15), .C(n13), .D(n11), .Z(n6744)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i4349_4_lut.INIT = "0x5554";
    LUT4 i1644_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[24]), 
         .Z(curr_grn_17__N_433[10])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1644_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_i27_2_lut (.A(pwm_count[13]), .B(curr_grn[13]), 
         .Z(n27_adj_908)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i27_2_lut.INIT = "0x6666";
    LUT4 i1619_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[15]), 
         .Z(curr_blu_17__N_451[1])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1619_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1510_2_lut (.A(n172_adj_978[13]), .B(n3235), .Z(grn_accum_31__N_351[12])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1510_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_i15_2_lut (.A(pwm_count[7]), .B(curr_grn[7]), 
         .Z(n15)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i15_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_i13_2_lut (.A(pwm_count[6]), .B(curr_grn[6]), 
         .Z(n13)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i13_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_58_i16_3_lut (.A(n8_adj_913), .B(curr_red[9]), 
         .C(n19_adj_914), .Z(n16)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam pwm_count_17__I_0_58_i16_3_lut.INIT = "0xcaca";
    LUT4 i413_4_lut (.A(n38), .B(ramp_count[21]), .C(n40), .D(n6442), 
         .Z(n44_adj_891)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;
    defparam i413_4_lut.INIT = "0xeefc";
    LUT4 pwm_count_17__I_0_58_i22_4_lut (.A(n6_adj_915), .B(n20_adj_916), 
         .C(n25), .D(n6809), .Z(n22_adj_887)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_58_i22_4_lut.INIT = "0xcacc";
    LUT4 i1509_2_lut (.A(n172_adj_978[12]), .B(n3235), .Z(grn_accum_31__N_351[11])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1509_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_i11_2_lut (.A(pwm_count[5]), .B(curr_grn[5]), 
         .Z(n11)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i11_2_lut.INIT = "0x6666";
    LUT4 i4412_4_lut (.A(n23_adj_917), .B(n21_adj_918), .C(n19_adj_914), 
         .D(n6795), .Z(n6807)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i4412_4_lut.INIT = "0x1011";
    LUT4 pwm_count_17__I_0_i23_2_lut (.A(pwm_count[11]), .B(curr_grn[11]), 
         .Z(n23_adj_904)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i23_2_lut.INIT = "0x6666";
    LUT4 i1508_2_lut (.A(n172_adj_978[11]), .B(n3235), .Z(grn_accum_31__N_351[10])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1508_2_lut.INIT = "0x8888";
    LUT4 i1617_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[14]), 
         .Z(curr_grn_17__N_433[0])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1617_2_lut_3_lut.INIT = "0x1010";
    LUT4 i4141_4_lut (.A(off_max_cnt[24]), .B(n7831), .C(steady_count[17]), 
         .D(steady_count[7]), .Z(n6536)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+(D))))) */ ;
    defparam i4141_4_lut.INIT = "0x2001";
    LUT4 pwm_count_17__I_0_i21_2_lut (.A(pwm_count[10]), .B(curr_grn[10]), 
         .Z(n21)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i21_2_lut.INIT = "0x6666";
    LUT4 i1507_2_lut (.A(n172_adj_978[10]), .B(n3235), .Z(grn_accum_31__N_351[9])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1507_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i10_3_lut (.A(steady_count[5]), .B(steady_count[6]), 
         .C(off_max_cnt[24]), .Z(n10_adj_889)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i10_3_lut.INIT = "0x8e8e";
    LUT4 i1506_2_lut (.A(n172_adj_978[9]), .B(n3235), .Z(grn_accum_31__N_351[8])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1506_2_lut.INIT = "0x8888";
    LUT4 i1505_2_lut (.A(n172_adj_978[8]), .B(n3235), .Z(grn_accum_31__N_351[7])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1505_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_i29_2_lut (.A(pwm_count[14]), .B(curr_grn[14]), 
         .Z(n29_adj_902)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i29_2_lut.INIT = "0x6666";
    LUT4 i1445_2_lut (.A(n77[12]), .B(n3465), .Z(n97[12])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1445_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_i17_2_lut (.A(pwm_count[8]), .B(curr_grn[8]), 
         .Z(n17)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i17_2_lut.INIT = "0x6666";
    LUT4 i1504_2_lut (.A(n172_adj_978[7]), .B(n3235), .Z(grn_accum_31__N_351[6])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1504_2_lut.INIT = "0x8888";
    LUT4 i1621_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[17]), 
         .Z(curr_blu_17__N_451[3])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1621_2_lut_3_lut.INIT = "0x1010";
    LUT4 LessThan_61_i34_3_lut (.A(n32_adj_919), .B(steady_count[20]), .C(off_max_cnt[27]), 
         .Z(n34_adj_890)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i34_3_lut.INIT = "0x8e8e";
    LUT4 pwm_count_17__I_0_i9_2_lut (.A(pwm_count[4]), .B(curr_grn[4]), 
         .Z(n9)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i9_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_i25_2_lut (.A(pwm_count[12]), .B(curr_grn[12]), 
         .Z(n25_adj_897)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i25_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_i7_2_lut (.A(pwm_count[3]), .B(curr_grn[3]), 
         .Z(n7_adj_912)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i7_2_lut.INIT = "0x6666";
    LUT4 select_19_Select_4_i2_2_lut (.A(grn_peak[30]), .B(BreatheRamp_s[2]), 
         .Z(grn_intensity_step_31__N_197[4])) /* synthesis lut_function=(A (B)) */ ;
    defparam select_19_Select_4_i2_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_i19_2_lut (.A(pwm_count[9]), .B(curr_grn[9]), 
         .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i19_2_lut.INIT = "0x6666";
    LUT4 i1503_2_lut (.A(n172_adj_978[6]), .B(n3235), .Z(grn_accum_31__N_351[5])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1503_2_lut.INIT = "0x8888";
    LUT4 i1630_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[26]), 
         .Z(curr_blu_17__N_451[12])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1630_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_i33_2_lut (.A(pwm_count[16]), .B(curr_grn[16]), 
         .Z(n33)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i33_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_i31_2_lut (.A(pwm_count[15]), .B(curr_grn[15]), 
         .Z(n31)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i31_2_lut.INIT = "0x6666";
    LUT4 i1502_2_lut (.A(n172_adj_978[5]), .B(n3235), .Z(grn_accum_31__N_351[4])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1502_2_lut.INIT = "0x8888";
    LUT4 i1501_2_lut (.A(n172_adj_978[4]), .B(n3235), .Z(grn_accum_31__N_351[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1501_2_lut.INIT = "0x8888";
    LUT4 i4152_3_lut (.A(off_max_cnt[24]), .B(steady_count[18]), .C(steady_count[19]), 
         .Z(n6547)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam i4152_3_lut.INIT = "0x8181";
    LUT4 i1447_2_lut (.A(n77[11]), .B(n3465), .Z(n97[11])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1447_2_lut.INIT = "0x2222";
    LUT4 i1611_2_lut (.A(n147[24]), .B(n1979), .Z(n2553)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1611_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_i35_2_lut (.A(pwm_count[17]), .B(curr_grn[17]), 
         .Z(n35_adj_894)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_i35_2_lut.INIT = "0x6666";
    LUT4 i1627_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[23]), 
         .Z(curr_blu_17__N_451[9])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1627_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1610_2_lut (.A(n147[23]), .B(n1979), .Z(n2551)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1610_2_lut.INIT = "0x2222";
    LUT4 i1633_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[29]), 
         .Z(curr_blu_17__N_451[15])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1633_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1624_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[20]), 
         .Z(curr_blu_17__N_451[6])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1624_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_58_i28_4_lut (.A(n4_adj_920), .B(n26_adj_921), 
         .C(n31_adj_910), .D(n6831), .Z(n28_adj_900)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_58_i28_4_lut.INIT = "0xcacc";
    LUT4 i1645_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[25]), 
         .Z(curr_grn_17__N_433[11])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1645_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1649_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[31]), 
         .Z(curr_grn_17__N_433[17])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1649_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1557_2_lut (.A(n172_adj_976[32]), .B(n3235), .Z(red_accum_31__N_319[31])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1557_2_lut.INIT = "0x8888";
    LUT4 i1634_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[31]), 
         .Z(curr_blu_17__N_451[17])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1634_2_lut_3_lut.INIT = "0x1010";
    LUT4 mux_165_i31_4_lut (.A(n172_adj_976[31]), .B(red_peak[30]), .C(n3235), 
         .D(n626), .Z(red_accum_31__N_319[30])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_165_i31_4_lut.INIT = "0xaca0";
    LUT4 LessThan_76_i38_4_lut (.A(n5886), .B(ramp_count[18]), .C(ramp_max_cnt[25]), 
         .D(n30_adj_922), .Z(n38)) /* synthesis lut_function=(A (B+!(C))+!A (B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam LessThan_76_i38_4_lut.INIT = "0xcf8e";
    LUT4 i1623_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[19]), 
         .Z(curr_blu_17__N_451[5])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1623_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1646_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[26]), 
         .Z(curr_grn_17__N_433[12])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1646_2_lut_3_lut.INIT = "0x1010";
    LUT4 LessThan_61_i32_3_lut (.A(steady_count[18]), .B(steady_count[19]), 
         .C(off_max_cnt[24]), .Z(n32_adj_919)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i32_3_lut.INIT = "0x8e8e";
    LUT4 i1648_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[28]), 
         .Z(curr_grn_17__N_433[14])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1648_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1556_2_lut (.A(n172_adj_976[30]), .B(n3235), .Z(red_accum_31__N_319[29])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1556_2_lut.INIT = "0x8888";
    LUT4 i1618_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[14]), 
         .Z(curr_red_17__N_415[0])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1618_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1555_2_lut (.A(n172_adj_976[29]), .B(n3235), .Z(red_accum_31__N_319[28])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1555_2_lut.INIT = "0x8888";
    LUT4 i1620_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[16]), 
         .Z(curr_blu_17__N_451[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1620_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1631_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[27]), 
         .Z(curr_blu_17__N_451[13])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1631_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1626_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[22]), 
         .Z(curr_blu_17__N_451[8])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1626_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1642_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[22]), 
         .Z(curr_grn_17__N_433[8])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1642_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1616_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(blu_accum[14]), 
         .Z(curr_blu_17__N_451[0])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1616_2_lut_3_lut.INIT = "0x1010";
    LUT4 LessThan_61_i12_3_lut (.A(steady_count[7]), .B(steady_count[16]), 
         .C(off_max_cnt[27]), .Z(n12_adj_888)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i12_3_lut.INIT = "0x8e8e";
    LUT4 pwm_count_17__I_0_58_i32_3_lut (.A(n30_adj_923), .B(curr_red[17]), 
         .C(n35), .Z(n32_adj_901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam pwm_count_17__I_0_58_i32_3_lut.INIT = "0xcaca";
    LUT4 i1641_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[21]), 
         .Z(curr_grn_17__N_433[7])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1641_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1640_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[20]), 
         .Z(curr_grn_17__N_433[6])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1640_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1639_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[19]), 
         .Z(curr_grn_17__N_433[5])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1639_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1448_2_lut (.A(n77[2]), .B(n3465), .Z(n97[2])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1448_2_lut.INIT = "0x2222";
    LUT4 i1638_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[18]), 
         .Z(curr_grn_17__N_433[4])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1638_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1637_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[17]), 
         .Z(curr_grn_17__N_433[3])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1637_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1636_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[16]), 
         .Z(curr_grn_17__N_433[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1636_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1635_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(grn_accum[15]), 
         .Z(curr_grn_17__N_433[1])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1635_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1554_2_lut (.A(n172_adj_976[28]), .B(n3235), .Z(red_accum_31__N_319[27])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1554_2_lut.INIT = "0x8888";
    LUT4 i4445_4_lut (.A(n33_adj_909), .B(n31_adj_910), .C(n29_adj_911), 
         .D(n6824), .Z(n6840)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i4445_4_lut.INIT = "0x5455";
    LUT4 i1452_2_lut (.A(n77[10]), .B(n3465), .Z(n97[10])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1452_2_lut.INIT = "0x2222";
    LUT4 i4132_4_lut (.A(off_max_cnt[24]), .B(n7831), .C(steady_count[17]), 
         .D(n6518), .Z(n6527)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;
    defparam i4132_4_lut.INIT = "0x0021";
    LUT4 pwm_count_17__I_0_59_i36_4_lut (.A(n24_adj_924), .B(n34_adj_925), 
         .C(n35_adj_926), .D(n6674), .Z(blu_pwm_N_785)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_59_i36_4_lut.INIT = "0xcacc";
    LUT4 pwm_count_17__I_0_59_i24_4_lut (.A(n16_adj_927), .B(n22_adj_928), 
         .C(n25_adj_929), .D(n6647), .Z(n24_adj_924)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_59_i24_4_lut.INIT = "0xcacc";
    LUT4 pwm_count_17__I_0_59_i34_4_lut (.A(n28_adj_930), .B(n32_adj_931), 
         .C(n35_adj_926), .D(n6680), .Z(n34_adj_925)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_59_i34_4_lut.INIT = "0xcacc";
    LUT4 i1665_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[31]), 
         .Z(curr_red_17__N_415[17])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1665_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1553_2_lut (.A(n172_adj_976[27]), .B(n3235), .Z(red_accum_31__N_319[26])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1553_2_lut.INIT = "0x8888";
    LUT4 i1552_2_lut (.A(n172_adj_976[26]), .B(n3235), .Z(red_accum_31__N_319[25])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1552_2_lut.INIT = "0x8888";
    LUT4 i4279_4_lut (.A(n33_adj_932), .B(n31_adj_933), .C(n29_adj_934), 
         .D(n6659), .Z(n6674)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4279_4_lut.INIT = "0x0100";
    LUT4 pwm_count_17__I_0_59_i16_3_lut (.A(n8_adj_835), .B(curr_blu[9]), 
         .C(n19_adj_935), .Z(n16_adj_927)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam pwm_count_17__I_0_59_i16_3_lut.INIT = "0xcaca";
    LUT4 pwm_count_17__I_0_59_i22_4_lut (.A(n6_adj_936), .B(n20_adj_937), 
         .C(n25_adj_929), .D(n6649), .Z(n22_adj_928)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_59_i22_4_lut.INIT = "0xcacc";
    LUT4 i1609_2_lut (.A(n147[22]), .B(n1979), .Z(n2549)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1609_2_lut.INIT = "0x2222";
    LUT4 i1664_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[29]), 
         .Z(curr_red_17__N_415[15])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1664_2_lut_3_lut.INIT = "0x1010";
    LUT4 i4252_4_lut (.A(n23_adj_938), .B(n21_adj_939), .C(n19_adj_935), 
         .D(n6635), .Z(n6647)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i4252_4_lut.INIT = "0x1011";
    LUT4 pwm_count_17__I_0_59_i28_4_lut (.A(n4_adj_940), .B(n26_adj_941), 
         .C(n31_adj_933), .D(n6671), .Z(n28_adj_930)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam pwm_count_17__I_0_59_i28_4_lut.INIT = "0xcacc";
    LUT4 pwm_count_17__I_0_59_i32_3_lut (.A(n30_adj_942), .B(curr_blu[17]), 
         .C(n35_adj_926), .Z(n32_adj_931)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam pwm_count_17__I_0_59_i32_3_lut.INIT = "0xcaca";
    LUT4 LessThan_76_i40_3_lut (.A(ramp_count[19]), .B(ramp_count[20]), 
         .C(ramp_max_cnt[25]), .Z(n40)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_76_i40_3_lut.INIT = "0x8e8e";
    LUT4 i4285_4_lut (.A(n33_adj_932), .B(n31_adj_933), .C(n29_adj_934), 
         .D(n6664), .Z(n6680)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i4285_4_lut.INIT = "0x5455";
    LUT4 LessThan_61_i33_rep_178_2_lut (.A(off_max_cnt[27]), .B(steady_count[16]), 
         .Z(n7831)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam LessThan_61_i33_rep_178_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i30_4_lut (.A(n10_adj_818), .B(n12_adj_943), 
         .C(n33_adj_932), .D(n15_adj_944), .Z(n30_adj_942)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam pwm_count_17__I_0_59_i30_4_lut.INIT = "0xccca";
    LUT4 i1551_2_lut (.A(n172_adj_976[25]), .B(n3235), .Z(red_accum_31__N_319[24])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1551_2_lut.INIT = "0x8888";
    LUT4 i4123_4_lut (.A(off_max_cnt[27]), .B(steady_count[14]), .C(steady_count[15]), 
         .D(n6506), .Z(n6518)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam i4123_4_lut.INIT = "0x8100";
    LUT4 pwm_count_17__I_0_59_i4_4_lut (.A(curr_blu[0]), .B(curr_blu[1]), 
         .C(pwm_count[1]), .D(pwm_count[0]), .Z(n4_adj_940)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;
    defparam pwm_count_17__I_0_59_i4_4_lut.INIT = "0x0c8e";
    LUT4 i4047_3_lut (.A(ramp_max_cnt[25]), .B(ramp_count[19]), .C(ramp_count[20]), 
         .Z(n6442)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam i4047_3_lut.INIT = "0x8181";
    LUT4 pwm_count_17__I_0_59_i26_3_lut (.A(n14_adj_945), .B(curr_blu[15]), 
         .C(n31_adj_933), .Z(n26_adj_941)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam pwm_count_17__I_0_59_i26_3_lut.INIT = "0xcaca";
    LUT4 i1463_2_lut (.A(n77[9]), .B(n3465), .Z(n97[9])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1463_2_lut.INIT = "0x2222";
    LUT4 i4264_4_lut (.A(n27_adj_946), .B(n25_adj_929), .C(n23_adj_938), 
         .D(n6638), .Z(n6659)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i4264_4_lut.INIT = "0x5455";
    LUT4 i4243_4_lut (.A(n21_adj_939), .B(n19_adj_935), .C(n17_adj_947), 
         .D(n6625), .Z(n6638)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4243_4_lut.INIT = "0x0001";
    LUT4 i4230_4_lut (.A(n15_adj_944), .B(n13_adj_948), .C(n11_adj_949), 
         .D(n6614), .Z(n6625)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4230_4_lut.INIT = "0x0001";
    LUT4 i1550_2_lut (.A(n172_adj_976[24]), .B(n3235), .Z(red_accum_31__N_319[23])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1550_2_lut.INIT = "0x8888";
    LUT4 i4219_4_lut (.A(n9_adj_950), .B(n7_adj_951), .C(pwm_count[2]), 
         .D(curr_blu[2]), .Z(n6614)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam i4219_4_lut.INIT = "0x1001";
    LUT4 i1549_2_lut (.A(n172_adj_976[23]), .B(n3235), .Z(red_accum_31__N_319[22])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1549_2_lut.INIT = "0x8888";
    LUT4 select_18_Select_4_i2_2_lut (.A(red_peak[30]), .B(BreatheRamp_s[2]), 
         .Z(red_intensity_step_31__N_165[4])) /* synthesis lut_function=(A (B)) */ ;
    defparam select_18_Select_4_i2_2_lut.INIT = "0x8888";
    LUT4 i1663_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[28]), 
         .Z(curr_red_17__N_415[14])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1663_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_59_i20_3_lut (.A(n18_adj_952), .B(curr_blu[12]), 
         .C(n25_adj_929), .Z(n20_adj_937)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam pwm_count_17__I_0_59_i20_3_lut.INIT = "0xcaca";
    LUT4 i4269_4_lut (.A(n27_adj_946), .B(n15_adj_944), .C(n13_adj_948), 
         .D(n11_adj_949), .Z(n6664)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i4269_4_lut.INIT = "0x5554";
    LUT4 pwm_count_17__I_0_59_i27_2_lut (.A(pwm_count[13]), .B(curr_blu[13]), 
         .Z(n27_adj_946)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i27_2_lut.INIT = "0x6666";
    LUT4 i1662_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[27]), 
         .Z(curr_red_17__N_415[13])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1662_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_58_i30_4_lut (.A(n10_adj_953), .B(n12_adj_954), 
         .C(n33_adj_909), .D(n15_adj_955), .Z(n30_adj_923)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam pwm_count_17__I_0_58_i30_4_lut.INIT = "0xccca";
    LUT4 pwm_count_17__I_0_59_i15_2_lut (.A(pwm_count[7]), .B(curr_blu[7]), 
         .Z(n15_adj_944)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i15_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i13_2_lut (.A(pwm_count[6]), .B(curr_blu[6]), 
         .Z(n13_adj_948)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i13_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i11_2_lut (.A(pwm_count[5]), .B(curr_blu[5]), 
         .Z(n11_adj_949)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i11_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i17_2_lut (.A(pwm_count[8]), .B(curr_blu[8]), 
         .Z(n17_adj_947)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i17_2_lut.INIT = "0x6666";
    LUT4 i1608_2_lut (.A(n147[21]), .B(n1979), .Z(n2547)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1608_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_59_i9_2_lut (.A(pwm_count[4]), .B(curr_blu[4]), 
         .Z(n9_adj_950)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i9_2_lut.INIT = "0x6666";
    LUT4 i1470_2_lut (.A(n147_adj_977[26]), .B(n1979), .Z(n2465)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1470_2_lut.INIT = "0x2222";
    LUT4 i1661_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[26]), 
         .Z(curr_red_17__N_415[12])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1661_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_59_i29_2_lut (.A(pwm_count[14]), .B(curr_blu[14]), 
         .Z(n29_adj_934)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i29_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i25_2_lut (.A(pwm_count[12]), .B(curr_blu[12]), 
         .Z(n25_adj_929)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i25_2_lut.INIT = "0x6666";
    LUT4 i1660_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[25]), 
         .Z(curr_red_17__N_415[11])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1660_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_58_i4_4_lut (.A(curr_red[0]), .B(curr_red[1]), 
         .C(pwm_count[1]), .D(pwm_count[0]), .Z(n4_adj_920)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;
    defparam pwm_count_17__I_0_58_i4_4_lut.INIT = "0x0c8e";
    LUT4 pwm_count_17__I_0_59_i23_2_lut (.A(pwm_count[11]), .B(curr_blu[11]), 
         .Z(n23_adj_938)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i23_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i21_2_lut (.A(pwm_count[10]), .B(curr_blu[10]), 
         .Z(n21_adj_939)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i21_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i7_2_lut (.A(pwm_count[3]), .B(curr_blu[3]), 
         .Z(n7_adj_951)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i7_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i19_2_lut (.A(pwm_count[9]), .B(curr_blu[9]), 
         .Z(n19_adj_935)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i19_2_lut.INIT = "0x6666";
    LUT4 i1_3_lut (.A(ramp_count[15]), .B(ramp_count[16]), .C(ramp_count[17]), 
         .Z(n5886)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.INIT = "0xfefe";
    LUT4 pwm_count_17__I_0_59_i33_2_lut (.A(pwm_count[16]), .B(curr_blu[16]), 
         .Z(n33_adj_932)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i33_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i31_2_lut (.A(pwm_count[15]), .B(curr_blu[15]), 
         .Z(n31_adj_933)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i31_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_59_i35_2_lut (.A(pwm_count[17]), .B(curr_blu[17]), 
         .Z(n35_adj_926)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_59_i35_2_lut.INIT = "0x6666";
    LUT4 i1659_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[24]), 
         .Z(curr_red_17__N_415[10])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1659_2_lut_3_lut.INIT = "0x1010";
    LUT4 select_19_Select_3_i2_2_lut (.A(grn_peak[29]), .B(BreatheRamp_s[2]), 
         .Z(grn_intensity_step_31__N_197[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam select_19_Select_3_i2_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_58_i14_3_lut_3_lut (.A(curr_red[13]), .B(curr_red[14]), 
         .C(pwm_count[14]), .Z(n14_adj_956)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_58_i14_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i1_2_lut_3_lut (.A(ramp_count[26]), .B(ramp_count[27]), .C(n52), 
         .Z(n899)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.INIT = "0xfefe";
    LUT4 i1436_4_lut (.A(n2220), .B(BlinkRate_s[2]), .C(n899), .D(n202[3]), 
         .Z(n212[0])) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1436_4_lut.INIT = "0xc888";
    LUT4 i1489_2_lut (.A(n147_adj_977[7]), .B(n1979), .Z(n2503)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1489_2_lut.INIT = "0x2222";
    LUT4 i4400_2_lut_4_lut (.A(pwm_count[8]), .B(curr_red[8]), .C(pwm_count[4]), 
         .D(curr_red[4]), .Z(n6795)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;
    defparam i4400_2_lut_4_lut.INIT = "0x9009";
    LUT4 i1658_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[23]), 
         .Z(curr_red_17__N_415[9])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1658_2_lut_3_lut.INIT = "0x1010";
    LUT4 pwm_count_17__I_0_58_i26_3_lut (.A(n14_adj_956), .B(curr_red[15]), 
         .C(n31_adj_910), .Z(n26_adj_921)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam pwm_count_17__I_0_58_i26_3_lut.INIT = "0xcaca";
    LUT4 pwm_count_17__I_0_58_i18_3_lut_3_lut (.A(curr_red[10]), .B(curr_red[11]), 
         .C(pwm_count[11]), .Z(n18_adj_957)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_58_i18_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i4414_2_lut_4_lut (.A(pwm_count[11]), .B(curr_red[11]), .C(pwm_count[10]), 
         .D(curr_red[10]), .Z(n6809)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;
    defparam i4414_2_lut_4_lut.INIT = "0x9009";
    LUT4 LessThan_76_i30_4_lut (.A(n26_adj_958), .B(ramp_count[14]), .C(ramp_max_cnt[25]), 
         .D(ramp_count[13]), .Z(n30_adj_922)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam LessThan_76_i30_4_lut.INIT = "0x8f0e";
    LUT4 select_20_Select_4_i2_2_lut (.A(blu_peak[30]), .B(BreatheRamp_s[2]), 
         .Z(blu_intensity_step_31__N_229[4])) /* synthesis lut_function=(A (B)) */ ;
    defparam select_20_Select_4_i2_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_58_i6_3_lut_3_lut (.A(curr_red[2]), .B(curr_red[3]), 
         .C(pwm_count[3]), .Z(n6_adj_915)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_58_i6_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i4424_4_lut (.A(n27_adj_959), .B(n25), .C(n23_adj_917), .D(n6798), 
         .Z(n6819)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i4424_4_lut.INIT = "0x5455";
    LUT4 i1477_2_lut (.A(n147_adj_977[19]), .B(n1979), .Z(n2479)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1477_2_lut.INIT = "0x2222";
    LUT4 i4403_4_lut (.A(n21_adj_918), .B(n19_adj_914), .C(n17_adj_960), 
         .D(n6785), .Z(n6798)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4403_4_lut.INIT = "0x0001";
    LUT4 i1657_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[22]), 
         .Z(curr_red_17__N_415[8])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1657_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1471_2_lut (.A(n147_adj_977[25]), .B(n1979), .Z(n2467)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1471_2_lut.INIT = "0x2222";
    LUT4 i409_4_lut (.A(n22_adj_961), .B(ramp_count[12]), .C(ramp_count[11]), 
         .D(ramp_max_cnt[25]), .Z(n26_adj_958)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!((D)+!C))) */ ;
    defparam i409_4_lut.INIT = "0xecfe";
    LUT4 i1480_2_lut (.A(n147_adj_977[16]), .B(n1979), .Z(n2485)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1480_2_lut.INIT = "0x2222";
    LUT4 i4390_4_lut (.A(n15_adj_955), .B(n13_adj_962), .C(n11_adj_963), 
         .D(n6774), .Z(n6785)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4390_4_lut.INIT = "0x0001";
    LUT4 i4_1_lut (.A(rst_c), .Z(n2)) /* synthesis lut_function=(!(A)) */ ;
    defparam i4_1_lut.INIT = "0x5555";
    LUT4 i4379_4_lut (.A(n9_adj_964), .B(n7_adj_965), .C(pwm_count[2]), 
         .D(curr_red[2]), .Z(n6774)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam i4379_4_lut.INIT = "0x1001";
    LUT4 i1488_2_lut (.A(n147_adj_977[8]), .B(n1979), .Z(n2501)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1488_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_58_i20_3_lut (.A(n18_adj_957), .B(curr_red[12]), 
         .C(n25), .Z(n20_adj_916)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam pwm_count_17__I_0_58_i20_3_lut.INIT = "0xcaca";
    LUT4 pwm_count_17__I_0_58_i12_3_lut_3_lut (.A(curr_red[7]), .B(curr_red[16]), 
         .C(pwm_count[16]), .Z(n12_adj_954)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_58_i12_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i77_2_lut (.A(n202[2]), .B(n202[3]), .Z(n626)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i77_2_lut.INIT = "0xeeee";
    LUT4 i408_4_lut (.A(n14_adj_966), .B(ramp_count[10]), .C(n18_adj_967), 
         .D(n6449), .Z(n22_adj_961)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;
    defparam i408_4_lut.INIT = "0xeefc";
    LUT4 mux_65_i17_4_lut (.A(red_accum[30]), .B(red_peak[30]), .C(n202[2]), 
         .D(n202[0]), .Z(curr_red_17__N_415[16])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam mux_65_i17_4_lut.INIT = "0xc0ca";
    LUT4 pwm_count_17__I_0_58_i10_3_lut_3_lut (.A(curr_red[5]), .B(curr_red[6]), 
         .C(pwm_count[6]), .Z(n10_adj_953)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_58_i10_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i1656_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[21]), 
         .Z(curr_red_17__N_415[7])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1656_2_lut_3_lut.INIT = "0x1010";
    LUT4 LessThan_61_i56_4_lut (.A(n40_adj_968), .B(n54), .C(n7707), .D(n6592), 
         .Z(n611)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam LessThan_61_i56_4_lut.INIT = "0xcacc";
    LUT4 mux_63_i17_4_lut (.A(grn_accum[30]), .B(grn_peak[30]), .C(n202[2]), 
         .D(n202[0]), .Z(curr_grn_17__N_433[16])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam mux_63_i17_4_lut.INIT = "0xc0ca";
    LUT4 i4436_2_lut_4_lut (.A(pwm_count[14]), .B(curr_red[14]), .C(pwm_count[13]), 
         .D(curr_red[13]), .Z(n6831)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;
    defparam i4436_2_lut_4_lut.INIT = "0x9009";
    LUT4 pwm_count_17__I_0_58_i8_3_lut_3_lut (.A(curr_red[4]), .B(curr_red[8]), 
         .C(pwm_count[8]), .Z(n8_adj_913)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_58_i8_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i1479_2_lut (.A(n147_adj_977[17]), .B(n1979), .Z(n2483)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1479_2_lut.INIT = "0x2222";
    LUT4 i1468_2_lut_2_lut (.A(RGB_color_s[0]), .B(RGB_color_s[1]), .Z(grn_set[0])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1468_2_lut_2_lut.INIT = "0x2222";
    LUT4 LessThan_61_i40_4_lut (.A(n28_adj_969), .B(n38_adj_970), .C(n7750), 
         .D(n6543), .Z(n40_adj_968)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam LessThan_61_i40_4_lut.INIT = "0xcacc";
    LUT4 mux_63_i16_4_lut (.A(grn_accum[29]), .B(grn_peak[29]), .C(n202[2]), 
         .D(n202[0]), .Z(curr_grn_17__N_433[15])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam mux_63_i16_4_lut.INIT = "0xc0ca";
    LUT4 i270_2_lut_3_lut (.A(red_intensity_step[4]), .B(n202[2]), .C(n202[3]), 
         .Z(n1911)) /* synthesis lut_function=(!(A (B+(C))+!A !(B+(C)))) */ ;
    defparam i270_2_lut_3_lut.INIT = "0x5656";
    LUT4 LessThan_76_i14_4_lut (.A(ramp_count[6]), .B(ramp_max_cnt[25]), 
         .C(n5855), .D(ramp_count[5]), .Z(n14_adj_966)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B)) */ ;
    defparam LessThan_76_i14_4_lut.INIT = "0xbbb3";
    LUT4 i1476_2_lut (.A(n147_adj_977[20]), .B(n1979), .Z(n2477)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1476_2_lut.INIT = "0x2222";
    LUT4 LessThan_76_i18_4_lut (.A(ramp_count[7]), .B(ramp_count[9]), .C(ramp_max_cnt[25]), 
         .D(ramp_count[8]), .Z(n18_adj_967)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam LessThan_76_i18_4_lut.INIT = "0x8f0e";
    LUT4 i4800_4_lut (.A(BlinkRate_s[2]), .B(n2220), .C(n803), .D(n202[2]), 
         .Z(n1975)) /* synthesis lut_function=((B (C (D))+!B (C+!(D)))+!A) */ ;
    defparam i4800_4_lut.INIT = "0xf577";
    LUT4 LessThan_61_i54_4_lut (.A(n48_adj_971), .B(n52_adj_972), .C(n7707), 
         .D(n6600), .Z(n54)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam LessThan_61_i54_4_lut.INIT = "0xcacc";
    LUT4 i237_2_lut_3_lut (.A(blu_intensity_step[4]), .B(n202[2]), .C(n202[3]), 
         .Z(n1846)) /* synthesis lut_function=(!(A (B+(C))+!A !(B+(C)))) */ ;
    defparam i237_2_lut_3_lut.INIT = "0x5656";
    LUT4 i1655_2_lut_3_lut (.A(n202[0]), .B(n202[2]), .C(red_accum[20]), 
         .Z(curr_red_17__N_415[6])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1655_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1475_2_lut (.A(n147_adj_977[21]), .B(n1979), .Z(n2475)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1475_2_lut.INIT = "0x2222";
    LUT4 i1607_2_lut (.A(n147[20]), .B(n1979), .Z(n2545)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1607_2_lut.INIT = "0x2222";
    LUT4 i205_2_lut_3_lut (.A(grn_intensity_step[3]), .B(n202[2]), .C(n202[3]), 
         .Z(n1782)) /* synthesis lut_function=(!(A (B+(C))+!A !(B+(C)))) */ ;
    defparam i205_2_lut_3_lut.INIT = "0x5656";
    LUT4 i288_4_lut (.A(n1034), .B(BlinkRate_s[2]), .C(n803), .D(n202[2]), 
         .Z(n1979)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C (D))+!B)) */ ;
    defparam i288_4_lut.INIT = "0xf3bb";
    LUT4 i4197_4_lut (.A(off_max_cnt[27]), .B(steady_count[25]), .C(steady_count[26]), 
         .D(n6574), .Z(n6592)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam i4197_4_lut.INIT = "0x8100";
    LUT4 i204_2_lut_3_lut (.A(grn_intensity_step[4]), .B(n202[2]), .C(n202[3]), 
         .Z(n1781)) /* synthesis lut_function=(!(A (B+(C))+!A !(B+(C)))) */ ;
    defparam i204_2_lut_3_lut.INIT = "0x5656";
    LUT4 i1469_2_lut (.A(n147_adj_977[27]), .B(n1979), .Z(n2463)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1469_2_lut.INIT = "0x2222";
    LUT4 LessThan_61_i28_4_lut (.A(n4_adj_973), .B(n26_adj_974), .C(n7704), 
         .D(n6513), .Z(n28_adj_969)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam LessThan_61_i28_4_lut.INIT = "0xcacc";
    LUT4 i279_3_lut (.A(n899), .B(n611), .C(n202[0]), .Z(n1034)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i279_3_lut.INIT = "0xcaca";
    LUT4 i4054_4_lut (.A(ramp_max_cnt[25]), .B(ramp_count[8]), .C(ramp_count[9]), 
         .D(ramp_count[7]), .Z(n6449)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+(D)))) */ ;
    defparam i4054_4_lut.INIT = "0x8001";
    LUT4 LessThan_61_i38_4_lut (.A(n30), .B(n36), .C(n7750), .D(n6545), 
         .Z(n38_adj_970)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam LessThan_61_i38_4_lut.INIT = "0xcacc";
    LUT4 i4429_4_lut (.A(n27_adj_959), .B(n15_adj_955), .C(n13_adj_962), 
         .D(n11_adj_963), .Z(n6824)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i4429_4_lut.INIT = "0x5554";
    LUT4 i1458_2_lut (.A(n147_adj_977[5]), .B(n1979), .Z(n2461)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1458_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_58_i29_2_lut (.A(pwm_count[14]), .B(curr_red[14]), 
         .Z(n29_adj_911)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i29_2_lut.INIT = "0x6666";
    LUT4 i1440_4_lut_3_lut (.A(n202[3]), .B(n202[1]), .C(n202[2]), .Z(n3235)) /* synthesis lut_function=(A+!((C)+!B)) */ ;
    defparam i1440_4_lut_3_lut.INIT = "0xaeae";
    LUT4 pwm_count_17__I_0_59_i14_3_lut_3_lut (.A(curr_blu[13]), .B(curr_blu[14]), 
         .C(pwm_count[14]), .Z(n14_adj_945)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_59_i14_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i4240_2_lut_4_lut (.A(pwm_count[8]), .B(curr_blu[8]), .C(pwm_count[4]), 
         .D(curr_blu[4]), .Z(n6635)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;
    defparam i4240_2_lut_4_lut.INIT = "0x9009";
    LUT4 pwm_count_17__I_0_59_i18_3_lut_3_lut (.A(curr_blu[10]), .B(curr_blu[11]), 
         .C(pwm_count[11]), .Z(n18_adj_952)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_59_i18_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 i4148_4_lut (.A(off_max_cnt[24]), .B(steady_count[18]), .C(steady_count[19]), 
         .D(n6527), .Z(n6543)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam i4148_4_lut.INIT = "0x8100";
    LUT4 i4254_2_lut_4_lut (.A(pwm_count[11]), .B(curr_blu[11]), .C(pwm_count[10]), 
         .D(curr_blu[10]), .Z(n6649)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;
    defparam i4254_2_lut_4_lut.INIT = "0x9009";
    LUT4 i1451_2_lut (.A(n147_adj_977[4]), .B(n1979), .Z(n2459)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1451_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_58_i27_2_lut (.A(pwm_count[13]), .B(curr_red[13]), 
         .Z(n27_adj_959)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i27_2_lut.INIT = "0x6666";
    LUT4 i1_4_lut_adj_4 (.A(ramp_count[3]), .B(ramp_count[1]), .C(ramp_count[4]), 
         .D(ramp_count[2]), .Z(n5855)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_4.INIT = "0xa080";
    LUT4 pwm_count_17__I_0_58_i15_2_lut (.A(pwm_count[7]), .B(curr_red[7]), 
         .Z(n15_adj_955)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i15_2_lut.INIT = "0x6666";
    LUT4 i1449_2_lut (.A(n147_adj_977[3]), .B(n1979), .Z(n2457)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1449_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_58_i13_2_lut (.A(pwm_count[6]), .B(curr_red[6]), 
         .Z(n13_adj_962)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i13_2_lut.INIT = "0x6666";
    LUT4 LessThan_61_i4_4_lut (.A(steady_count[0]), .B(steady_count[1]), 
         .C(off_max_cnt[27]), .D(off_max_cnt[24]), .Z(n4_adj_973)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C (D))+!B (C+(D)))) */ ;
    defparam LessThan_61_i4_4_lut.INIT = "0x8ecf";
    LUT4 pwm_count_17__I_0_59_i6_3_lut_3_lut (.A(curr_blu[2]), .B(curr_blu[3]), 
         .C(pwm_count[3]), .Z(n6_adj_936)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_59_i6_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 pwm_count_17__I_0_59_i12_3_lut_3_lut (.A(curr_blu[7]), .B(curr_blu[16]), 
         .C(pwm_count[16]), .Z(n12_adj_943)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam pwm_count_17__I_0_59_i12_3_lut_3_lut.INIT = "0x8e8e";
    LUT4 LessThan_61_i26_4_lut (.A(steady_count[13]), .B(steady_count[15]), 
         .C(off_max_cnt[27]), .D(steady_count[14]), .Z(n26_adj_974)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam LessThan_61_i26_4_lut.INIT = "0x8f0e";
    LUT4 LessThan_61_i23_2_lut (.A(off_max_cnt[27]), .B(steady_count[11]), 
         .Z(n23)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam LessThan_61_i23_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_58_i11_2_lut (.A(pwm_count[5]), .B(curr_red[5]), 
         .Z(n11_adj_963)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i11_2_lut.INIT = "0x6666";
    LUT4 i1446_2_lut (.A(n147[0]), .B(n1979), .Z(n2455)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1446_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_58_i17_2_lut (.A(pwm_count[8]), .B(curr_red[8]), 
         .Z(n17_adj_960)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i17_2_lut.INIT = "0x6666";
    LUT4 i430_2_lut (.A(n611), .B(n202[0]), .Z(n2220)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i430_2_lut.INIT = "0x4444";
    LUT4 i1588_2_lut (.A(n172[32]), .B(n3235), .Z(blu_accum_31__N_383[31])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1588_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_58_i9_2_lut (.A(pwm_count[4]), .B(curr_red[4]), 
         .Z(n9_adj_964)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i9_2_lut.INIT = "0x6666";
    LUT4 LessThan_61_i31_rep_51_2_lut (.A(off_max_cnt[27]), .B(steady_count[15]), 
         .Z(n7704)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam LessThan_61_i31_rep_51_2_lut.INIT = "0x6666";
    LUT4 i1_4_lut_adj_5 (.A(steady_count[27]), .B(n50_adj_975), .C(steady_count[26]), 
         .D(steady_count[25]), .Z(n803)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_5.INIT = "0xfffe";
    LUT4 mux_169_i31_4_lut (.A(n172[31]), .B(blu_peak[30]), .C(n3235), 
         .D(n626), .Z(blu_accum_31__N_383[30])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_169_i31_4_lut.INIT = "0xaca0";
    LUT4 i1587_2_lut (.A(n172[30]), .B(n3235), .Z(blu_accum_31__N_383[29])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1587_2_lut.INIT = "0x8888";
    LUT4 i1586_2_lut (.A(n172[29]), .B(n3235), .Z(blu_accum_31__N_383[28])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1586_2_lut.INIT = "0x8888";
    LUT4 i4118_4_lut (.A(off_max_cnt[27]), .B(off_max_cnt[24]), .C(steady_count[14]), 
         .D(steady_count[13]), .Z(n6513)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D)))) */ ;
    defparam i4118_4_lut.INIT = "0x8421";
    LUT4 i1435_2_lut (.A(n147_adj_977[2]), .B(n1979), .Z(n2453)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1435_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_58_i23_2_lut (.A(pwm_count[11]), .B(curr_red[11]), 
         .Z(n23_adj_917)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i23_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_58_i21_2_lut (.A(pwm_count[10]), .B(curr_red[10]), 
         .Z(n21_adj_918)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i21_2_lut.INIT = "0x6666";
    LUT4 i1431_2_lut (.A(n147_adj_977[1]), .B(n1979), .Z(n2451)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1431_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_58_i25_2_lut (.A(pwm_count[12]), .B(curr_red[12]), 
         .Z(n25)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i25_2_lut.INIT = "0x6666";
    LUT4 i358_3_lut (.A(n5874), .B(steady_count[24]), .C(steady_count[23]), 
         .Z(n50_adj_975)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i358_3_lut.INIT = "0xc8c8";
    LUT4 i1585_2_lut (.A(n172[28]), .B(n3235), .Z(blu_accum_31__N_383[27])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1585_2_lut.INIT = "0x8888";
    LUT4 pwm_count_17__I_0_58_i7_2_lut (.A(pwm_count[3]), .B(curr_red[3]), 
         .Z(n7_adj_965)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i7_2_lut.INIT = "0x6666";
    LUT4 i1428_2_lut (.A(n147_adj_977[0]), .B(n1979), .Z(n2449)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1428_2_lut.INIT = "0x2222";
    LUT4 i1_4_lut_adj_6 (.A(steady_count[22]), .B(n5877), .C(steady_count[21]), 
         .D(steady_count[20]), .Z(n5874)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_6.INIT = "0xa080";
    LUT4 pwm_count_17__I_0_58_i19_2_lut (.A(pwm_count[9]), .B(curr_red[9]), 
         .Z(n19_adj_914)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i19_2_lut.INIT = "0x6666";
    LUT4 i1584_2_lut (.A(n172[27]), .B(n3235), .Z(blu_accum_31__N_383[26])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1584_2_lut.INIT = "0x8888";
    LUT4 i1_4_lut_adj_7 (.A(steady_count[17]), .B(n5879), .C(steady_count[18]), 
         .D(steady_count[19]), .Z(n5877)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_7.INIT = "0x8000";
    LUT4 pwm_count_17__I_0_58_i33_2_lut (.A(pwm_count[16]), .B(curr_red[16]), 
         .Z(n33_adj_909)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i33_2_lut.INIT = "0x6666";
    LUT4 i1478_2_lut (.A(n147_adj_977[18]), .B(n1979), .Z(n2481)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1478_2_lut.INIT = "0x2222";
    LUT4 pwm_count_17__I_0_58_i31_2_lut (.A(pwm_count[15]), .B(curr_red[15]), 
         .Z(n31_adj_910)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i31_2_lut.INIT = "0x6666";
    LUT4 LessThan_61_i48_4_lut (.A(n24), .B(n46), .C(n7745), .D(n6587), 
         .Z(n48_adj_971)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam LessThan_61_i48_4_lut.INIT = "0xcacc";
    LUT4 i1583_2_lut (.A(n172[26]), .B(n3235), .Z(blu_accum_31__N_383[25])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1583_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i52_3_lut (.A(n50), .B(steady_count[27]), .C(off_max_cnt[27]), 
         .Z(n52_adj_972)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam LessThan_61_i52_3_lut.INIT = "0x8e8e";
    LUT4 i1591_2_lut (.A(n147[4]), .B(n1979), .Z(n2513)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1591_2_lut.INIT = "0x2222";
    LUT4 i1582_2_lut (.A(n172[25]), .B(n3235), .Z(blu_accum_31__N_383[24])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1582_2_lut.INIT = "0x8888";
    LUT4 i1581_2_lut (.A(n172[24]), .B(n3235), .Z(blu_accum_31__N_383[23])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1581_2_lut.INIT = "0x8888";
    LUT4 i1580_2_lut (.A(n172[23]), .B(n3235), .Z(blu_accum_31__N_383[22])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1580_2_lut.INIT = "0x8888";
    LUT4 i1579_2_lut (.A(n172[22]), .B(n3235), .Z(blu_accum_31__N_383[21])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1579_2_lut.INIT = "0x8888";
    LUT4 LessThan_61_i55_rep_54_2_lut (.A(off_max_cnt[27]), .B(steady_count[27]), 
         .Z(n7707)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam LessThan_61_i55_rep_54_2_lut.INIT = "0x6666";
    LUT4 pwm_count_17__I_0_58_i35_2_lut (.A(pwm_count[17]), .B(curr_red[17]), 
         .Z(n35)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam pwm_count_17__I_0_58_i35_2_lut.INIT = "0x6666";
    LUT4 i1578_2_lut (.A(n172[21]), .B(n3235), .Z(blu_accum_31__N_383[20])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1578_2_lut.INIT = "0x8888";
    LUT4 i1_4_lut_adj_8 (.A(steady_count[15]), .B(n5878), .C(steady_count[14]), 
         .D(steady_count[16]), .Z(n5879)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_8.INIT = "0xfffe";
    LUT4 i1577_2_lut (.A(n172[20]), .B(n3235), .Z(blu_accum_31__N_383[19])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1577_2_lut.INIT = "0x8888";
    pll_24M __ (.GND_net(GND_net), .clk12M_c(clk12M_c), .n2(n2), .OUTGLOBAL(clk24M));
    FD1P3XZ red_peak_i1 (.D(red_set[1]), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(red_peak[30])) /* synthesis LSE_LINE_FILE_ID=42, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=158, LSE_RLINE=158 */ ;
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
    
    wire clk12M_c /* synthesis is_clock=1 */ ;
    wire OUTGLOBAL /* synthesis is_clock=1 */ ;
    
    \pll_24M_ipgen_lscc_pll(DIVR="0",DIVF="63",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="12.000000")  lscc_pll_inst (.GND_net(GND_net), 
            .clk12M_c(clk12M_c), .n2(n2), .OUTGLOBAL(OUTGLOBAL));
    
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
    
    wire clk12M_c /* synthesis is_clock=1 */ ;
    wire OUTGLOBAL /* synthesis is_clock=1 */ ;
    
    wire feedback_w;
    
    PLL_B u_PLL_B (.REFERENCECLK(clk12M_c), .FEEDBACK(feedback_w), .DYNAMICDELAY7(GND_net), 
          .DYNAMICDELAY6(GND_net), .DYNAMICDELAY5(GND_net), .DYNAMICDELAY4(GND_net), 
          .DYNAMICDELAY3(GND_net), .DYNAMICDELAY2(GND_net), .DYNAMICDELAY1(GND_net), 
          .DYNAMICDELAY0(GND_net), .BYPASS(GND_net), .RESET_N(n2), .SCLK(GND_net), 
          .SDI(GND_net), .LATCH(GND_net), .INTFBOUT(feedback_w), .OUTGLOBAL(OUTGLOBAL)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=43, LSE_LCOL=41, LSE_RCOL=316, LSE_LLINE=17, LSE_RLINE=17 */ ;
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
