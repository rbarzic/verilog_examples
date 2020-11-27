// Verilog netlist produced by program LSE :  version Radiant Software (64-bit) 1.1.0.165.1
// Netlist written on Tue Apr 30 09:17:14 2019
// Source file index table: 
// Object locations will have the form @<file_index>(<first_ line>[<left_column>],<last_line>[<right_column>])
// file 0 "/home/ronan/perso/github/verilog_examples/ledtest_ice40up5k/impl_1/pll_24M/rtl/pll_24M.v"
// file 1 "/home/ronan/perso/github/verilog_examples/ledtest_ice40up5k/source/impl_1/LED_control.v"
// file 2 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/CCU2_B.v"
// file 3 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3BZ.v"
// file 4 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3DZ.v"
// file 5 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3IZ.v"
// file 6 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/FD1P3JZ.v"
// file 7 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/HSOSC.v"
// file 8 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/HSOSC1P8V.v"
// file 9 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/IB.v"
// file 10 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/IFD1P3AZ.v"
// file 11 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/LSOSC.v"
// file 12 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/LSOSC1P8V.v"
// file 13 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/OB.v"
// file 14 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/OBZ_B.v"
// file 15 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/OFD1P3AZ.v"
// file 16 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/PDP4K.v"
// file 17 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/RGB.v"
// file 18 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/RGB1P8V.v"
// file 19 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/SP256K.v"
// file 20 "/opt/latticesemi/radiant/1.1/cae_library/simulation/verilog/iCE40UP/legacy.v"

//
// Verilog Description of module LED_control
//

module LED_control (input clk12M, input rst, input [1:0]color_sel, input RGB_Blink_En, 
            output red_pwm, output blu_pwm, output grn_pwm);
    
    (* is_clock=1 *) wire clk12M_c;
    (* is_clock=1 *) wire clk24M;
    
    wire GND_net, VCC_net, rst_c, red_pwm_c, blu_pwm_c, grn_pwm_c, 
        RGB_color_c_1, RGB_color_c_0;
    wire [3:0]RGB_color_s;
    
    wire n2616, n139;
    wire [3:0]BreatheRamp_s;
    
    wire n140, n141, n2617;
    wire [3:0]BlinkRate_s;
    
    wire n2618, n2619, n4873;
    wire [1:0]grn_set;
    wire [1:0]blu_set;
    wire [31:0]red_peak;
    
    wire n4913, n4929, n7044;
    wire [31:0]grn_peak;
    
    wire n7042, n9090;
    wire [31:0]blu_peak;
    
    wire n35, n34, n33, n32, n31, n30, n29, n7122, n28, n27, 
        n26, n25;
    wire [27:0]off_max_cnt;
    
    wire n24, n23, n22, n21, n20, n19, n18, n17, n16, n15, 
        n14, n7040, n13, n12, n7002, n11;
    wire [27:0]ramp_max_cnt;
    
    wire n10, n9, n8, n7, n6, n4, n35_adj_787, n34_adj_788, 
        n33_adj_789, n32_adj_790, n31_adj_791, n30_adj_792, n29_adj_793, 
        n28_adj_794, n27_adj_795, n26_adj_796, n25_adj_797, n24_adj_798, 
        n23_adj_799, n22_adj_800, n21_adj_801, n20_adj_802, n19_adj_803, 
        n18_adj_804, n17_adj_805, n16_adj_806, n15_adj_807, n14_adj_808, 
        n13_adj_809, n12_adj_810, n11_adj_811, n10_adj_812, n9_adj_813, 
        n8_adj_814, n7_adj_815, n6_adj_816;
    wire [31:0]red_intensity_step;
    
    wire n4919, n7120, n4_adj_817, n6961, n167, n166, n165, n164, 
        n163, n162, n161, n160, n159, n158, n157, n156, n155, 
        n154, n153, n152, n151, n150, n149, n148, n147_2, n146, 
        n145;
    wire [31:0]grn_intensity_step;
    
    wire n144, n143, n142, n141_adj_818, n140_adj_819, n139_adj_820, 
        n7038;
    wire [31:0]blu_intensity_step;
    
    wire n35_adj_821;
    wire [27:0]ramp_count;
    wire [27:0]steady_count;
    wire [31:0]red_accum;
    wire [31:0]grn_accum;
    wire [31:0]blu_accum;
    wire [17:0]curr_red;
    wire [17:0]curr_grn;
    wire [17:0]curr_blu;
    wire [17:0]pwm_count;
    
    wire n2, n4388, n2640, n3447, n143_adj_822, BreatheRamp_s_3__N_5_c_0, 
        red_peak_31__N_489, n7118, n34_adj_823, n33_adj_824, n32_adj_825, 
        n7000, n7036, n31_adj_826, n30_adj_827, n29_adj_828, n28_adj_829, 
        n27_adj_830, n26_adj_831, n25_adj_832, n7116, n24_adj_833, 
        n23_adj_834, n22_adj_835, n21_adj_836, n10400, n20_adj_837, 
        n4911, n19_adj_838, n18_adj_839, n17_adj_840, n16_adj_841, 
        n15_adj_842, n14_adj_843, n13_adj_844, n12_adj_845, n11_adj_846, 
        n10_adj_847, n9_adj_848, n8_adj_849, n7_adj_850, n6_adj_851, 
        n6998, n4_adj_852, n137, n138, n139_adj_853, n140_adj_854, 
        n141_adj_855, n142_adj_856, n143_adj_857, n144_adj_858, n145_adj_859, 
        n146_adj_860, n52, n48, n44, n42, n40, n4939, n6985, 
        n142_adj_861, n2626, n2628, n2629, n4927, n7114, n151_adj_862, 
        n2634, n4631, n10983, n119, n120, n121, n122, n123, 
        n124, n125, n126, n127, n128, n129, n130, n131, n132, 
        n133, n134, n135, n136, n4909, n4390, n32_adj_863, n7112, 
        n4907, n10397, n7033;
    wire [31:0]red_intensity_step_31__N_165;
    
    wire n7110, n10392;
    wire [31:0]grn_intensity_step_31__N_197;
    
    wire n4905, n10989, n8529, n42_adj_864, n8554, n50, n4903;
    wire [31:0]blu_intensity_step_31__N_229;
    
    wire n4917, n2637, n611, n9154, n10383, n803, n7108, n7031, 
        n6996, n6983, n11052, n9152, n7029, n11049, n7106, n899, 
        n7104, n6981, n6994, n7102, n11046, n7100, n7027, n6973, 
        n6979, n6992, n7025, n7098, n7096, n10354, n7023, n7094, 
        n6969, n28_adj_865, n24_adj_866, n20_adj_867, n4875, n7091, 
        n11043, n4971, n4969, n4967, n4965, n6194, n4877, n4901, 
        n4879, n4881, n7089, n4899, n4915, n4883, n9488, n9149, 
        n4861, n7021, n16_adj_868, n12_adj_869, n6977, n11241, n4937, 
        n9482, n54, n9146, n52_adj_870, n50_adj_871, n48_adj_872, 
        n4897, n4392, n129_adj_873, n128_adj_874, n127_adj_875, n126_adj_876, 
        n125_adj_877, n124_adj_878, n123_adj_879, n122_adj_880, n121_adj_881, 
        n120_adj_882, n119_adj_883, n6990, n7087, n11040, n7085, 
        n9479, n6965, n7083, n10351, n9144, n11037, n7019, n7081, 
        n46, n44_adj_884, n42_adj_885, n40_adj_886, n38, n36, n34_adj_887, 
        n6967, n32_adj_888, n6971, n30_adj_889, n28_adj_890, n7017, 
        n26_adj_891, n7079, n24_adj_892, n23_adj_893, n5963, n22_adj_894, 
        n20_adj_895, n7077, n6988, n18_adj_896, n12_adj_897, n10_adj_898, 
        n8_adj_899, n6_adj_900, n4_adj_901, n11124, n11238, n6959, 
        n167_adj_902, n166_adj_903, n165_adj_904, n164_adj_905, n163_adj_906, 
        n162_adj_907, n161_adj_908, n160_adj_909, n159_adj_910, n158_adj_911, 
        n157_adj_912, n156_adj_913, n155_adj_914, n154_adj_915, n153_adj_916, 
        n152_adj_917, n151_adj_918, n150_adj_919, n149_adj_920, n148_adj_921, 
        n147_adj_922, n146_adj_923, n145_adj_924, n144_adj_925;
    wire [31:0]red_accum_31__N_319;
    wire [31:0]grn_accum_31__N_351;
    wire [31:0]blu_accum_31__N_383;
    
    wire n11034;
    wire [17:0]curr_red_17__N_415;
    wire [17:0]curr_grn_17__N_433;
    wire [17:0]curr_blu_17__N_451;
    
    wire n4895, n6963, n150_adj_926, n154_adj_927, n8525, n4893, 
        n24_adj_928, n9472, n4891, red_pwm_N_784, grn_pwm_N_786, blu_pwm_N_785, 
        n7075, n9467, n4863, n7073, n4963, n4961, n11031, n4959, 
        n4957, n4955, n4953, n4951, n4949, n4947, n115, n7015, 
        n114, n113, n112, n111, n110, n109, n108, n7071, n107, 
        n106, n105, n104, n103, n102, n101, n100, n99, n98, 
        n95, n94, n93, n92, n91, n90, n89, n7069, n88, n11028, 
        n87, n4871, n3039, n4196, n4195, n4889, n86, n11235, 
        n7067, n85, n9135, n84, n7065, n11025, n83, n4325, n9457, 
        n11022, n9132, n9455, n4867, n141_adj_929, n142_adj_930, 
        n143_adj_931, n147_adj_932, n82, n7062, n4260, n7060, n7058, 
        n146_adj_933, n7056, n4865, n4925, n81, n80, n79, n78, 
        n11016, n4935, n7013, n4887, n146_adj_934, n145_adj_935, 
        n144_adj_936, n7054, n11013, n7052, n9446, n7011, n6975, 
        n4945, n4933, n7050, n11232, n143_adj_937, n153_adj_938, 
        n9443, n11007, n7048, n4943, n7009, n4941, n7007, n4931, 
        n144_adj_939, n145_adj_940, n142_adj_941, n141_adj_942, n148_adj_943, 
        n140_adj_944, n139_adj_945, n138_adj_946, n137_adj_947, n136_adj_948, 
        n135_adj_949, n134_adj_950, n133_adj_951, n132_adj_952, n131_adj_953, 
        n130_adj_954, n139_adj_955, n140_adj_956, n4869, n11001, n7046, 
        n152_adj_957, n149_adj_958, n4923, n4921, n7004, n4885, 
        n168, n167_adj_959, n166_adj_960, n165_adj_961, n164_adj_962, 
        n163_adj_963, n162_adj_964, n161_adj_965, n160_adj_966, n159_adj_967, 
        n158_adj_968, n157_adj_969, n156_adj_970, n155_adj_971, n9125, 
        n9433, n9123, n10998, n11229, n11226, n9422, n9120, n9408, 
        n11223, n9402, n9399, n11220, n9392, n10995, n9387, n11217, 
        n11214, n11091, n9377, n9112, n9375, n11088, n9110, n11211, 
        n11085, n9366, n11208, n9363, n9104, n11082, n9353, n11121, 
        n11205, n11079, n11202, n9342, n11199, n9097, n11196, 
        n9328, n9322, n11073, n11193, n9319, n11118, n11067, n4_adj_972, 
        n9312, n11190, n8558, n9307, n11187, n8251, n11064, n11184, 
        n9297, n9295, n11061, n11181, n9286, n11115, n11058, n9283, 
        n9273, n11055, n32_adj_973, n11112, n9262, n11178, n11175, 
        n9248, n11172, n11169, n29_adj_974, n11019, n9240, n10478, 
        n9237, n11166, n9235, n10471, n9233, n28_adj_975, n11010, 
        n11163, n27_adj_976, n9226, n26_adj_977, n10463, n10992, 
        n9222, n11004, n11160, n9217, n11103, n9210, n11157, n11109, 
        n11154, n11151, n9198, n9195, n11106, n11148, n9193, n9191, 
        n11100, n10442, n11145, n11142, n9184, n11094, n11076, 
        n9180, n11139, n5, n11070, n9175, n11136, n11097, n11133, 
        n8209, n11130, n5_adj_978, n8_adj_979, n9166, n9164, n9161, 
        n11127;
    
    VHI i2 (.Z(VCC_net));
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i0 (.D(n115), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[0]));
    defparam pwm_count_424__i0.REGSET = "RESET";
    defparam pwm_count_424__i0.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i1978_2_lut (.A(n156), .B(n5963), 
            .Z(red_accum_31__N_319[14]));
    defparam i1978_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i2012_2_lut (.A(n153_adj_916), .B(n5963), 
            .Z(blu_accum_31__N_383[17]));
    defparam i2012_2_lut.INIT = "0x8888";
    FD1P3XZ curr_blu_i14 (.D(curr_blu_17__N_451[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[14]));
    defparam curr_blu_i14.REGSET = "RESET";
    defparam curr_blu_i14.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i13 (.D(curr_blu_17__N_451[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[13]));
    defparam curr_blu_i13.REGSET = "RESET";
    defparam curr_blu_i13.SRMODE = "ASYNC";
    FD1P3XZ grn_peak_i1 (.D(grn_set[0]), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(grn_peak[29]));
    defparam grn_peak_i1.REGSET = "RESET";
    defparam grn_peak_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i12 (.D(curr_blu_17__N_451[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[12]));
    defparam curr_blu_i12.REGSET = "RESET";
    defparam curr_blu_i12.SRMODE = "ASYNC";
    FD1P3XZ blu_peak_i1 (.D(blu_set[1]), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(blu_peak[30]));
    defparam blu_peak_i1.REGSET = "RESET";
    defparam blu_peak_i1.SRMODE = "ASYNC";
    IB clk12M_pad (.I(clk12M), .O(clk12M_c));
    FD1P3XZ curr_blu_i11 (.D(curr_blu_17__N_451[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[11]));
    defparam curr_blu_i11.REGSET = "RESET";
    defparam curr_blu_i11.SRMODE = "ASYNC";
    IB rst_pad (.I(rst), .O(rst_c));
    FD1P3XZ off_max_cnt_i1 (.D(BlinkRate_s[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(off_max_cnt[24]));
    defparam off_max_cnt_i1.REGSET = "SET";
    defparam off_max_cnt_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i10 (.D(curr_blu_17__N_451[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[10]));
    defparam curr_blu_i10.REGSET = "RESET";
    defparam curr_blu_i10.SRMODE = "ASYNC";
    FD1P3XZ blink_state_FSM_i0 (.D(n2629), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(n2619));
    defparam blink_state_FSM_i0.REGSET = "SET";
    defparam blink_state_FSM_i0.SRMODE = "ASYNC";
    FD1P3XZ ramp_max_cnt_i1 (.D(BreatheRamp_s[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(ramp_max_cnt[26]));
    defparam ramp_max_cnt_i1.REGSET = "RESET";
    defparam ramp_max_cnt_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i9 (.D(curr_blu_17__N_451[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[9]));
    defparam curr_blu_i9.REGSET = "RESET";
    defparam curr_blu_i9.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i8 (.D(curr_blu_17__N_451[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[8]));
    defparam curr_blu_i8.REGSET = "RESET";
    defparam curr_blu_i8.SRMODE = "ASYNC";
    FD1P3XZ blink_state_FSM_i2 (.D(n8529), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(n2617));
    defparam blink_state_FSM_i2.REGSET = "RESET";
    defparam blink_state_FSM_i2.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i7 (.D(curr_blu_17__N_451[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[7]));
    defparam curr_blu_i7.REGSET = "RESET";
    defparam curr_blu_i7.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i6 (.D(curr_blu_17__N_451[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[6]));
    defparam curr_blu_i6.REGSET = "RESET";
    defparam curr_blu_i6.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i5 (.D(curr_blu_17__N_451[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[5]));
    defparam curr_blu_i5.REGSET = "RESET";
    defparam curr_blu_i5.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i4 (.D(curr_blu_17__N_451[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[4]));
    defparam curr_blu_i4.REGSET = "RESET";
    defparam curr_blu_i4.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i3 (.D(curr_blu_17__N_451[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[3]));
    defparam curr_blu_i3.REGSET = "RESET";
    defparam curr_blu_i3.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i1984_2_lut (.A(n150), .B(n5963), 
            .Z(red_accum_31__N_319[20]));
    defparam i1984_2_lut.INIT = "0x8888";
    FD1P3XZ curr_blu_i2 (.D(curr_blu_17__N_451[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[2]));
    defparam curr_blu_i2.REGSET = "RESET";
    defparam curr_blu_i2.SRMODE = "ASYNC";
    FD1P3XZ red_intensity_step_i1 (.D(red_intensity_step_31__N_165[3]), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(red_intensity_step[3]));
    defparam red_intensity_step_i1.REGSET = "RESET";
    defparam red_intensity_step_i1.SRMODE = "ASYNC";
    FD1P3XZ grn_intensity_step_i1 (.D(grn_intensity_step_31__N_197[2]), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(grn_intensity_step[2]));
    defparam grn_intensity_step_i1.REGSET = "RESET";
    defparam grn_intensity_step_i1.SRMODE = "ASYNC";
    FD1P3XZ blu_intensity_step_i1 (.D(blu_intensity_step_31__N_229[3]), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(blu_intensity_step[3]));
    defparam blu_intensity_step_i1.REGSET = "RESET";
    defparam blu_intensity_step_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i1 (.D(curr_blu_17__N_451[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[1]));
    defparam curr_blu_i1.REGSET = "RESET";
    defparam curr_blu_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i17 (.D(curr_grn_17__N_433[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[17]));
    defparam curr_grn_i17.REGSET = "RESET";
    defparam curr_grn_i17.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i16 (.D(curr_grn_17__N_433[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[16]));
    defparam curr_grn_i16.REGSET = "RESET";
    defparam curr_grn_i16.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i15 (.D(curr_grn_17__N_433[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[15]));
    defparam curr_grn_i15.REGSET = "RESET";
    defparam curr_grn_i15.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i14 (.D(curr_grn_17__N_433[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[14]));
    defparam curr_grn_i14.REGSET = "RESET";
    defparam curr_grn_i14.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i2011_2_lut (.A(n154_adj_915), .B(n5963), 
            .Z(blu_accum_31__N_383[16]));
    defparam i2011_2_lut.INIT = "0x8888";
    FD1P3XZ curr_grn_i13 (.D(curr_grn_17__N_433[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[13]));
    defparam curr_grn_i13.REGSET = "RESET";
    defparam curr_grn_i13.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i12 (.D(curr_grn_17__N_433[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[12]));
    defparam curr_grn_i12.REGSET = "RESET";
    defparam curr_grn_i12.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i11 (.D(curr_grn_17__N_433[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[11]));
    defparam curr_grn_i11.REGSET = "RESET";
    defparam curr_grn_i11.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i10 (.D(curr_grn_17__N_433[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[10]));
    defparam curr_grn_i10.REGSET = "RESET";
    defparam curr_grn_i10.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i9 (.D(curr_grn_17__N_433[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[9]));
    defparam curr_grn_i9.REGSET = "RESET";
    defparam curr_grn_i9.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i8 (.D(curr_grn_17__N_433[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[8]));
    defparam curr_grn_i8.REGSET = "RESET";
    defparam curr_grn_i8.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i7 (.D(curr_grn_17__N_433[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[7]));
    defparam curr_grn_i7.REGSET = "RESET";
    defparam curr_grn_i7.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i2010_2_lut (.A(n155_adj_914), .B(n5963), 
            .Z(blu_accum_31__N_383[15]));
    defparam i2010_2_lut.INIT = "0x8888";
    FD1P3XZ curr_grn_i6 (.D(curr_grn_17__N_433[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[6]));
    defparam curr_grn_i6.REGSET = "RESET";
    defparam curr_grn_i6.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i5 (.D(curr_grn_17__N_433[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[5]));
    defparam curr_grn_i5.REGSET = "RESET";
    defparam curr_grn_i5.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i4 (.D(curr_grn_17__N_433[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[4]));
    defparam curr_grn_i4.REGSET = "RESET";
    defparam curr_grn_i4.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i3 (.D(curr_grn_17__N_433[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[3]));
    defparam curr_grn_i3.REGSET = "RESET";
    defparam curr_grn_i3.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i2 (.D(curr_grn_17__N_433[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[2]));
    defparam curr_grn_i2.REGSET = "RESET";
    defparam curr_grn_i2.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i0 (.D(curr_red_17__N_415[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[0]));
    defparam curr_red_i0.REGSET = "RESET";
    defparam curr_red_i0.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i0 (.D(curr_grn_17__N_433[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[0]));
    defparam curr_grn_i0.REGSET = "RESET";
    defparam curr_grn_i0.SRMODE = "ASYNC";
    FD1P3XZ curr_grn_i1 (.D(curr_grn_17__N_433[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_grn[1]));
    defparam curr_grn_i1.REGSET = "RESET";
    defparam curr_grn_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i17 (.D(curr_red_17__N_415[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[17]));
    defparam curr_red_i17.REGSET = "RESET";
    defparam curr_red_i17.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i0 (.D(curr_blu_17__N_451[0]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[0]));
    defparam curr_blu_i0.REGSET = "RESET";
    defparam curr_blu_i0.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i16 (.D(curr_red_17__N_415[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[16]));
    defparam curr_red_i16.REGSET = "RESET";
    defparam curr_red_i16.SRMODE = "ASYNC";
    FD1P3XZ red_pwm_i0 (.D(red_pwm_N_784), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_pwm_c));
    defparam red_pwm_i0.REGSET = "RESET";
    defparam red_pwm_i0.SRMODE = "ASYNC";
    (* lut_function="(!(A (B ((D)+!C)+!B !(C))+!A (B (C)+!B (C+(D)))))" *) LUT4 i4429_4_lut (.A(off_max_cnt[24]), 
            .B(steady_count[7]), .C(steady_count[8]), .D(n9110), .Z(n9120));
    defparam i4429_4_lut.INIT = "0x24a5";
    FD1P3XZ curr_red_i15 (.D(curr_red_17__N_415[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[15]));
    defparam curr_red_i15.REGSET = "RESET";
    defparam curr_red_i15.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i14 (.D(curr_red_17__N_415[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[14]));
    defparam curr_red_i14.REGSET = "RESET";
    defparam curr_red_i14.SRMODE = "ASYNC";
    FD1P3XZ blu_pwm_i1 (.D(blu_pwm_N_785), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_pwm_c));
    defparam blu_pwm_i1.REGSET = "RESET";
    defparam blu_pwm_i1.SRMODE = "ASYNC";
    FD1P3XZ BlinkRate_s_i1 (.D(BreatheRamp_s_3__N_5_c_0), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(BlinkRate_s[2]));
    defparam BlinkRate_s_i1.REGSET = "SET";
    defparam BlinkRate_s_i1.SRMODE = "ASYNC";
    FD1P3XZ grn_pwm_i2 (.D(grn_pwm_N_786), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_pwm_c));
    defparam grn_pwm_i2.REGSET = "RESET";
    defparam grn_pwm_i2.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i13 (.D(curr_red_17__N_415[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[13]));
    defparam curr_red_i13.REGSET = "RESET";
    defparam curr_red_i13.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i12 (.D(curr_red_17__N_415[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[12]));
    defparam curr_red_i12.REGSET = "RESET";
    defparam curr_red_i12.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i2009_2_lut (.A(n156_adj_913), .B(n5963), 
            .Z(blu_accum_31__N_383[14]));
    defparam i2009_2_lut.INIT = "0x8888";
    FD1P3XZ curr_red_i11 (.D(curr_red_17__N_415[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[11]));
    defparam curr_red_i11.REGSET = "RESET";
    defparam curr_red_i11.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i2008_2_lut (.A(n157_adj_912), .B(n5963), 
            .Z(blu_accum_31__N_383[13]));
    defparam i2008_2_lut.INIT = "0x8888";
    (* lut_function="(!((B)+!A))" *) LUT4 i2031_2_lut (.A(n139_adj_945), .B(n4392), 
            .Z(n4931));
    defparam i2031_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (((D)+!C)+!B)+!A (B+(C+(D)))))" *) LUT4 i4419_4_lut (.A(off_max_cnt[24]), 
            .B(steady_count[5]), .C(steady_count[6]), .D(n9104), .Z(n9110));
    defparam i4419_4_lut.INIT = "0x0081";
    FD1P3XZ ramp_count__i21 (.D(n4879), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[21]));
    defparam ramp_count__i21.REGSET = "RESET";
    defparam ramp_count__i21.SRMODE = "ASYNC";
    pll_24M __ (.GND_net(GND_net), .clk12M_c(clk12M_c), .n2(n2), .clk24M(clk24M));
    FD1P3XZ curr_red_i10 (.D(curr_red_17__N_415[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[10]));
    defparam curr_red_i10.REGSET = "RESET";
    defparam curr_red_i10.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i9 (.D(curr_red_17__N_415[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[9]));
    defparam curr_red_i9.REGSET = "RESET";
    defparam curr_red_i9.SRMODE = "ASYNC";
    (* lut_function="(!(A+!(B (C (D))+!B !(C+(D)))))" *) LUT4 i4413_4_lut (.A(n10442), 
            .B(off_max_cnt[24]), .C(steady_count[2]), .D(steady_count[3]), 
            .Z(n9104));
    defparam i4413_4_lut.INIT = "0x4001";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 LessThan_61_i9_rep_132_2_lut (.A(off_max_cnt[27]), 
            .B(steady_count[4]), .Z(n10442));
    defparam LessThan_61_i9_rep_132_2_lut.INIT = "0x6666";
    (* lut_function="(!((B)+!A))" *) LUT4 i1882_2_lut (.A(n86), .B(n6194), 
            .Z(n106));
    defparam i1882_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i168_2_lut (.A(n899), .B(n2618), .Z(n2637));
    defparam i168_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i2007_2_lut (.A(n158_adj_911), .B(n5963), 
            .Z(blu_accum_31__N_383[12]));
    defparam i2007_2_lut.INIT = "0x8888";
    FD1P3XZ curr_red_i8 (.D(curr_red_17__N_415[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[8]));
    defparam curr_red_i8.REGSET = "RESET";
    defparam curr_red_i8.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i7 (.D(curr_red_17__N_415[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[7]));
    defparam curr_red_i7.REGSET = "RESET";
    defparam curr_red_i7.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i16 (.D(n4889), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[16]));
    defparam ramp_count__i16.REGSET = "RESET";
    defparam ramp_count__i16.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i2006_2_lut (.A(n159_adj_910), .B(n5963), 
            .Z(blu_accum_31__N_383[11]));
    defparam i2006_2_lut.INIT = "0x8888";
    FD1P3XZ curr_red_i6 (.D(curr_red_17__N_415[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[6]));
    defparam curr_red_i6.REGSET = "RESET";
    defparam curr_red_i6.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i5 (.D(curr_red_17__N_415[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[5]));
    defparam curr_red_i5.REGSET = "RESET";
    defparam curr_red_i5.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i4 (.D(curr_red_17__N_415[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[4]));
    defparam curr_red_i4.REGSET = "RESET";
    defparam curr_red_i4.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i3 (.D(curr_red_17__N_415[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[3]));
    defparam curr_red_i3.REGSET = "RESET";
    defparam curr_red_i3.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i2005_2_lut (.A(n160_adj_909), .B(n5963), 
            .Z(blu_accum_31__N_383[10]));
    defparam i2005_2_lut.INIT = "0x8888";
    FD1P3XZ curr_red_i2 (.D(curr_red_17__N_415[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[2]));
    defparam curr_red_i2.REGSET = "RESET";
    defparam curr_red_i2.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i2004_2_lut (.A(n161_adj_908), .B(n5963), 
            .Z(blu_accum_31__N_383[9]));
    defparam i2004_2_lut.INIT = "0x8888";
    FD1P3XZ ramp_count__i17 (.D(n4887), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[17]));
    defparam ramp_count__i17.REGSET = "RESET";
    defparam ramp_count__i17.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i1983_2_lut (.A(n151), .B(n5963), 
            .Z(red_accum_31__N_319[19]));
    defparam i1983_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i2003_2_lut (.A(n162_adj_907), .B(n5963), 
            .Z(blu_accum_31__N_383[8]));
    defparam i2003_2_lut.INIT = "0x8888";
    FD1P3XZ blink_state_FSM_i3 (.D(n2626), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(n2616));
    defparam blink_state_FSM_i3.REGSET = "RESET";
    defparam blink_state_FSM_i3.SRMODE = "ASYNC";
    FD1P3XZ curr_red_i1 (.D(curr_red_17__N_415[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_red[1]));
    defparam curr_red_i1.REGSET = "RESET";
    defparam curr_red_i1.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i31 (.D(blu_accum_31__N_383[31]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[31]));
    defparam blu_accum_i31.REGSET = "RESET";
    defparam blu_accum_i31.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i30 (.D(blu_accum_31__N_383[30]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[30]));
    defparam blu_accum_i30.REGSET = "RESET";
    defparam blu_accum_i30.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i20 (.D(n4881), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[20]));
    defparam ramp_count__i20.REGSET = "RESET";
    defparam ramp_count__i20.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i29 (.D(blu_accum_31__N_383[29]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[29]));
    defparam blu_accum_i29.REGSET = "RESET";
    defparam blu_accum_i29.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i28 (.D(blu_accum_31__N_383[28]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[28]));
    defparam blu_accum_i28.REGSET = "RESET";
    defparam blu_accum_i28.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i27 (.D(blu_accum_31__N_383[27]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[27]));
    defparam blu_accum_i27.REGSET = "RESET";
    defparam blu_accum_i27.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i26 (.D(blu_accum_31__N_383[26]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[26]));
    defparam blu_accum_i26.REGSET = "RESET";
    defparam blu_accum_i26.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i25 (.D(blu_accum_31__N_383[25]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[25]));
    defparam blu_accum_i25.REGSET = "RESET";
    defparam blu_accum_i25.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i24 (.D(blu_accum_31__N_383[24]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[24]));
    defparam blu_accum_i24.REGSET = "RESET";
    defparam blu_accum_i24.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i23 (.D(blu_accum_31__N_383[23]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[23]));
    defparam blu_accum_i23.REGSET = "RESET";
    defparam blu_accum_i23.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i22 (.D(blu_accum_31__N_383[22]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[22]));
    defparam blu_accum_i22.REGSET = "RESET";
    defparam blu_accum_i22.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i21 (.D(blu_accum_31__N_383[21]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[21]));
    defparam blu_accum_i21.REGSET = "RESET";
    defparam blu_accum_i21.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i20 (.D(blu_accum_31__N_383[20]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[20]));
    defparam blu_accum_i20.REGSET = "RESET";
    defparam blu_accum_i20.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i19 (.D(blu_accum_31__N_383[19]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[19]));
    defparam blu_accum_i19.REGSET = "RESET";
    defparam blu_accum_i19.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i18 (.D(blu_accum_31__N_383[18]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[18]));
    defparam blu_accum_i18.REGSET = "RESET";
    defparam blu_accum_i18.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i17 (.D(blu_accum_31__N_383[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[17]));
    defparam blu_accum_i17.REGSET = "RESET";
    defparam blu_accum_i17.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i16 (.D(blu_accum_31__N_383[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[16]));
    defparam blu_accum_i16.REGSET = "RESET";
    defparam blu_accum_i16.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i15 (.D(blu_accum_31__N_383[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[15]));
    defparam blu_accum_i15.REGSET = "RESET";
    defparam blu_accum_i15.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i14 (.D(blu_accum_31__N_383[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[14]));
    defparam blu_accum_i14.REGSET = "RESET";
    defparam blu_accum_i14.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i13 (.D(blu_accum_31__N_383[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[13]));
    defparam blu_accum_i13.REGSET = "RESET";
    defparam blu_accum_i13.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i12 (.D(blu_accum_31__N_383[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[12]));
    defparam blu_accum_i12.REGSET = "RESET";
    defparam blu_accum_i12.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i11 (.D(blu_accum_31__N_383[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[11]));
    defparam blu_accum_i11.REGSET = "RESET";
    defparam blu_accum_i11.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i10 (.D(blu_accum_31__N_383[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[10]));
    defparam blu_accum_i10.REGSET = "RESET";
    defparam blu_accum_i10.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i9 (.D(blu_accum_31__N_383[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[9]));
    defparam blu_accum_i9.REGSET = "RESET";
    defparam blu_accum_i9.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i8 (.D(blu_accum_31__N_383[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[8]));
    defparam blu_accum_i8.REGSET = "RESET";
    defparam blu_accum_i8.SRMODE = "ASYNC";
    (* lut_function="(!((B)+!A))" *) LUT4 i2030_2_lut (.A(n140_adj_944), .B(n4392), 
            .Z(n4929));
    defparam i2030_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i1982_2_lut (.A(n152), .B(n5963), 
            .Z(red_accum_31__N_319[18]));
    defparam i1982_2_lut.INIT = "0x8888";
    FD1P3XZ blu_accum_i7 (.D(blu_accum_31__N_383[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[7]));
    defparam blu_accum_i7.REGSET = "RESET";
    defparam blu_accum_i7.SRMODE = "ASYNC";
    (* lut_function="(!((B)+!A))" *) LUT4 i2042_2_lut (.A(n128_adj_874), .B(n4392), 
            .Z(n4953));
    defparam i2042_2_lut.INIT = "0x2222";
    FD1P3XZ blu_accum_i6 (.D(blu_accum_31__N_383[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[6]));
    defparam blu_accum_i6.REGSET = "RESET";
    defparam blu_accum_i6.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i5 (.D(blu_accum_31__N_383[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[5]));
    defparam blu_accum_i5.REGSET = "RESET";
    defparam blu_accum_i5.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i4 (.D(blu_accum_31__N_383[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[4]));
    defparam blu_accum_i4.REGSET = "RESET";
    defparam blu_accum_i4.SRMODE = "ASYNC";
    FD1P3XZ blu_accum_i3 (.D(blu_accum_31__N_383[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(blu_accum[3]));
    defparam blu_accum_i3.REGSET = "RESET";
    defparam blu_accum_i3.SRMODE = "ASYNC";
    FA2 add_128_add_5_7 (.A0(GND_net), .B0(steady_count[5]), .C0(GND_net), 
        .D0(n6963), .CI0(n6963), .A1(GND_net), .B1(steady_count[6]), 
        .C1(GND_net), .D1(n11199), .CI1(n11199), .CO0(n11199), .CO1(n6965), 
        .S0(n141_adj_942), .S1(n140_adj_944));
    defparam add_128_add_5_7.INIT0 = "0xc33c";
    defparam add_128_add_5_7.INIT1 = "0xc33c";
    FD1P3XZ ramp_count__i18 (.D(n4885), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[18]));
    defparam ramp_count__i18.REGSET = "RESET";
    defparam ramp_count__i18.SRMODE = "ASYNC";
    OB grn_pwm_pad (.I(grn_pwm_c), .O(grn_pwm));
    (* lut_function="(A (B))" *) LUT4 i1977_2_lut (.A(n157), .B(n5963), 
            .Z(red_accum_31__N_319[13]));
    defparam i1977_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i2002_2_lut (.A(n163_adj_906), .B(n5963), 
            .Z(blu_accum_31__N_383[7]));
    defparam i2002_2_lut.INIT = "0x8888";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i30_3_lut (.A(n12_adj_897), 
            .B(steady_count[17]), .C(off_max_cnt[24]), .Z(n30_adj_889));
    defparam LessThan_61_i30_3_lut.INIT = "0x8e8e";
    FD1P3XZ ramp_count__i5 (.D(n4911), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[5]));
    defparam ramp_count__i5.REGSET = "RESET";
    defparam ramp_count__i5.SRMODE = "ASYNC";
    OB blu_pwm_pad (.I(blu_pwm_c), .O(blu_pwm));
    FD1P3XZ ramp_count__i6 (.D(n4909), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[6]));
    defparam ramp_count__i6.REGSET = "RESET";
    defparam ramp_count__i6.SRMODE = "ASYNC";
    FD1P3XZ blink_state_FSM_i1 (.D(n2628), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(n2618));
    defparam blink_state_FSM_i1.REGSET = "RESET";
    defparam blink_state_FSM_i1.SRMODE = "ASYNC";
    FA2 add_128_add_5_5 (.A0(GND_net), .B0(steady_count[3]), .C0(GND_net), 
        .D0(n6961), .CI0(n6961), .A1(GND_net), .B1(steady_count[4]), 
        .C1(GND_net), .D1(n11196), .CI1(n11196), .CO0(n11196), .CO1(n6963), 
        .S0(n143_adj_937), .S1(n142_adj_941));
    defparam add_128_add_5_5.INIT0 = "0xc33c";
    defparam add_128_add_5_5.INIT1 = "0xc33c";
    (* lut_function="(A (B))" *) LUT4 i2001_2_lut (.A(n164_adj_905), .B(n5963), 
            .Z(blu_accum_31__N_383[6]));
    defparam i2001_2_lut.INIT = "0x8888";
    FD1P3XZ ramp_count__i19 (.D(n4883), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[19]));
    defparam ramp_count__i19.REGSET = "RESET";
    defparam ramp_count__i19.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i2000_2_lut (.A(n165_adj_904), .B(n5963), 
            .Z(blu_accum_31__N_383[5]));
    defparam i2000_2_lut.INIT = "0x8888";
    FD1P3XZ grn_accum_i31 (.D(grn_accum_31__N_351[31]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[31]));
    defparam grn_accum_i31.REGSET = "RESET";
    defparam grn_accum_i31.SRMODE = "ASYNC";
    OB red_pwm_pad (.I(red_pwm_c), .O(red_pwm));
    FD1P3XZ grn_accum_i30 (.D(grn_accum_31__N_351[30]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[30]));
    defparam grn_accum_i30.REGSET = "RESET";
    defparam grn_accum_i30.SRMODE = "ASYNC";
    FA2 add_2856_25 (.A0(GND_net), .B0(grn_accum[25]), .C0(n3039), .D0(n7116), 
        .CI0(n7116), .A1(GND_net), .B1(grn_accum[26]), .C1(n3039), .D1(n11106), 
        .CI1(n11106), .CO0(n11106), .CO1(n7118), .S0(n145_adj_940), 
        .S1(n144_adj_939));
    defparam add_2856_25.INIT0 = "0xc33c";
    defparam add_2856_25.INIT1 = "0xc33c";
    FD1P3XZ grn_intensity_step_i2 (.D(grn_intensity_step_31__N_197[3]), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(grn_intensity_step[3]));
    defparam grn_intensity_step_i2.REGSET = "RESET";
    defparam grn_intensity_step_i2.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i7 (.D(n4907), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[7]));
    defparam ramp_count__i7.REGSET = "RESET";
    defparam ramp_count__i7.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i29 (.D(grn_accum_31__N_351[29]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[29]));
    defparam grn_accum_i29.REGSET = "RESET";
    defparam grn_accum_i29.SRMODE = "ASYNC";
    FD1P3XZ off_max_cnt_i2 (.D(GND_net), .SP(VCC_net), .CK(clk24M), .SR(rst_c), 
            .Q(off_max_cnt[27]));
    defparam off_max_cnt_i2.REGSET = "SET";
    defparam off_max_cnt_i2.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i8 (.D(n4905), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[8]));
    defparam ramp_count__i8.REGSET = "RESET";
    defparam ramp_count__i8.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i28 (.D(grn_accum_31__N_351[28]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[28]));
    defparam grn_accum_i28.REGSET = "RESET";
    defparam grn_accum_i28.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i27 (.D(grn_accum_31__N_351[27]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[27]));
    defparam grn_accum_i27.REGSET = "RESET";
    defparam grn_accum_i27.SRMODE = "ASYNC";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 LessThan_61_i36_4_lut (.A(n10_adj_898), 
            .B(n34_adj_887), .C(n10397), .D(n9195), .Z(n36));
    defparam LessThan_61_i36_4_lut.INIT = "0xcacc";
    FA2 add_128_add_5_3 (.A0(GND_net), .B0(steady_count[1]), .C0(GND_net), 
        .D0(n6959), .CI0(n6959), .A1(GND_net), .B1(steady_count[2]), 
        .C1(GND_net), .D1(n11193), .CI1(n11193), .CO0(n11193), .CO1(n6961), 
        .S0(n145_adj_935), .S1(n144_adj_936));
    defparam add_128_add_5_3.INIT0 = "0xc33c";
    defparam add_128_add_5_3.INIT1 = "0xc33c";
    (* lut_function="(A (B))" *) LUT4 i1999_2_lut (.A(n166_adj_903), .B(n5963), 
            .Z(blu_accum_31__N_383[4]));
    defparam i1999_2_lut.INIT = "0x8888";
    FD1P3XZ grn_peak_i2 (.D(RGB_color_s[1]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_peak[30]));
    defparam grn_peak_i2.REGSET = "RESET";
    defparam grn_peak_i2.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i1981_2_lut (.A(n153), .B(n5963), 
            .Z(red_accum_31__N_319[17]));
    defparam i1981_2_lut.INIT = "0x8888";
    FD1P3XZ grn_accum_i26 (.D(grn_accum_31__N_351[26]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[26]));
    defparam grn_accum_i26.REGSET = "RESET";
    defparam grn_accum_i26.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i4 (.D(n111), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[4]));
    defparam pwm_count_424__i4.REGSET = "RESET";
    defparam pwm_count_424__i4.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i25 (.D(grn_accum_31__N_351[25]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[25]));
    defparam grn_accum_i25.REGSET = "RESET";
    defparam grn_accum_i25.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i17 (.D(n98), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[17]));
    defparam pwm_count_424__i17.REGSET = "RESET";
    defparam pwm_count_424__i17.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i24 (.D(grn_accum_31__N_351[24]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[24]));
    defparam grn_accum_i24.REGSET = "RESET";
    defparam grn_accum_i24.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i23 (.D(grn_accum_31__N_351[23]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[23]));
    defparam grn_accum_i23.REGSET = "RESET";
    defparam grn_accum_i23.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i16 (.D(n99), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[16]));
    defparam pwm_count_424__i16.REGSET = "RESET";
    defparam pwm_count_424__i16.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i22 (.D(grn_accum_31__N_351[22]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[22]));
    defparam grn_accum_i22.REGSET = "RESET";
    defparam grn_accum_i22.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i21 (.D(grn_accum_31__N_351[21]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[21]));
    defparam grn_accum_i21.REGSET = "RESET";
    defparam grn_accum_i21.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i20 (.D(grn_accum_31__N_351[20]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[20]));
    defparam grn_accum_i20.REGSET = "RESET";
    defparam grn_accum_i20.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i19 (.D(grn_accum_31__N_351[19]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[19]));
    defparam grn_accum_i19.REGSET = "RESET";
    defparam grn_accum_i19.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i3 (.D(n112), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[3]));
    defparam pwm_count_424__i3.REGSET = "RESET";
    defparam pwm_count_424__i3.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i18 (.D(grn_accum_31__N_351[18]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[18]));
    defparam grn_accum_i18.REGSET = "RESET";
    defparam grn_accum_i18.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i15 (.D(n100), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[15]));
    defparam pwm_count_424__i15.REGSET = "RESET";
    defparam pwm_count_424__i15.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i17 (.D(grn_accum_31__N_351[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[17]));
    defparam grn_accum_i17.REGSET = "RESET";
    defparam grn_accum_i17.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i16 (.D(grn_accum_31__N_351[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[16]));
    defparam grn_accum_i16.REGSET = "RESET";
    defparam grn_accum_i16.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i15 (.D(grn_accum_31__N_351[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[15]));
    defparam grn_accum_i15.REGSET = "RESET";
    defparam grn_accum_i15.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i14 (.D(grn_accum_31__N_351[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[14]));
    defparam grn_accum_i14.REGSET = "RESET";
    defparam grn_accum_i14.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i13 (.D(grn_accum_31__N_351[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[13]));
    defparam grn_accum_i13.REGSET = "RESET";
    defparam grn_accum_i13.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i12 (.D(grn_accum_31__N_351[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[12]));
    defparam grn_accum_i12.REGSET = "RESET";
    defparam grn_accum_i12.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i14 (.D(n101), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[14]));
    defparam pwm_count_424__i14.REGSET = "RESET";
    defparam pwm_count_424__i14.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i11 (.D(grn_accum_31__N_351[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[11]));
    defparam grn_accum_i11.REGSET = "RESET";
    defparam grn_accum_i11.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i10 (.D(grn_accum_31__N_351[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[10]));
    defparam grn_accum_i10.REGSET = "RESET";
    defparam grn_accum_i10.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i9 (.D(grn_accum_31__N_351[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[9]));
    defparam grn_accum_i9.REGSET = "RESET";
    defparam grn_accum_i9.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i8 (.D(grn_accum_31__N_351[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[8]));
    defparam grn_accum_i8.REGSET = "RESET";
    defparam grn_accum_i8.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i13 (.D(n102), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[13]));
    defparam pwm_count_424__i13.REGSET = "RESET";
    defparam pwm_count_424__i13.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i7 (.D(grn_accum_31__N_351[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[7]));
    defparam grn_accum_i7.REGSET = "RESET";
    defparam grn_accum_i7.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i6 (.D(grn_accum_31__N_351[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[6]));
    defparam grn_accum_i6.REGSET = "RESET";
    defparam grn_accum_i6.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i5 (.D(grn_accum_31__N_351[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[5]));
    defparam grn_accum_i5.REGSET = "RESET";
    defparam grn_accum_i5.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i12 (.D(n103), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[12]));
    defparam pwm_count_424__i12.REGSET = "RESET";
    defparam pwm_count_424__i12.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i4 (.D(grn_accum_31__N_351[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[4]));
    defparam grn_accum_i4.REGSET = "RESET";
    defparam grn_accum_i4.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i3 (.D(grn_accum_31__N_351[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[3]));
    defparam grn_accum_i3.REGSET = "RESET";
    defparam grn_accum_i3.SRMODE = "ASYNC";
    FD1P3XZ grn_accum_i2 (.D(grn_accum_31__N_351[2]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(grn_accum[2]));
    defparam grn_accum_i2.REGSET = "RESET";
    defparam grn_accum_i2.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i31 (.D(red_accum_31__N_319[31]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[31]));
    defparam red_accum_i31.REGSET = "RESET";
    defparam red_accum_i31.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i30 (.D(red_accum_31__N_319[30]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[30]));
    defparam red_accum_i30.REGSET = "RESET";
    defparam red_accum_i30.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i11 (.D(n104), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[11]));
    defparam pwm_count_424__i11.REGSET = "RESET";
    defparam pwm_count_424__i11.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i29 (.D(red_accum_31__N_319[29]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[29]));
    defparam red_accum_i29.REGSET = "RESET";
    defparam red_accum_i29.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i28 (.D(red_accum_31__N_319[28]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[28]));
    defparam red_accum_i28.REGSET = "RESET";
    defparam red_accum_i28.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i27 (.D(red_accum_31__N_319[27]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[27]));
    defparam red_accum_i27.REGSET = "RESET";
    defparam red_accum_i27.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i26 (.D(red_accum_31__N_319[26]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[26]));
    defparam red_accum_i26.REGSET = "RESET";
    defparam red_accum_i26.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i25 (.D(red_accum_31__N_319[25]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[25]));
    defparam red_accum_i25.REGSET = "RESET";
    defparam red_accum_i25.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i24 (.D(red_accum_31__N_319[24]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[24]));
    defparam red_accum_i24.REGSET = "RESET";
    defparam red_accum_i24.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i2 (.D(n113), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[2]));
    defparam pwm_count_424__i2.REGSET = "RESET";
    defparam pwm_count_424__i2.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i23 (.D(red_accum_31__N_319[23]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[23]));
    defparam red_accum_i23.REGSET = "RESET";
    defparam red_accum_i23.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i10 (.D(n105), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[10]));
    defparam pwm_count_424__i10.REGSET = "RESET";
    defparam pwm_count_424__i10.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i22 (.D(red_accum_31__N_319[22]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[22]));
    defparam red_accum_i22.REGSET = "RESET";
    defparam red_accum_i22.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i21 (.D(red_accum_31__N_319[21]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[21]));
    defparam red_accum_i21.REGSET = "RESET";
    defparam red_accum_i21.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i20 (.D(red_accum_31__N_319[20]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[20]));
    defparam red_accum_i20.REGSET = "RESET";
    defparam red_accum_i20.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i9 (.D(n106), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[9]));
    defparam pwm_count_424__i9.REGSET = "RESET";
    defparam pwm_count_424__i9.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i19 (.D(red_accum_31__N_319[19]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[19]));
    defparam red_accum_i19.REGSET = "RESET";
    defparam red_accum_i19.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i18 (.D(red_accum_31__N_319[18]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[18]));
    defparam red_accum_i18.REGSET = "RESET";
    defparam red_accum_i18.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i17 (.D(red_accum_31__N_319[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[17]));
    defparam red_accum_i17.REGSET = "RESET";
    defparam red_accum_i17.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i16 (.D(red_accum_31__N_319[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[16]));
    defparam red_accum_i16.REGSET = "RESET";
    defparam red_accum_i16.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i15 (.D(red_accum_31__N_319[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[15]));
    defparam red_accum_i15.REGSET = "RESET";
    defparam red_accum_i15.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i14 (.D(red_accum_31__N_319[14]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[14]));
    defparam red_accum_i14.REGSET = "RESET";
    defparam red_accum_i14.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i13 (.D(red_accum_31__N_319[13]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[13]));
    defparam red_accum_i13.REGSET = "RESET";
    defparam red_accum_i13.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i12 (.D(red_accum_31__N_319[12]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[12]));
    defparam red_accum_i12.REGSET = "RESET";
    defparam red_accum_i12.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i8 (.D(n107), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[8]));
    defparam pwm_count_424__i8.REGSET = "RESET";
    defparam pwm_count_424__i8.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i11 (.D(red_accum_31__N_319[11]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[11]));
    defparam red_accum_i11.REGSET = "RESET";
    defparam red_accum_i11.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i10 (.D(red_accum_31__N_319[10]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[10]));
    defparam red_accum_i10.REGSET = "RESET";
    defparam red_accum_i10.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i9 (.D(red_accum_31__N_319[9]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[9]));
    defparam red_accum_i9.REGSET = "RESET";
    defparam red_accum_i9.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i8 (.D(red_accum_31__N_319[8]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[8]));
    defparam red_accum_i8.REGSET = "RESET";
    defparam red_accum_i8.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i7 (.D(red_accum_31__N_319[7]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[7]));
    defparam red_accum_i7.REGSET = "RESET";
    defparam red_accum_i7.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i6 (.D(red_accum_31__N_319[6]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[6]));
    defparam red_accum_i6.REGSET = "RESET";
    defparam red_accum_i6.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i5 (.D(red_accum_31__N_319[5]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[5]));
    defparam red_accum_i5.REGSET = "RESET";
    defparam red_accum_i5.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i4 (.D(red_accum_31__N_319[4]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[4]));
    defparam red_accum_i4.REGSET = "RESET";
    defparam red_accum_i4.SRMODE = "ASYNC";
    FD1P3XZ red_accum_i3 (.D(red_accum_31__N_319[3]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_accum[3]));
    defparam red_accum_i3.REGSET = "RESET";
    defparam red_accum_i3.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i1 (.D(n114), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[1]));
    defparam pwm_count_424__i1.REGSET = "RESET";
    defparam pwm_count_424__i1.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i7 (.D(n108), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[7]));
    defparam pwm_count_424__i7.REGSET = "RESET";
    defparam pwm_count_424__i7.SRMODE = "ASYNC";
    (* lut_function="(!((B)+!A))" *) LUT4 i2029_2_lut (.A(n141_adj_942), .B(n4392), 
            .Z(n4927));
    defparam i2029_2_lut.INIT = "0x2222";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i6 (.D(n109), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[6]));
    defparam pwm_count_424__i6.REGSET = "RESET";
    defparam pwm_count_424__i6.SRMODE = "ASYNC";
    (* syn_use_carry_chain=1 *) FD1P3XZ pwm_count_424__i5 (.D(n110), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(pwm_count[5]));
    defparam pwm_count_424__i5.REGSET = "RESET";
    defparam pwm_count_424__i5.SRMODE = "ASYNC";
    FD1P3XZ BreatheRamp_s_i1 (.D(BreatheRamp_s_3__N_5_c_0), .SP(VCC_net), 
            .CK(clk24M), .SR(rst_c), .Q(BreatheRamp_s[2]));
    defparam BreatheRamp_s_i1.REGSET = "RESET";
    defparam BreatheRamp_s_i1.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i15 (.D(curr_blu_17__N_451[15]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[15]));
    defparam curr_blu_i15.REGSET = "RESET";
    defparam curr_blu_i15.SRMODE = "ASYNC";
    IB \RGB_color_pad[1]  (.I(color_sel[1]), .O(RGB_color_c_1));
    IB \RGB_color_pad[0]  (.I(color_sel[0]), .O(RGB_color_c_0));
    IB \BreatheRamp_s_3__N_5_pad[0]  (.I(RGB_Blink_En), .O(BreatheRamp_s_3__N_5_c_0));
    FD1P3XZ curr_blu_i16 (.D(curr_blu_17__N_451[16]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[16]));
    defparam curr_blu_i16.REGSET = "RESET";
    defparam curr_blu_i16.SRMODE = "ASYNC";
    FD1P3XZ curr_blu_i17 (.D(curr_blu_17__N_451[17]), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(curr_blu[17]));
    defparam curr_blu_i17.REGSET = "RESET";
    defparam curr_blu_i17.SRMODE = "ASYNC";
    FD1P3XZ RGB_color_s_i1 (.D(RGB_color_c_0), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(RGB_color_s[0]));
    defparam RGB_color_s_i1.REGSET = "RESET";
    defparam RGB_color_s_i1.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i27 (.D(n4971), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[27]));
    defparam steady_count__i27.REGSET = "RESET";
    defparam steady_count__i27.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i26 (.D(n4969), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[26]));
    defparam steady_count__i26.REGSET = "RESET";
    defparam steady_count__i26.SRMODE = "ASYNC";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 LessThan_61_i41_rep_87_2_lut (.A(off_max_cnt[27]), 
            .B(steady_count[20]), .Z(n10397));
    defparam LessThan_61_i41_rep_87_2_lut.INIT = "0x6666";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2092_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[20]), .Z(curr_red_17__N_415[6]));
    defparam i2092_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B))" *) LUT4 i1998_2_lut (.A(n167_adj_902), .B(n5963), 
            .Z(blu_accum_31__N_383[3]));
    defparam i1998_2_lut.INIT = "0x8888";
    FA2 add_2856_23 (.A0(GND_net), .B0(grn_accum[23]), .C0(n3039), .D0(n7114), 
        .CI0(n7114), .A1(GND_net), .B1(grn_accum[24]), .C1(n3039), .D1(n11103), 
        .CI1(n11103), .CO0(n11103), .CO1(n7116), .S0(n147_adj_932), 
        .S1(n146_adj_933));
    defparam add_2856_23.INIT0 = "0xc33c";
    defparam add_2856_23.INIT1 = "0xc33c";
    (* lut_function="(A+(B+(C+(D))))" *) LUT4 i3_4_lut (.A(steady_count[26]), 
            .B(n50), .C(steady_count[25]), .D(steady_count[27]), .Z(n803));
    defparam i3_4_lut.INIT = "0xfffe";
    (* lut_function="(!((B)+!A))" *) LUT4 i1910_2_lut (.A(n128), .B(n4392), 
            .Z(n4885));
    defparam i1910_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i1980_2_lut (.A(n154), .B(n5963), 
            .Z(red_accum_31__N_319[16]));
    defparam i1980_2_lut.INIT = "0x8888";
    (* lut_function="(!(A (((D)+!C)+!B)+!A (B+(C+(D)))))" *) LUT4 i4502_4_lut (.A(off_max_cnt[24]), 
            .B(steady_count[18]), .C(steady_count[19]), .D(n9184), .Z(n9193));
    defparam i4502_4_lut.INIT = "0x0081";
    (* lut_function="(!((B)+!A))" *) LUT4 i1923_2_lut (.A(n141_adj_855), .B(n4392), 
            .Z(n4911));
    defparam i1923_2_lut.INIT = "0x2222";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2097_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[25]), .Z(curr_red_17__N_415[11]));
    defparam i2097_2_lut_3_lut.INIT = "0x1010";
    FA2 add_2856_21 (.A0(GND_net), .B0(grn_accum[21]), .C0(n3039), .D0(n7112), 
        .CI0(n7112), .A1(GND_net), .B1(grn_accum[22]), .C1(n3039), .D1(n11100), 
        .CI1(n11100), .CO0(n11100), .CO1(n7114), .S0(n149_adj_958), 
        .S1(n148_adj_943));
    defparam add_2856_21.INIT0 = "0xc33c";
    defparam add_2856_21.INIT1 = "0xc33c";
    FA2 add_2856_19 (.A0(GND_net), .B0(grn_accum[19]), .C0(n3039), .D0(n7110), 
        .CI0(n7110), .A1(GND_net), .B1(grn_accum[20]), .C1(n3039), .D1(n11097), 
        .CI1(n11097), .CO0(n11097), .CO1(n7112), .S0(n151_adj_862), 
        .S1(n150_adj_926));
    defparam add_2856_19.INIT0 = "0xc33c";
    defparam add_2856_19.INIT1 = "0xc33c";
    FA2 add_2856_17 (.A0(GND_net), .B0(grn_accum[17]), .C0(n3039), .D0(n7108), 
        .CI0(n7108), .A1(GND_net), .B1(grn_accum[18]), .C1(n3039), .D1(n11094), 
        .CI1(n11094), .CO0(n11094), .CO1(n7110), .S0(n153_adj_938), 
        .S1(n152_adj_957));
    defparam add_2856_17.INIT0 = "0xc33c";
    defparam add_2856_17.INIT1 = "0xc33c";
    (* lut_function="(!(A (B+!(C (D)))+!A (B+(C+(D)))))" *) LUT4 i4493_4_lut (.A(off_max_cnt[24]), 
            .B(n10478), .C(steady_count[17]), .D(steady_count[7]), .Z(n9184));
    defparam i4493_4_lut.INIT = "0x2001";
    FD1P3XZ steady_count__i25 (.D(n4967), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[25]));
    defparam steady_count__i25.REGSET = "RESET";
    defparam steady_count__i25.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i24 (.D(n4965), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[24]));
    defparam steady_count__i24.REGSET = "RESET";
    defparam steady_count__i24.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i23 (.D(n4963), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[23]));
    defparam steady_count__i23.REGSET = "RESET";
    defparam steady_count__i23.SRMODE = "ASYNC";
    FA2 add_2856_15 (.A0(GND_net), .B0(grn_accum[15]), .C0(n3039), .D0(n7106), 
        .CI0(n7106), .A1(GND_net), .B1(grn_accum[16]), .C1(n3039), .D1(n11091), 
        .CI1(n11091), .CO0(n11091), .CO1(n7108), .S0(n155_adj_971), 
        .S1(n154_adj_927));
    defparam add_2856_15.INIT0 = "0xc33c";
    defparam add_2856_15.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i22 (.D(n4961), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[22]));
    defparam steady_count__i22.REGSET = "RESET";
    defparam steady_count__i22.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i21 (.D(n4959), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[21]));
    defparam steady_count__i21.REGSET = "RESET";
    defparam steady_count__i21.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i22 (.D(n4877), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[22]));
    defparam ramp_count__i22.REGSET = "RESET";
    defparam ramp_count__i22.SRMODE = "ASYNC";
    FD1P3XZ red_peak_i1 (.D(red_peak_31__N_489), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(red_peak[30]));
    defparam red_peak_i1.REGSET = "RESET";
    defparam red_peak_i1.SRMODE = "ASYNC";
    (* lut_function="(!((B)+!A))" *) LUT4 i1922_2_lut (.A(n140_adj_854), .B(n4392), 
            .Z(n4909));
    defparam i1922_2_lut.INIT = "0x2222";
    (* lut_function="(!((B)+!A))" *) LUT4 i2041_2_lut (.A(n129_adj_873), .B(n4392), 
            .Z(n4951));
    defparam i2041_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i1979_2_lut (.A(n155), .B(n5963), 
            .Z(red_accum_31__N_319[15]));
    defparam i1979_2_lut.INIT = "0x8888";
    FA2 add_2856_13 (.A0(GND_net), .B0(grn_accum[13]), .C0(n3039), .D0(n7104), 
        .CI0(n7104), .A1(GND_net), .B1(grn_accum[14]), .C1(n3039), .D1(n11088), 
        .CI1(n11088), .CO0(n11088), .CO1(n7106), .S0(n157_adj_969), 
        .S1(n156_adj_970));
    defparam add_2856_13.INIT0 = "0xc33c";
    defparam add_2856_13.INIT1 = "0xc33c";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2096_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[24]), .Z(curr_red_17__N_415[10]));
    defparam i2096_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i10_3_lut (.A(steady_count[5]), 
            .B(steady_count[6]), .C(off_max_cnt[24]), .Z(n10_adj_898));
    defparam LessThan_61_i10_3_lut.INIT = "0x8e8e";
    (* lut_function="(A+!(B (C+!(D))))" *) LUT4 i2_4_lut (.A(n2637), .B(BlinkRate_s[2]), 
            .C(n803), .D(n2617), .Z(n8529));
    defparam i2_4_lut.INIT = "0xbfbb";
    FA2 add_2856_11 (.A0(GND_net), .B0(grn_accum[11]), .C0(n3039), .D0(n7102), 
        .CI0(n7102), .A1(GND_net), .B1(grn_accum[12]), .C1(n3039), .D1(n11085), 
        .CI1(n11085), .CO0(n11085), .CO1(n7104), .S0(n159_adj_967), 
        .S1(n158_adj_968));
    defparam add_2856_11.INIT0 = "0xc33c";
    defparam add_2856_11.INIT1 = "0xc33c";
    (* lut_function="(A (B (C+!(D)))+!A (B (C)))" *) LUT4 i1928_4_lut (.A(n2618), 
            .B(BlinkRate_s[2]), .C(n2634), .D(n899), .Z(n2628));
    defparam i1928_4_lut.INIT = "0xc0c8";
    FA2 add_2856_9 (.A0(GND_net), .B0(grn_accum[9]), .C0(n3039), .D0(n7100), 
        .CI0(n7100), .A1(GND_net), .B1(grn_accum[10]), .C1(n3039), .D1(n11082), 
        .CI1(n11082), .CO0(n11082), .CO1(n7102), .S0(n161_adj_965), 
        .S1(n160_adj_966));
    defparam add_2856_9.INIT0 = "0xc33c";
    defparam add_2856_9.INIT1 = "0xc33c";
    (* lut_function="(A (B))" *) LUT4 i1976_2_lut (.A(n158), .B(n5963), 
            .Z(red_accum_31__N_319[12]));
    defparam i1976_2_lut.INIT = "0x8888";
    (* lut_function="(!((B)+!A))" *) LUT4 i1919_2_lut (.A(n137), .B(n4392), 
            .Z(n4903));
    defparam i1919_2_lut.INIT = "0x2222";
    (* lut_function="(!((B)+!A))" *) LUT4 i2037_2_lut (.A(n133_adj_951), .B(n4392), 
            .Z(n4943));
    defparam i2037_2_lut.INIT = "0x2222";
    (* lut_function="(!((B)+!A))" *) LUT4 i1888_2_lut (.A(n87), .B(n6194), 
            .Z(n107));
    defparam i1888_2_lut.INIT = "0x2222";
    (* lut_function="(A (B (C+(D)))+!A (B (C)))" *) LUT4 i481_4_lut (.A(n42_adj_864), 
            .B(steady_count[24]), .C(steady_count[23]), .D(n4_adj_972), 
            .Z(n50));
    defparam i481_4_lut.INIT = "0xc8c0";
    (* lut_function="(A (B))" *) LUT4 i165_2_lut (.A(n611), .B(n2619), .Z(n2634));
    defparam i165_2_lut.INIT = "0x8888";
    (* lut_function="(!((B)+!A))" *) LUT4 i2040_2_lut (.A(n130_adj_954), .B(n4392), 
            .Z(n4949));
    defparam i2040_2_lut.INIT = "0x2222";
    (* lut_function="(!((B)+!A))" *) LUT4 i1909_2_lut (.A(n127), .B(n4392), 
            .Z(n4883));
    defparam i1909_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i34_3_lut (.A(n32_adj_888), 
            .B(steady_count[20]), .C(off_max_cnt[27]), .Z(n34_adj_887));
    defparam LessThan_61_i34_3_lut.INIT = "0x8e8e";
    (* lut_function="(A (B))" *) LUT4 i1964_2_lut (.A(n139_adj_955), .B(n5963), 
            .Z(grn_accum_31__N_351[31]));
    defparam i1964_2_lut.INIT = "0x8888";
    (* lut_function="(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B))" *) LUT4 mux_284_i31_4_lut (.A(n140_adj_956), 
            .B(grn_peak[30]), .C(n5963), .D(n3039), .Z(grn_accum_31__N_351[30]));
    defparam mux_284_i31_4_lut.INIT = "0xaca0";
    (* lut_function="(!((B)+!A))" *) LUT4 i2036_2_lut (.A(n134_adj_950), .B(n4392), 
            .Z(n4941));
    defparam i2036_2_lut.INIT = "0x2222";
    FD1P3XZ ramp_count__i3 (.D(n4915), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[3]));
    defparam ramp_count__i3.REGSET = "RESET";
    defparam ramp_count__i3.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i1975_2_lut (.A(n159), .B(n5963), 
            .Z(red_accum_31__N_319[11]));
    defparam i1975_2_lut.INIT = "0x8888";
    (* lut_function="(A (B+(C (D)))+!A (B))" *) LUT4 i476_4_lut (.A(n5_adj_978), 
            .B(steady_count[20]), .C(steady_count[18]), .D(steady_count[17]), 
            .Z(n42_adj_864));
    defparam i476_4_lut.INIT = "0xeccc";
    (* lut_function="(!((B)+!A))" *) LUT4 i2039_2_lut (.A(n131_adj_953), .B(n4392), 
            .Z(n4947));
    defparam i2039_2_lut.INIT = "0x2222";
    (* lut_function="(A (B (C))+!A !(B+(C)))" *) LUT4 i4504_3_lut (.A(off_max_cnt[24]), 
            .B(steady_count[18]), .C(steady_count[19]), .Z(n9195));
    defparam i4504_3_lut.INIT = "0x8181";
    (* lut_function="(A (B))" *) LUT4 select_142_Select_3_i2_2_lut (.A(grn_peak[30]), 
            .B(BreatheRamp_s[2]), .Z(grn_intensity_step_31__N_197[3]));
    defparam select_142_Select_3_i2_2_lut.INIT = "0x8888";
    (* lut_function="(!((B)+!A))" *) LUT4 i1921_2_lut (.A(n139_adj_853), .B(n4392), 
            .Z(n4907));
    defparam i1921_2_lut.INIT = "0x2222";
    FD1P3XZ ramp_count__i15 (.D(n4891), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[15]));
    defparam ramp_count__i15.REGSET = "RESET";
    defparam ramp_count__i15.SRMODE = "ASYNC";
    (* lut_function="(!((B)+!A))" *) LUT4 i2035_2_lut (.A(n135_adj_949), .B(n4392), 
            .Z(n4939));
    defparam i2035_2_lut.INIT = "0x2222";
    FD1P3XZ ramp_count__i12 (.D(n4897), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[12]));
    defparam ramp_count__i12.REGSET = "RESET";
    defparam ramp_count__i12.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i1974_2_lut (.A(n160), .B(n5963), 
            .Z(red_accum_31__N_319[10]));
    defparam i1974_2_lut.INIT = "0x8888";
    FA2 add_2856_7 (.A0(GND_net), .B0(grn_accum[7]), .C0(n3039), .D0(n7098), 
        .CI0(n7098), .A1(GND_net), .B1(grn_accum[8]), .C1(n3039), .D1(n11079), 
        .CI1(n11079), .CO0(n11079), .CO1(n7100), .S0(n163_adj_963), 
        .S1(n162_adj_964));
    defparam add_2856_7.INIT0 = "0xc33c";
    defparam add_2856_7.INIT1 = "0xc33c";
    (* lut_function="(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B))" *) LUT4 mux_284_i30_4_lut (.A(n141_adj_929), 
            .B(grn_peak[29]), .C(n5963), .D(n3039), .Z(grn_accum_31__N_351[29]));
    defparam mux_284_i30_4_lut.INIT = "0xaca0";
    FD1P3XZ ramp_count__i4 (.D(n4913), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[4]));
    defparam ramp_count__i4.REGSET = "RESET";
    defparam ramp_count__i4.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i1_2_lut (.A(steady_count[22]), .B(steady_count[21]), 
            .Z(n4_adj_972));
    defparam i1_2_lut.INIT = "0x8888";
    FD1P3XZ ramp_count__i13 (.D(n4895), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[13]));
    defparam ramp_count__i13.REGSET = "RESET";
    defparam ramp_count__i13.SRMODE = "ASYNC";
    FD1P3XZ RGB_color_s_i2 (.D(RGB_color_c_1), .SP(VCC_net), .CK(clk24M), 
            .SR(rst_c), .Q(RGB_color_s[1]));
    defparam RGB_color_s_i2.REGSET = "RESET";
    defparam RGB_color_s_i2.SRMODE = "ASYNC";
    FA2 add_129_add_5_29 (.A0(GND_net), .B0(ramp_count[27]), .C0(GND_net), 
        .D0(n7033), .CI0(n7033), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n11241), .CI1(n11241), .CO0(n11241), .S0(n119));
    defparam add_129_add_5_29.INIT0 = "0xc33c";
    defparam add_129_add_5_29.INIT1 = "0xc33c";
    FD1P3XZ steady_count__i20 (.D(n4957), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[20]));
    defparam steady_count__i20.REGSET = "RESET";
    defparam steady_count__i20.SRMODE = "ASYNC";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i32_3_lut (.A(steady_count[18]), 
            .B(steady_count[19]), .C(off_max_cnt[24]), .Z(n32_adj_888));
    defparam LessThan_61_i32_3_lut.INIT = "0x8e8e";
    VLO i1 (.Z(GND_net));
    (* lut_function="(!((B)+!A))" *) LUT4 i1920_2_lut (.A(n138), .B(n4392), 
            .Z(n4905));
    defparam i1920_2_lut.INIT = "0x2222";
    FD1P3XZ ramp_count__i23 (.D(n4875), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[23]));
    defparam ramp_count__i23.REGSET = "RESET";
    defparam ramp_count__i23.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i24 (.D(n4873), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[24]));
    defparam ramp_count__i24.REGSET = "RESET";
    defparam ramp_count__i24.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i1963_2_lut (.A(n142_adj_930), .B(n5963), 
            .Z(grn_accum_31__N_351[28]));
    defparam i1963_2_lut.INIT = "0x8888";
    FD1P3XZ ramp_count__i25 (.D(n4871), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[25]));
    defparam ramp_count__i25.REGSET = "RESET";
    defparam ramp_count__i25.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i26 (.D(n4869), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[26]));
    defparam ramp_count__i26.REGSET = "RESET";
    defparam ramp_count__i26.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i27 (.D(n4867), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[27]));
    defparam ramp_count__i27.REGSET = "RESET";
    defparam ramp_count__i27.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i1 (.D(n4865), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[1]));
    defparam ramp_count__i1.REGSET = "RESET";
    defparam ramp_count__i1.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i0 (.D(n4863), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[0]));
    defparam steady_count__i0.REGSET = "RESET";
    defparam steady_count__i0.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i0 (.D(n4861), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[0]));
    defparam ramp_count__i0.REGSET = "RESET";
    defparam ramp_count__i0.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i14 (.D(n4893), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[14]));
    defparam ramp_count__i14.REGSET = "RESET";
    defparam ramp_count__i14.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i4 (.D(n4925), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[4]));
    defparam steady_count__i4.REGSET = "RESET";
    defparam steady_count__i4.SRMODE = "ASYNC";
    (* lut_function="(!((B)+!A))" *) LUT4 i2038_2_lut (.A(n132_adj_952), .B(n4392), 
            .Z(n4945));
    defparam i2038_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i12_3_lut (.A(steady_count[7]), 
            .B(steady_count[16]), .C(off_max_cnt[27]), .Z(n12_adj_897));
    defparam LessThan_61_i12_3_lut.INIT = "0x8e8e";
    (* lut_function="(A (B))" *) LUT4 i1962_2_lut (.A(n143_adj_931), .B(n5963), 
            .Z(grn_accum_31__N_351[27]));
    defparam i1962_2_lut.INIT = "0x8888";
    (* lut_function="(!((B)+!A))" *) LUT4 i2034_2_lut (.A(n136_adj_948), .B(n4392), 
            .Z(n4937));
    defparam i2034_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i1961_2_lut (.A(n144_adj_939), .B(n5963), 
            .Z(grn_accum_31__N_351[26]));
    defparam i1961_2_lut.INIT = "0x8888";
    FD1P3XZ steady_count__i3 (.D(n4923), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[3]));
    defparam steady_count__i3.REGSET = "RESET";
    defparam steady_count__i3.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i2 (.D(n4921), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[2]));
    defparam steady_count__i2.REGSET = "RESET";
    defparam steady_count__i2.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i1 (.D(n4919), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[1]));
    defparam steady_count__i1.REGSET = "RESET";
    defparam steady_count__i1.SRMODE = "ASYNC";
    FA2 add_2856_5 (.A0(GND_net), .B0(grn_accum[5]), .C0(n3039), .D0(n7096), 
        .CI0(n7096), .A1(GND_net), .B1(grn_accum[6]), .C1(n3039), .D1(n11076), 
        .CI1(n11076), .CO0(n11076), .CO1(n7098), .S0(n165_adj_961), 
        .S1(n164_adj_962));
    defparam add_2856_5.INIT0 = "0xc33c";
    defparam add_2856_5.INIT1 = "0xc33c";
    (* lut_function="(A (B))" *) LUT4 i1973_2_lut (.A(n161), .B(n5963), 
            .Z(red_accum_31__N_319[9]));
    defparam i1973_2_lut.INIT = "0x8888";
    (* lut_function="(!((B)+!A))" *) LUT4 i1896_2_lut (.A(n91), .B(n6194), 
            .Z(n111));
    defparam i1896_2_lut.INIT = "0x2222";
    FD1P3XZ ramp_count__i10 (.D(n4901), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[10]));
    defparam ramp_count__i10.REGSET = "RESET";
    defparam ramp_count__i10.SRMODE = "ASYNC";
    (* lut_function="(A (B))" *) LUT4 i1972_2_lut (.A(n162), .B(n5963), 
            .Z(red_accum_31__N_319[8]));
    defparam i1972_2_lut.INIT = "0x8888";
    (* lut_function="(A (B+(C (D)))+!A (B))" *) LUT4 i2107_4_lut (.A(n27_adj_976), 
            .B(pwm_count[17]), .C(n32_adj_973), .D(n28_adj_975), .Z(n6194));
    defparam i2107_4_lut.INIT = "0xeccc";
    FD1P3XZ ramp_count__i2 (.D(n4917), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[2]));
    defparam ramp_count__i2.REGSET = "RESET";
    defparam ramp_count__i2.SRMODE = "ASYNC";
    FA2 add_129_add_5_27 (.A0(GND_net), .B0(ramp_count[25]), .C0(GND_net), 
        .D0(n7031), .CI0(n7031), .A1(GND_net), .B1(ramp_count[26]), 
        .C1(GND_net), .D1(n11238), .CI1(n11238), .CO0(n11238), .CO1(n7033), 
        .S0(n121), .S1(n120));
    defparam add_129_add_5_27.INIT0 = "0xc33c";
    defparam add_129_add_5_27.INIT1 = "0xc33c";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 LessThan_61_i23_2_lut (.A(off_max_cnt[27]), 
            .B(steady_count[11]), .Z(n23_adj_893));
    defparam LessThan_61_i23_2_lut.INIT = "0x6666";
    FD1P3XZ steady_count__i19 (.D(n4955), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[19]));
    defparam steady_count__i19.REGSET = "RESET";
    defparam steady_count__i19.SRMODE = "ASYNC";
    FD1P3XZ ramp_count__i11 (.D(n4899), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[11]));
    defparam ramp_count__i11.REGSET = "RESET";
    defparam ramp_count__i11.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i9 (.D(n4935), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[9]));
    defparam steady_count__i9.REGSET = "RESET";
    defparam steady_count__i9.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i8 (.D(n4933), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[8]));
    defparam steady_count__i8.REGSET = "RESET";
    defparam steady_count__i8.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i7 (.D(n4931), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[7]));
    defparam steady_count__i7.REGSET = "RESET";
    defparam steady_count__i7.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i6 (.D(n4929), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[6]));
    defparam steady_count__i6.REGSET = "RESET";
    defparam steady_count__i6.SRMODE = "ASYNC";
    (* lut_function="(!(A (B+((D)+!C))+!A (B+(C+(D)))))" *) LUT4 i4484_4_lut (.A(off_max_cnt[24]), 
            .B(n10478), .C(steady_count[17]), .D(n9166), .Z(n9175));
    defparam i4484_4_lut.INIT = "0x0021";
    (* lut_function="(A (B (C (D))))" *) LUT4 i10_4_lut (.A(pwm_count[15]), 
            .B(pwm_count[16]), .C(pwm_count[14]), .D(pwm_count[8]), .Z(n27_adj_976));
    defparam i10_4_lut.INIT = "0x8000";
    FD1P3XZ steady_count__i18 (.D(n4953), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[18]));
    defparam steady_count__i18.REGSET = "RESET";
    defparam steady_count__i18.SRMODE = "ASYNC";
    (* lut_function="(A (B (C (D))))" *) LUT4 i15_4_lut (.A(n29_adj_974), 
            .B(pwm_count[9]), .C(n26_adj_977), .D(pwm_count[2]), .Z(n32_adj_973));
    defparam i15_4_lut.INIT = "0x8000";
    FD1P3XZ steady_count__i5 (.D(n4927), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[5]));
    defparam steady_count__i5.REGSET = "RESET";
    defparam steady_count__i5.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i17 (.D(n4951), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[17]));
    defparam steady_count__i17.REGSET = "RESET";
    defparam steady_count__i17.SRMODE = "ASYNC";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 LessThan_61_i33_rep_168_2_lut (.A(off_max_cnt[27]), 
            .B(steady_count[16]), .Z(n10478));
    defparam LessThan_61_i33_rep_168_2_lut.INIT = "0x6666";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2089_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[17]), .Z(curr_red_17__N_415[3]));
    defparam i2089_2_lut_3_lut.INIT = "0x1010";
    FD1P3XZ ramp_count__i9 (.D(n4903), .SP(n4388), .CK(clk24M), .SR(rst_c), 
            .Q(ramp_count[9]));
    defparam ramp_count__i9.REGSET = "RESET";
    defparam ramp_count__i9.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i13 (.D(n4943), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[13]));
    defparam steady_count__i13.REGSET = "RESET";
    defparam steady_count__i13.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i16 (.D(n4949), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[16]));
    defparam steady_count__i16.REGSET = "RESET";
    defparam steady_count__i16.SRMODE = "ASYNC";
    (* lut_function="(A (B (C (D))))" *) LUT4 i11_4_lut (.A(pwm_count[6]), 
            .B(pwm_count[0]), .C(pwm_count[5]), .D(pwm_count[10]), .Z(n28_adj_975));
    defparam i11_4_lut.INIT = "0x8000";
    FD1P3XZ steady_count__i12 (.D(n4941), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[12]));
    defparam steady_count__i12.REGSET = "RESET";
    defparam steady_count__i12.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i15 (.D(n4947), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[15]));
    defparam steady_count__i15.REGSET = "RESET";
    defparam steady_count__i15.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i11 (.D(n4939), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[11]));
    defparam steady_count__i11.REGSET = "RESET";
    defparam steady_count__i11.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i14 (.D(n4945), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[14]));
    defparam steady_count__i14.REGSET = "RESET";
    defparam steady_count__i14.SRMODE = "ASYNC";
    FD1P3XZ steady_count__i10 (.D(n4937), .SP(n4390), .CK(clk24M), .SR(rst_c), 
            .Q(steady_count[10]));
    defparam steady_count__i10.REGSET = "RESET";
    defparam steady_count__i10.SRMODE = "ASYNC";
    (* lut_function="(A (B (C (D)))+!A !(B+(C+!(D))))" *) LUT4 i4475_4_lut (.A(off_max_cnt[27]), 
            .B(steady_count[14]), .C(steady_count[15]), .D(n9154), .Z(n9166));
    defparam i4475_4_lut.INIT = "0x8100";
    FA2 add_2856_3 (.A0(GND_net), .B0(grn_accum[3]), .C0(n4195), .D0(n7094), 
        .CI0(n7094), .A1(GND_net), .B1(grn_accum[4]), .C1(n3039), .D1(n11073), 
        .CI1(n11073), .CO0(n11073), .CO1(n7096), .S0(n167_adj_959), 
        .S1(n166_adj_960));
    defparam add_2856_3.INIT0 = "0xc33c";
    defparam add_2856_3.INIT1 = "0xc33c";
    FA2 add_2856_1 (.A0(GND_net), .B0(n3039), .C0(GND_net), .A1(GND_net), 
        .B1(grn_accum[2]), .C1(n4196), .D1(n11070), .CI1(n11070), .CO0(n11070), 
        .CO1(n7094), .S1(n168));
    defparam add_2856_1.INIT0 = "0xc33c";
    defparam add_2856_1.INIT1 = "0xc33c";
    FA2 add_2857_29 (.A0(GND_net), .B0(blu_accum[30]), .C0(n3039), .D0(n7091), 
        .CI0(n7091), .A1(GND_net), .B1(blu_accum[31]), .C1(n3039), .D1(n11067), 
        .CI1(n11067), .CO0(n11067), .S0(n140), .S1(n139));
    defparam add_2857_29.INIT0 = "0xc33c";
    defparam add_2857_29.INIT1 = "0xc33c";
    (* lut_function="(A (B))" *) LUT4 i1971_2_lut (.A(n163), .B(n5963), 
            .Z(red_accum_31__N_319[7]));
    defparam i1971_2_lut.INIT = "0x8888";
    FA2 add_129_add_5_25 (.A0(GND_net), .B0(ramp_count[23]), .C0(GND_net), 
        .D0(n7029), .CI0(n7029), .A1(GND_net), .B1(ramp_count[24]), 
        .C1(GND_net), .D1(n11235), .CI1(n11235), .CO0(n11235), .CO1(n7031), 
        .S0(n123), .S1(n122));
    defparam add_129_add_5_25.INIT0 = "0xc33c";
    defparam add_129_add_5_25.INIT1 = "0xc33c";
    FA2 add_129_add_5_23 (.A0(GND_net), .B0(ramp_count[21]), .C0(GND_net), 
        .D0(n7027), .CI0(n7027), .A1(GND_net), .B1(ramp_count[22]), 
        .C1(GND_net), .D1(n11022), .CI1(n11022), .CO0(n11022), .CO1(n7029), 
        .S0(n125), .S1(n124));
    defparam add_129_add_5_23.INIT0 = "0xc33c";
    defparam add_129_add_5_23.INIT1 = "0xc33c";
    FA2 pwm_count_424_add_4_17 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[15]), 
        .D0(n7002), .CI0(n7002), .A1(GND_net), .B1(GND_net), .C1(pwm_count[16]), 
        .D1(n11139), .CI1(n11139), .CO0(n11139), .CO1(n7004), .S0(n80), 
        .S1(n79));
    defparam pwm_count_424_add_4_17.INIT0 = "0xc33c";
    defparam pwm_count_424_add_4_17.INIT1 = "0xc33c";
    FA2 pwm_count_424_add_4_15 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[13]), 
        .D0(n7000), .CI0(n7000), .A1(GND_net), .B1(GND_net), .C1(pwm_count[14]), 
        .D1(n11136), .CI1(n11136), .CO0(n11136), .CO1(n7002), .S0(n82), 
        .S1(n81));
    defparam pwm_count_424_add_4_15.INIT0 = "0xc33c";
    defparam pwm_count_424_add_4_15.INIT1 = "0xc33c";
    (* lut_function="(A (B))" *) LUT4 i1970_2_lut (.A(n164), .B(n5963), 
            .Z(red_accum_31__N_319[6]));
    defparam i1970_2_lut.INIT = "0x8888";
    (* lut_function="(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))" *) LUT4 mux_188_i17_4_lut (.A(red_accum[30]), 
            .B(red_peak[30]), .C(n2617), .D(n2619), .Z(curr_red_17__N_415[16]));
    defparam mux_188_i17_4_lut.INIT = "0xc0ca";
    (* lut_function="(A (B (C (D))))" *) LUT4 i12_4_lut (.A(pwm_count[12]), 
            .B(pwm_count[11]), .C(pwm_count[3]), .D(pwm_count[4]), .Z(n29_adj_974));
    defparam i12_4_lut.INIT = "0x8000";
    (* lut_function="(A (B (C)))" *) LUT4 i9_3_lut (.A(pwm_count[1]), .B(pwm_count[7]), 
            .C(pwm_count[13]), .Z(n26_adj_977));
    defparam i9_3_lut.INIT = "0x8080";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2088_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[16]), .Z(curr_red_17__N_415[2]));
    defparam i2088_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B))" *) LUT4 i1969_2_lut (.A(n165), .B(n5963), 
            .Z(red_accum_31__N_319[5]));
    defparam i1969_2_lut.INIT = "0x8888";
    (* lut_function="(A (B)+!A (B (C+(D))))" *) LUT4 i1_4_lut (.A(n5), .B(steady_count[19]), 
            .C(steady_count[14]), .D(steady_count[15]), .Z(n5_adj_978));
    defparam i1_4_lut.INIT = "0xccc8";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2087_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[15]), .Z(curr_red_17__N_415[1]));
    defparam i2087_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2070_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[29]), .Z(curr_blu_17__N_451[15]));
    defparam i2070_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2071_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[31]), .Z(curr_blu_17__N_451[17]));
    defparam i2071_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B))" *) LUT4 i1968_2_lut (.A(n166), .B(n5963), 
            .Z(red_accum_31__N_319[4]));
    defparam i1968_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i1967_2_lut (.A(n167), .B(n5963), 
            .Z(red_accum_31__N_319[3]));
    defparam i1967_2_lut.INIT = "0x8888";
    FA2 add_2857_27 (.A0(GND_net), .B0(blu_accum[28]), .C0(n3039), .D0(n7089), 
        .CI0(n7089), .A1(GND_net), .B1(blu_accum[29]), .C1(n3039), .D1(n11064), 
        .CI1(n11064), .CO0(n11064), .CO1(n7091), .S0(n142_adj_861), 
        .S1(n141));
    defparam add_2857_27.INIT0 = "0xc33c";
    defparam add_2857_27.INIT1 = "0xc33c";
    FA2 add_129_add_5_21 (.A0(GND_net), .B0(ramp_count[19]), .C0(GND_net), 
        .D0(n7025), .CI0(n7025), .A1(GND_net), .B1(ramp_count[20]), 
        .C1(GND_net), .D1(n11019), .CI1(n11019), .CO0(n11019), .CO1(n7027), 
        .S0(n127), .S1(n126));
    defparam add_129_add_5_21.INIT0 = "0xc33c";
    defparam add_129_add_5_21.INIT1 = "0xc33c";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2095_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[23]), .Z(curr_red_17__N_415[9]));
    defparam i2095_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B+(C (D)))+!A (B))" *) LUT4 i1_4_lut_adj_2 (.A(n24_adj_928), 
            .B(steady_count[16]), .C(steady_count[13]), .D(steady_count[12]), 
            .Z(n5));
    defparam i1_4_lut_adj_2.INIT = "0xeccc";
    (* lut_function="(A (B))" *) LUT4 i1960_2_lut (.A(n145_adj_940), .B(n5963), 
            .Z(grn_accum_31__N_351[25]));
    defparam i1960_2_lut.INIT = "0x8888";
    FA2 add_2857_25 (.A0(GND_net), .B0(blu_accum[26]), .C0(n3039), .D0(n7087), 
        .CI0(n7087), .A1(GND_net), .B1(blu_accum[27]), .C1(n3039), .D1(n11061), 
        .CI1(n11061), .CO0(n11061), .CO1(n7089), .S0(n144_adj_925), 
        .S1(n143_adj_822));
    defparam add_2857_25.INIT0 = "0xc33c";
    defparam add_2857_25.INIT1 = "0xc33c";
    FA2 add_129_add_5_19 (.A0(GND_net), .B0(ramp_count[17]), .C0(GND_net), 
        .D0(n7023), .CI0(n7023), .A1(GND_net), .B1(ramp_count[18]), 
        .C1(GND_net), .D1(n11016), .CI1(n11016), .CO0(n11016), .CO1(n7025), 
        .S0(n129), .S1(n128));
    defparam add_129_add_5_19.INIT0 = "0xc33c";
    defparam add_129_add_5_19.INIT1 = "0xc33c";
    FA2 add_2857_23 (.A0(GND_net), .B0(blu_accum[24]), .C0(n3039), .D0(n7085), 
        .CI0(n7085), .A1(GND_net), .B1(blu_accum[25]), .C1(n3039), .D1(n11058), 
        .CI1(n11058), .CO0(n11058), .CO1(n7087), .S0(n146_adj_923), 
        .S1(n145_adj_924));
    defparam add_2857_23.INIT0 = "0xc33c";
    defparam add_2857_23.INIT1 = "0xc33c";
    FA2 pwm_count_424_add_4_13 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[11]), 
        .D0(n6998), .CI0(n6998), .A1(GND_net), .B1(GND_net), .C1(pwm_count[12]), 
        .D1(n11133), .CI1(n11133), .CO0(n11133), .CO1(n7000), .S0(n84), 
        .S1(n83));
    defparam pwm_count_424_add_4_13.INIT0 = "0xc33c";
    defparam pwm_count_424_add_4_13.INIT1 = "0xc33c";
    FA2 add_2857_21 (.A0(GND_net), .B0(blu_accum[22]), .C0(n3039), .D0(n7083), 
        .CI0(n7083), .A1(GND_net), .B1(blu_accum[23]), .C1(n3039), .D1(n11055), 
        .CI1(n11055), .CO0(n11055), .CO1(n7085), .S0(n148_adj_921), 
        .S1(n147_adj_922));
    defparam add_2857_21.INIT0 = "0xc33c";
    defparam add_2857_21.INIT1 = "0xc33c";
    FA2 add_2857_19 (.A0(GND_net), .B0(blu_accum[20]), .C0(n3039), .D0(n7081), 
        .CI0(n7081), .A1(GND_net), .B1(blu_accum[21]), .C1(n3039), .D1(n11052), 
        .CI1(n11052), .CO0(n11052), .CO1(n7083), .S0(n150_adj_919), 
        .S1(n149_adj_920));
    defparam add_2857_19.INIT0 = "0xc33c";
    defparam add_2857_19.INIT1 = "0xc33c";
    (* lut_function="(!(A (B ((D)+!C)+!B !(C))+!A (B (C)+!B (C+(D)))))" *) LUT4 i4463_4_lut (.A(off_max_cnt[24]), 
            .B(steady_count[7]), .C(steady_count[13]), .D(n9112), .Z(n9154));
    defparam i4463_4_lut.INIT = "0x24a5";
    FA2 add_2857_17 (.A0(GND_net), .B0(blu_accum[18]), .C0(n3039), .D0(n7079), 
        .CI0(n7079), .A1(GND_net), .B1(blu_accum[19]), .C1(n3039), .D1(n11049), 
        .CI1(n11049), .CO0(n11049), .CO1(n7081), .S0(n152_adj_917), 
        .S1(n151_adj_918));
    defparam add_2857_17.INIT0 = "0xc33c";
    defparam add_2857_17.INIT1 = "0xc33c";
    (* lut_function="(!((B)+!A))" *) LUT4 i1871_2_lut (.A(n78), .B(n6194), 
            .Z(n98));
    defparam i1871_2_lut.INIT = "0x2222";
    FA2 add_129_add_5_17 (.A0(GND_net), .B0(ramp_count[15]), .C0(GND_net), 
        .D0(n7021), .CI0(n7021), .A1(GND_net), .B1(ramp_count[16]), 
        .C1(GND_net), .D1(n11013), .CI1(n11013), .CO0(n11013), .CO1(n7023), 
        .S0(n131), .S1(n130));
    defparam add_129_add_5_17.INIT0 = "0xc33c";
    defparam add_129_add_5_17.INIT1 = "0xc33c";
    FA2 pwm_count_424_add_4_11 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[9]), 
        .D0(n6996), .CI0(n6996), .A1(GND_net), .B1(GND_net), .C1(pwm_count[10]), 
        .D1(n11130), .CI1(n11130), .CO0(n11130), .CO1(n6998), .S0(n86), 
        .S1(n85));
    defparam pwm_count_424_add_4_11.INIT0 = "0xc33c";
    defparam pwm_count_424_add_4_11.INIT1 = "0xc33c";
    FA2 add_128_add_5_23 (.A0(GND_net), .B0(steady_count[21]), .C0(GND_net), 
        .D0(n6979), .CI0(n6979), .A1(GND_net), .B1(steady_count[22]), 
        .C1(GND_net), .D1(n11223), .CI1(n11223), .CO0(n11223), .CO1(n6981), 
        .S0(n125_adj_877), .S1(n124_adj_878));
    defparam add_128_add_5_23.INIT0 = "0xc33c";
    defparam add_128_add_5_23.INIT1 = "0xc33c";
    (* lut_function="(A (B))" *) LUT4 i1959_2_lut (.A(n146_adj_933), .B(n5963), 
            .Z(grn_accum_31__N_351[24]));
    defparam i1959_2_lut.INIT = "0x8888";
    FA2 add_2857_15 (.A0(GND_net), .B0(blu_accum[16]), .C0(n3039), .D0(n7077), 
        .CI0(n7077), .A1(GND_net), .B1(blu_accum[17]), .C1(n3039), .D1(n11046), 
        .CI1(n11046), .CO0(n11046), .CO1(n7079), .S0(n154_adj_915), 
        .S1(n153_adj_916));
    defparam add_2857_15.INIT0 = "0xc33c";
    defparam add_2857_15.INIT1 = "0xc33c";
    (* lut_function="(!((B)+!A))" *) LUT4 i1863_2_lut (.A(n95), .B(n6194), 
            .Z(n115));
    defparam i1863_2_lut.INIT = "0x2222";
    FA2 add_129_add_5_15 (.A0(GND_net), .B0(ramp_count[13]), .C0(GND_net), 
        .D0(n7019), .CI0(n7019), .A1(GND_net), .B1(ramp_count[14]), 
        .C1(GND_net), .D1(n11010), .CI1(n11010), .CO0(n11010), .CO1(n7021), 
        .S0(n133), .S1(n132));
    defparam add_129_add_5_15.INIT0 = "0xc33c";
    defparam add_129_add_5_15.INIT1 = "0xc33c";
    (* lut_function="(A (B (C))+!A !(B+(C)))" *) LUT4 i4421_3_lut (.A(off_max_cnt[24]), 
            .B(steady_count[5]), .C(steady_count[6]), .Z(n9112));
    defparam i4421_3_lut.INIT = "0x8181";
    (* lut_function="(A (B))" *) LUT4 i1958_2_lut (.A(n147_adj_932), .B(n5963), 
            .Z(grn_accum_31__N_351[23]));
    defparam i1958_2_lut.INIT = "0x8888";
    FA2 add_2857_13 (.A0(GND_net), .B0(blu_accum[14]), .C0(n3039), .D0(n7075), 
        .CI0(n7075), .A1(GND_net), .B1(blu_accum[15]), .C1(n3039), .D1(n11043), 
        .CI1(n11043), .CO0(n11043), .CO1(n7077), .S0(n156_adj_913), 
        .S1(n155_adj_914));
    defparam add_2857_13.INIT0 = "0xc33c";
    defparam add_2857_13.INIT1 = "0xc33c";
    (* lut_function="(!(A (B+!(C (D)))+!A (B+(C+!(D)))))" *) LUT4 i4542_4_lut (.A(off_max_cnt[24]), 
            .B(n10471), .C(steady_count[24]), .D(n9217), .Z(n9233));
    defparam i4542_4_lut.INIT = "0x2100";
    (* lut_function="(!((B)+!A))" *) LUT4 i1865_2_lut (.A(n79), .B(n6194), 
            .Z(n99));
    defparam i1865_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_58_i36_4_lut (.A(n24_adj_833), 
            .B(n34_adj_823), .C(n35_adj_821), .D(n9482), .Z(red_pwm_N_784));
    defparam pwm_count_17__I_0_58_i36_4_lut.INIT = "0xcacc";
    (* lut_function="(A (B+(C))+!A (B+(C (D))))" *) LUT4 i472_4_lut (.A(n8558), 
            .B(steady_count[11]), .C(steady_count[10]), .D(steady_count[9]), 
            .Z(n24_adj_928));
    defparam i472_4_lut.INIT = "0xfcec";
    (* lut_function="(!((B)+!A))" *) LUT4 i1899_2_lut (.A(n94), .B(n6194), 
            .Z(n114));
    defparam i1899_2_lut.INIT = "0x2222";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2094_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[22]), .Z(curr_red_17__N_415[8]));
    defparam i2094_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_58_i24_4_lut (.A(n16_adj_841), 
            .B(n22_adj_835), .C(n25_adj_832), .D(n9455), .Z(n24_adj_833));
    defparam pwm_count_17__I_0_58_i24_4_lut.INIT = "0xcacc";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_58_i34_4_lut (.A(n28_adj_829), 
            .B(n32_adj_825), .C(n35_adj_821), .D(n9488), .Z(n34_adj_823));
    defparam pwm_count_17__I_0_58_i34_4_lut.INIT = "0xcacc";
    (* lut_function="(!((B)+!A))" *) LUT4 i1894_2_lut (.A(n88), .B(n6194), 
            .Z(n108));
    defparam i1894_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i1957_2_lut (.A(n148_adj_943), .B(n5963), 
            .Z(grn_accum_31__N_351[22]));
    defparam i1957_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i1956_2_lut (.A(n149_adj_958), .B(n5963), 
            .Z(grn_accum_31__N_351[21]));
    defparam i1956_2_lut.INIT = "0x8888";
    (* lut_function="(A (B (C+(D))))" *) LUT4 i4_4_lut (.A(steady_count[7]), 
            .B(n8_adj_979), .C(n8525), .D(steady_count[4]), .Z(n8558));
    defparam i4_4_lut.INIT = "0x8880";
    (* lut_function="(!(A+(B+(C+!(D)))))" *) LUT4 i4791_4_lut (.A(n33_adj_824), 
            .B(n31_adj_826), .C(n29_adj_828), .D(n9467), .Z(n9482));
    defparam i4791_4_lut.INIT = "0x0100";
    FA2 pwm_count_424_add_4_9 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[7]), 
        .D0(n6994), .CI0(n6994), .A1(GND_net), .B1(GND_net), .C1(pwm_count[8]), 
        .D1(n11127), .CI1(n11127), .CO0(n11127), .CO1(n6996), .S0(n88), 
        .S1(n87));
    defparam pwm_count_424_add_4_9.INIT0 = "0xc33c";
    defparam pwm_count_424_add_4_9.INIT1 = "0xc33c";
    FA2 pwm_count_424_add_4_7 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[5]), 
        .D0(n6992), .CI0(n6992), .A1(GND_net), .B1(GND_net), .C1(pwm_count[6]), 
        .D1(n11124), .CI1(n11124), .CO0(n11124), .CO1(n6994), .S0(n90), 
        .S1(n89));
    defparam pwm_count_424_add_4_7.INIT0 = "0xc33c";
    defparam pwm_count_424_add_4_7.INIT1 = "0xc33c";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 pwm_count_17__I_0_58_i16_3_lut (.A(n8_adj_849), 
            .B(curr_red[9]), .C(n19_adj_838), .Z(n16_adj_841));
    defparam pwm_count_17__I_0_58_i16_3_lut.INIT = "0xcaca";
    FA2 add_129_add_5_13 (.A0(GND_net), .B0(ramp_count[11]), .C0(GND_net), 
        .D0(n7017), .CI0(n7017), .A1(GND_net), .B1(ramp_count[12]), 
        .C1(GND_net), .D1(n11007), .CI1(n11007), .CO0(n11007), .CO1(n7019), 
        .S0(n135), .S1(n134));
    defparam add_129_add_5_13.INIT0 = "0xc33c";
    defparam add_129_add_5_13.INIT1 = "0xc33c";
    FA2 add_2857_11 (.A0(GND_net), .B0(blu_accum[12]), .C0(n3039), .D0(n7073), 
        .CI0(n7073), .A1(GND_net), .B1(blu_accum[13]), .C1(n3039), .D1(n11040), 
        .CI1(n11040), .CO0(n11040), .CO1(n7075), .S0(n158_adj_911), 
        .S1(n157_adj_912));
    defparam add_2857_11.INIT0 = "0xc33c";
    defparam add_2857_11.INIT1 = "0xc33c";
    FA2 add_2857_9 (.A0(GND_net), .B0(blu_accum[10]), .C0(n3039), .D0(n7071), 
        .CI0(n7071), .A1(GND_net), .B1(blu_accum[11]), .C1(n3039), .D1(n11037), 
        .CI1(n11037), .CO0(n11037), .CO1(n7073), .S0(n160_adj_909), 
        .S1(n159_adj_910));
    defparam add_2857_9.INIT0 = "0xc33c";
    defparam add_2857_9.INIT1 = "0xc33c";
    FA2 add_128_add_5_21 (.A0(GND_net), .B0(steady_count[19]), .C0(GND_net), 
        .D0(n6977), .CI0(n6977), .A1(GND_net), .B1(steady_count[20]), 
        .C1(GND_net), .D1(n11220), .CI1(n11220), .CO0(n11220), .CO1(n6979), 
        .S0(n127_adj_875), .S1(n126_adj_876));
    defparam add_128_add_5_21.INIT0 = "0xc33c";
    defparam add_128_add_5_21.INIT1 = "0xc33c";
    FA2 add_128_add_5_15 (.A0(GND_net), .B0(steady_count[13]), .C0(GND_net), 
        .D0(n6971), .CI0(n6971), .A1(GND_net), .B1(steady_count[14]), 
        .C1(GND_net), .D1(n11211), .CI1(n11211), .CO0(n11211), .CO1(n6973), 
        .S0(n133_adj_951), .S1(n132_adj_952));
    defparam add_128_add_5_15.INIT0 = "0xc33c";
    defparam add_128_add_5_15.INIT1 = "0xc33c";
    (* lut_function="(!((B)+!A))" *) LUT4 i1895_2_lut (.A(n89), .B(n6194), 
            .Z(n109));
    defparam i1895_2_lut.INIT = "0x2222";
    (* lut_function="(!((B)+!A))" *) LUT4 i1897_2_lut (.A(n90), .B(n6194), 
            .Z(n110));
    defparam i1897_2_lut.INIT = "0x2222";
    FA2 add_128_add_5_13 (.A0(GND_net), .B0(steady_count[11]), .C0(GND_net), 
        .D0(n6969), .CI0(n6969), .A1(GND_net), .B1(steady_count[12]), 
        .C1(GND_net), .D1(n11208), .CI1(n11208), .CO0(n11208), .CO1(n6971), 
        .S0(n135_adj_949), .S1(n134_adj_950));
    defparam add_128_add_5_13.INIT0 = "0xc33c";
    defparam add_128_add_5_13.INIT1 = "0xc33c";
    FA2 add_2857_7 (.A0(GND_net), .B0(blu_accum[8]), .C0(n3039), .D0(n7069), 
        .CI0(n7069), .A1(GND_net), .B1(blu_accum[9]), .C1(n3039), .D1(n11034), 
        .CI1(n11034), .CO0(n11034), .CO1(n7071), .S0(n162_adj_907), 
        .S1(n161_adj_908));
    defparam add_2857_7.INIT0 = "0xc33c";
    defparam add_2857_7.INIT1 = "0xc33c";
    FA2 add_129_add_5_11 (.A0(GND_net), .B0(ramp_count[9]), .C0(GND_net), 
        .D0(n7015), .CI0(n7015), .A1(GND_net), .B1(ramp_count[10]), 
        .C1(GND_net), .D1(n11004), .CI1(n11004), .CO0(n11004), .CO1(n7017), 
        .S0(n137), .S1(n136));
    defparam add_129_add_5_11.INIT0 = "0xc33c";
    defparam add_129_add_5_11.INIT1 = "0xc33c";
    FA2 add_2857_5 (.A0(GND_net), .B0(blu_accum[6]), .C0(n3039), .D0(n7067), 
        .CI0(n7067), .A1(GND_net), .B1(blu_accum[7]), .C1(n3039), .D1(n11031), 
        .CI1(n11031), .CO0(n11031), .CO1(n7069), .S0(n164_adj_905), 
        .S1(n163_adj_906));
    defparam add_2857_5.INIT0 = "0xc33c";
    defparam add_2857_5.INIT1 = "0xc33c";
    (* lut_function="(A (B (C)))" *) LUT4 i3_3_lut (.A(steady_count[5]), .B(steady_count[6]), 
            .C(steady_count[8]), .Z(n8_adj_979));
    defparam i3_3_lut.INIT = "0x8080";
    (* lut_function="(A (B))" *) LUT4 i1955_2_lut (.A(n150_adj_926), .B(n5963), 
            .Z(grn_accum_31__N_351[20]));
    defparam i1955_2_lut.INIT = "0x8888";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_58_i22_4_lut (.A(n6_adj_851), 
            .B(n20_adj_837), .C(n25_adj_832), .D(n9457), .Z(n22_adj_835));
    defparam pwm_count_17__I_0_58_i22_4_lut.INIT = "0xcacc";
    (* lut_function="(A (B (D))+!A (B (C (D))))" *) LUT4 i2_4_lut_adj_3 (.A(steady_count[0]), 
            .B(steady_count[3]), .C(steady_count[1]), .D(steady_count[2]), 
            .Z(n8525));
    defparam i2_4_lut_adj_3.INIT = "0xc800";
    (* lut_function="(!(A+(B+!(C+!(D)))))" *) LUT4 i4764_4_lut (.A(n23_adj_834), 
            .B(n21_adj_836), .C(n19_adj_838), .D(n9443), .Z(n9455));
    defparam i4764_4_lut.INIT = "0x1011";
    (* lut_function="(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))" *) LUT4 i4672_2_lut_4_lut (.A(pwm_count[8]), 
            .B(curr_grn[8]), .C(pwm_count[4]), .D(curr_grn[4]), .Z(n9363));
    defparam i4672_2_lut_4_lut.INIT = "0x9009";
    FA2 add_128_add_5_9 (.A0(GND_net), .B0(steady_count[7]), .C0(GND_net), 
        .D0(n6965), .CI0(n6965), .A1(GND_net), .B1(steady_count[8]), 
        .C1(GND_net), .D1(n11202), .CI1(n11202), .CO0(n11202), .CO1(n6967), 
        .S0(n139_adj_945), .S1(n138_adj_946));
    defparam add_128_add_5_9.INIT0 = "0xc33c";
    defparam add_128_add_5_9.INIT1 = "0xc33c";
    (* lut_function="(!((B)+!A))" *) LUT4 i1900_2_lut (.A(RGB_color_s[0]), 
            .B(RGB_color_s[1]), .Z(grn_set[0]));
    defparam i1900_2_lut.INIT = "0x2222";
    FA2 pwm_count_424_add_4_5 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[3]), 
        .D0(n6990), .CI0(n6990), .A1(GND_net), .B1(GND_net), .C1(pwm_count[4]), 
        .D1(n11121), .CI1(n11121), .CO0(n11121), .CO1(n6992), .S0(n92), 
        .S1(n91));
    defparam pwm_count_424_add_4_5.INIT0 = "0xc33c";
    defparam pwm_count_424_add_4_5.INIT1 = "0xc33c";
    FA2 add_128_add_5_11 (.A0(GND_net), .B0(steady_count[9]), .C0(GND_net), 
        .D0(n6967), .CI0(n6967), .A1(GND_net), .B1(steady_count[10]), 
        .C1(GND_net), .D1(n11205), .CI1(n11205), .CO0(n11205), .CO1(n6969), 
        .S0(n137_adj_947), .S1(n136_adj_948));
    defparam add_128_add_5_11.INIT0 = "0xc33c";
    defparam add_128_add_5_11.INIT1 = "0xc33c";
    FA2 add_129_add_5_9 (.A0(GND_net), .B0(ramp_count[7]), .C0(GND_net), 
        .D0(n7013), .CI0(n7013), .A1(GND_net), .B1(ramp_count[8]), .C1(GND_net), 
        .D1(n11001), .CI1(n11001), .CO0(n11001), .CO1(n7015), .S0(n139_adj_853), 
        .S1(n138));
    defparam add_129_add_5_9.INIT0 = "0xc33c";
    defparam add_129_add_5_9.INIT1 = "0xc33c";
    FA2 add_2857_3 (.A0(GND_net), .B0(blu_accum[4]), .C0(n3039), .D0(n7065), 
        .CI0(n7065), .A1(GND_net), .B1(blu_accum[5]), .C1(n3039), .D1(n11028), 
        .CI1(n11028), .CO0(n11028), .CO1(n7067), .S0(n166_adj_903), 
        .S1(n165_adj_904));
    defparam add_2857_3.INIT0 = "0xc33c";
    defparam add_2857_3.INIT1 = "0xc33c";
    FA2 pwm_count_424_add_4_3 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[1]), 
        .D0(n6988), .CI0(n6988), .A1(GND_net), .B1(GND_net), .C1(pwm_count[2]), 
        .D1(n11118), .CI1(n11118), .CO0(n11118), .CO1(n6990), .S0(n94), 
        .S1(n93));
    defparam pwm_count_424_add_4_3.INIT0 = "0xc33c";
    defparam pwm_count_424_add_4_3.INIT1 = "0xc33c";
    (* lut_function="(A (B))" *) LUT4 i1954_2_lut (.A(n151_adj_862), .B(n5963), 
            .Z(grn_accum_31__N_351[19]));
    defparam i1954_2_lut.INIT = "0x8888";
    FA2 add_129_add_5_7 (.A0(GND_net), .B0(ramp_count[5]), .C0(GND_net), 
        .D0(n7011), .CI0(n7011), .A1(GND_net), .B1(ramp_count[6]), .C1(GND_net), 
        .D1(n10998), .CI1(n10998), .CO0(n10998), .CO1(n7013), .S0(n141_adj_855), 
        .S1(n140_adj_854));
    defparam add_129_add_5_7.INIT0 = "0xc33c";
    defparam add_129_add_5_7.INIT1 = "0xc33c";
    FA2 add_2857_1 (.A0(GND_net), .B0(n3039), .C0(GND_net), .A1(GND_net), 
        .B1(blu_accum[3]), .C1(n4260), .D1(n11025), .CI1(n11025), .CO0(n11025), 
        .CO1(n7065), .S1(n167_adj_902));
    defparam add_2857_1.INIT0 = "0xc33c";
    defparam add_2857_1.INIT1 = "0xc33c";
    (* lut_function="(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))" *) LUT4 mux_184_i17_4_lut (.A(blu_accum[30]), 
            .B(blu_peak[30]), .C(n2617), .D(n2619), .Z(curr_blu_17__N_451[16]));
    defparam mux_184_i17_4_lut.INIT = "0xc0ca";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 LessThan_61_i47_rep_161_2_lut (.A(off_max_cnt[27]), 
            .B(steady_count[23]), .Z(n10471));
    defparam LessThan_61_i47_rep_161_2_lut.INIT = "0x6666";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_58_i28_4_lut (.A(n4_adj_852), 
            .B(n26_adj_831), .C(n31_adj_826), .D(n9479), .Z(n28_adj_829));
    defparam pwm_count_17__I_0_58_i28_4_lut.INIT = "0xcacc";
    (* lut_function="(!(A (((D)+!C)+!B)+!A (B+(C+(D)))))" *) LUT4 i4526_4_lut (.A(off_max_cnt[24]), 
            .B(steady_count[21]), .C(steady_count[22]), .D(n9144), .Z(n9217));
    defparam i4526_4_lut.INIT = "0x0081";
    FA2 add_128_add_5_19 (.A0(GND_net), .B0(steady_count[17]), .C0(GND_net), 
        .D0(n6975), .CI0(n6975), .A1(GND_net), .B1(steady_count[18]), 
        .C1(GND_net), .D1(n11217), .CI1(n11217), .CO0(n11217), .CO1(n6977), 
        .S0(n129_adj_873), .S1(n128_adj_874));
    defparam add_128_add_5_19.INIT0 = "0xc33c";
    defparam add_128_add_5_19.INIT1 = "0xc33c";
    FA2 pwm_count_424_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
        .A1(GND_net), .B1(VCC_net), .C1(pwm_count[0]), .D1(n10983), 
        .CI1(n10983), .CO0(n10983), .CO1(n6988), .S1(n95));
    defparam pwm_count_424_add_4_1.INIT0 = "0xc33c";
    defparam pwm_count_424_add_4_1.INIT1 = "0xc33c";
    FA2 add_129_add_5_5 (.A0(GND_net), .B0(ramp_count[3]), .C0(GND_net), 
        .D0(n7009), .CI0(n7009), .A1(GND_net), .B1(ramp_count[4]), .C1(GND_net), 
        .D1(n10995), .CI1(n10995), .CO0(n10995), .CO1(n7011), .S0(n143_adj_857), 
        .S1(n142_adj_856));
    defparam add_129_add_5_5.INIT0 = "0xc33c";
    defparam add_129_add_5_5.INIT1 = "0xc33c";
    FA2 add_2858_29 (.A0(GND_net), .B0(red_accum[30]), .C0(n3039), .D0(n7062), 
        .CI0(n7062), .A1(GND_net), .B1(red_accum[31]), .C1(n3039), .D1(n11187), 
        .CI1(n11187), .CO0(n11187), .S0(n140_adj_819), .S1(n139_adj_820));
    defparam add_2858_29.INIT0 = "0xc33c";
    defparam add_2858_29.INIT1 = "0xc33c";
    FA2 add_2858_27 (.A0(GND_net), .B0(red_accum[28]), .C0(n3039), .D0(n7060), 
        .CI0(n7060), .A1(GND_net), .B1(red_accum[29]), .C1(n3039), .D1(n11184), 
        .CI1(n11184), .CO0(n11184), .CO1(n7062), .S0(n142), .S1(n141_adj_818));
    defparam add_2858_27.INIT0 = "0xc33c";
    defparam add_2858_27.INIT1 = "0xc33c";
    (* lut_function="(A (B))" *) LUT4 i1866_2_lut (.A(RGB_color_s[0]), .B(RGB_color_s[1]), 
            .Z(blu_set[1]));
    defparam i1866_2_lut.INIT = "0x8888";
    (* lut_function="(!((B)+!A))" *) LUT4 i1879_2_lut (.A(n92), .B(n6194), 
            .Z(n112));
    defparam i1879_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i1953_2_lut (.A(n152_adj_957), .B(n5963), 
            .Z(grn_accum_31__N_351[18]));
    defparam i1953_2_lut.INIT = "0x8888";
    FA2 add_128_add_5_29 (.A0(GND_net), .B0(steady_count[27]), .C0(GND_net), 
        .D0(n6985), .CI0(n6985), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n11232), .CI1(n11232), .CO0(n11232), .S0(n119_adj_883));
    defparam add_128_add_5_29.INIT0 = "0xc33c";
    defparam add_128_add_5_29.INIT1 = "0xc33c";
    FA2 add_128_add_5_17 (.A0(GND_net), .B0(steady_count[15]), .C0(GND_net), 
        .D0(n6973), .CI0(n6973), .A1(GND_net), .B1(steady_count[16]), 
        .C1(GND_net), .D1(n11214), .CI1(n11214), .CO0(n11214), .CO1(n6975), 
        .S0(n131_adj_953), .S1(n130_adj_954));
    defparam add_128_add_5_17.INIT0 = "0xc33c";
    defparam add_128_add_5_17.INIT1 = "0xc33c";
    FA2 add_129_add_5_3 (.A0(GND_net), .B0(ramp_count[1]), .C0(GND_net), 
        .D0(n7007), .CI0(n7007), .A1(GND_net), .B1(ramp_count[2]), .C1(GND_net), 
        .D1(n10992), .CI1(n10992), .CO0(n10992), .CO1(n7009), .S0(n145_adj_859), 
        .S1(n144_adj_858));
    defparam add_129_add_5_3.INIT0 = "0xc33c";
    defparam add_129_add_5_3.INIT1 = "0xc33c";
    FA2 add_128_add_5_27 (.A0(GND_net), .B0(steady_count[25]), .C0(GND_net), 
        .D0(n6983), .CI0(n6983), .A1(GND_net), .B1(steady_count[26]), 
        .C1(GND_net), .D1(n11229), .CI1(n11229), .CO0(n11229), .CO1(n6985), 
        .S0(n121_adj_881), .S1(n120_adj_882));
    defparam add_128_add_5_27.INIT0 = "0xc33c";
    defparam add_128_add_5_27.INIT1 = "0xc33c";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 pwm_count_17__I_0_58_i32_3_lut (.A(n30_adj_827), 
            .B(curr_red[17]), .C(n35_adj_821), .Z(n32_adj_825));
    defparam pwm_count_17__I_0_58_i32_3_lut.INIT = "0xcaca";
    FA2 add_2858_25 (.A0(GND_net), .B0(red_accum[26]), .C0(n3039), .D0(n7058), 
        .CI0(n7058), .A1(GND_net), .B1(red_accum[27]), .C1(n3039), .D1(n11181), 
        .CI1(n11181), .CO0(n11181), .CO1(n7060), .S0(n144), .S1(n143));
    defparam add_2858_25.INIT0 = "0xc33c";
    defparam add_2858_25.INIT1 = "0xc33c";
    FA2 add_129_add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .A1(GND_net), 
        .B1(ramp_count[0]), .C1(VCC_net), .D1(n10989), .CI1(n10989), 
        .CO0(n10989), .CO1(n7007), .S1(n146_adj_860));
    defparam add_129_add_5_1.INIT0 = "0xc33c";
    defparam add_129_add_5_1.INIT1 = "0xc33c";
    FA2 add_2858_23 (.A0(GND_net), .B0(red_accum[24]), .C0(n3039), .D0(n7056), 
        .CI0(n7056), .A1(GND_net), .B1(red_accum[25]), .C1(n3039), .D1(n11178), 
        .CI1(n11178), .CO0(n11178), .CO1(n7058), .S0(n146), .S1(n145));
    defparam add_2858_23.INIT0 = "0xc33c";
    defparam add_2858_23.INIT1 = "0xc33c";
    (* lut_function="(!(A (B+!(C (D)))+!A (B+(C+!(D)))))" *) LUT4 i4453_4_lut (.A(off_max_cnt[24]), 
            .B(n23_adj_893), .C(steady_count[12]), .D(n9132), .Z(n9144));
    defparam i4453_4_lut.INIT = "0x2100";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_i18_3_lut_3_lut (.A(curr_grn[10]), 
            .B(curr_grn[11]), .C(pwm_count[11]), .Z(n18_adj_804));
    defparam pwm_count_17__I_0_i18_3_lut_3_lut.INIT = "0x8e8e";
    FA2 add_128_add_5_25 (.A0(GND_net), .B0(steady_count[23]), .C0(GND_net), 
        .D0(n6981), .CI0(n6981), .A1(GND_net), .B1(steady_count[24]), 
        .C1(GND_net), .D1(n11226), .CI1(n11226), .CO0(n11226), .CO1(n6983), 
        .S0(n123_adj_879), .S1(n122_adj_880));
    defparam add_128_add_5_25.INIT0 = "0xc33c";
    defparam add_128_add_5_25.INIT1 = "0xc33c";
    FA2 pwm_count_424_add_4_19 (.A0(GND_net), .B0(GND_net), .C0(pwm_count[17]), 
        .D0(n7004), .CI0(n7004), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n11142), .CI1(n11142), .CO0(n11142), .S0(n78));
    defparam pwm_count_424_add_4_19.INIT0 = "0xc33c";
    defparam pwm_count_424_add_4_19.INIT1 = "0xc33c";
    FA2 add_128_add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .A1(GND_net), 
        .B1(steady_count[0]), .C1(VCC_net), .D1(n11190), .CI1(n11190), 
        .CO0(n11190), .CO1(n6959), .S1(n146_adj_934));
    defparam add_128_add_5_1.INIT0 = "0xc33c";
    defparam add_128_add_5_1.INIT1 = "0xc33c";
    FA2 add_2858_21 (.A0(GND_net), .B0(red_accum[22]), .C0(n3039), .D0(n7054), 
        .CI0(n7054), .A1(GND_net), .B1(red_accum[23]), .C1(n3039), .D1(n11175), 
        .CI1(n11175), .CO0(n11175), .CO1(n7056), .S0(n148), .S1(n147_2));
    defparam add_2858_21.INIT0 = "0xc33c";
    defparam add_2858_21.INIT1 = "0xc33c";
    FA2 add_2858_19 (.A0(GND_net), .B0(red_accum[20]), .C0(n3039), .D0(n7052), 
        .CI0(n7052), .A1(GND_net), .B1(red_accum[21]), .C1(n3039), .D1(n11172), 
        .CI1(n11172), .CO0(n11172), .CO1(n7054), .S0(n150), .S1(n149));
    defparam add_2858_19.INIT0 = "0xc33c";
    defparam add_2858_19.INIT1 = "0xc33c";
    (* lut_function="(!(A+!(B+(C+!(D)))))" *) LUT4 i4797_4_lut (.A(n33_adj_824), 
            .B(n31_adj_826), .C(n29_adj_828), .D(n9472), .Z(n9488));
    defparam i4797_4_lut.INIT = "0x5455";
    (* lut_function="(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))" *) LUT4 i4686_2_lut_4_lut (.A(pwm_count[11]), 
            .B(curr_grn[11]), .C(pwm_count[10]), .D(curr_grn[10]), .Z(n9377));
    defparam i4686_2_lut_4_lut.INIT = "0x9009";
    (* lut_function="(!((B)+!A))" *) LUT4 i2051_2_lut (.A(n119_adj_883), .B(n4392), 
            .Z(n4971));
    defparam i2051_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+!(C+(D)))+!A (B (C+(D))))" *) LUT4 pwm_count_17__I_0_58_i30_4_lut (.A(n10_adj_847), 
            .B(n12_adj_845), .C(n33_adj_824), .D(n15_adj_842), .Z(n30_adj_827));
    defparam pwm_count_17__I_0_58_i30_4_lut.INIT = "0xccca";
    (* lut_function="(A (B)+!A (B (C (D))))" *) LUT4 i1872_4_lut (.A(n4631), 
            .B(BlinkRate_s[2]), .C(n899), .D(n2616), .Z(n2629));
    defparam i1872_4_lut.INIT = "0xc888";
    (* lut_function="(!((B)+!A))" *) LUT4 i1864_2_lut (.A(n80), .B(n6194), 
            .Z(n100));
    defparam i1864_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_i6_3_lut_3_lut (.A(curr_grn[2]), 
            .B(curr_grn[3]), .C(pwm_count[3]), .Z(n6_adj_816));
    defparam pwm_count_17__I_0_i6_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="((B+(C+(D)))+!A)" *) LUT4 i3_4_lut_adj_4 (.A(BlinkRate_s[2]), 
            .B(n899), .C(n2617), .D(n2619), .Z(n4390));
    defparam i3_4_lut_adj_4.INIT = "0xfffd";
    (* lut_function="(A (B))" *) LUT4 i1952_2_lut (.A(n153_adj_938), .B(n5963), 
            .Z(grn_accum_31__N_351[17]));
    defparam i1952_2_lut.INIT = "0x8888";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_i12_3_lut_3_lut (.A(curr_grn[7]), 
            .B(curr_grn[16]), .C(pwm_count[16]), .Z(n12_adj_810));
    defparam pwm_count_17__I_0_i12_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(!(A+!(B)))" *) LUT4 i551_2_lut (.A(n611), .B(n2619), 
            .Z(n4631));
    defparam i551_2_lut.INIT = "0x4444";
    (* lut_function="(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B)))" *) LUT4 pwm_count_17__I_0_58_i4_4_lut (.A(curr_red[0]), 
            .B(curr_red[1]), .C(pwm_count[1]), .D(pwm_count[0]), .Z(n4_adj_852));
    defparam pwm_count_17__I_0_58_i4_4_lut.INIT = "0x0c8e";
    (* lut_function="(A (B (C)+!B !((D)+!C))+!A !(B (C)+!B (C+(D))))" *) LUT4 i4441_4_lut (.A(off_max_cnt[24]), 
            .B(n10463), .C(steady_count[10]), .D(n9125), .Z(n9132));
    defparam i4441_4_lut.INIT = "0x84a5";
    FA2 add_2858_17 (.A0(GND_net), .B0(red_accum[18]), .C0(n3039), .D0(n7050), 
        .CI0(n7050), .A1(GND_net), .B1(red_accum[19]), .C1(n3039), .D1(n11169), 
        .CI1(n11169), .CO0(n11169), .CO1(n7052), .S0(n152), .S1(n151));
    defparam add_2858_17.INIT0 = "0xc33c";
    defparam add_2858_17.INIT1 = "0xc33c";
    FA2 add_2858_15 (.A0(GND_net), .B0(red_accum[16]), .C0(n3039), .D0(n7048), 
        .CI0(n7048), .A1(GND_net), .B1(red_accum[17]), .C1(n3039), .D1(n11166), 
        .CI1(n11166), .CO0(n11166), .CO1(n7050), .S0(n154), .S1(n153));
    defparam add_2858_15.INIT0 = "0xc33c";
    defparam add_2858_15.INIT1 = "0xc33c";
    FA2 add_2858_13 (.A0(GND_net), .B0(red_accum[14]), .C0(n3039), .D0(n7046), 
        .CI0(n7046), .A1(GND_net), .B1(red_accum[15]), .C1(n3039), .D1(n11163), 
        .CI1(n11163), .CO0(n11163), .CO1(n7048), .S0(n156), .S1(n155));
    defparam add_2858_13.INIT0 = "0xc33c";
    defparam add_2858_13.INIT1 = "0xc33c";
    (* lut_function="(A (B))" *) LUT4 i1951_2_lut (.A(n154_adj_927), .B(n5963), 
            .Z(grn_accum_31__N_351[16]));
    defparam i1951_2_lut.INIT = "0x8888";
    FA2 add_2858_11 (.A0(GND_net), .B0(red_accum[12]), .C0(n3039), .D0(n7044), 
        .CI0(n7044), .A1(GND_net), .B1(red_accum[13]), .C1(n3039), .D1(n11160), 
        .CI1(n11160), .CO0(n11160), .CO1(n7046), .S0(n158), .S1(n157));
    defparam add_2858_11.INIT0 = "0xc33c";
    defparam add_2858_11.INIT1 = "0xc33c";
    (* lut_function="(!((B)+!A))" *) LUT4 i2050_2_lut (.A(n120_adj_882), .B(n4392), 
            .Z(n4969));
    defparam i2050_2_lut.INIT = "0x2222";
    FA2 add_2858_9 (.A0(GND_net), .B0(red_accum[10]), .C0(n3039), .D0(n7042), 
        .CI0(n7042), .A1(GND_net), .B1(red_accum[11]), .C1(n3039), .D1(n11157), 
        .CI1(n11157), .CO0(n11157), .CO1(n7044), .S0(n160), .S1(n159));
    defparam add_2858_9.INIT0 = "0xc33c";
    defparam add_2858_9.INIT1 = "0xc33c";
    FA2 add_2858_7 (.A0(GND_net), .B0(red_accum[8]), .C0(n3039), .D0(n7040), 
        .CI0(n7040), .A1(GND_net), .B1(red_accum[9]), .C1(n3039), .D1(n11154), 
        .CI1(n11154), .CO0(n11154), .CO1(n7042), .S0(n162), .S1(n161));
    defparam add_2858_7.INIT0 = "0xc33c";
    defparam add_2858_7.INIT1 = "0xc33c";
    FA2 add_2856_31 (.A0(GND_net), .B0(grn_accum[31]), .C0(n3039), .D0(n7122), 
        .CI0(n7122), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(n11115), 
        .CI1(n11115), .CO0(n11115), .S0(n139_adj_955));
    defparam add_2856_31.INIT0 = "0xc33c";
    defparam add_2856_31.INIT1 = "0xc33c";
    FA2 add_2858_5 (.A0(GND_net), .B0(red_accum[6]), .C0(n3039), .D0(n7038), 
        .CI0(n7038), .A1(GND_net), .B1(red_accum[7]), .C1(n3039), .D1(n11151), 
        .CI1(n11151), .CO0(n11151), .CO1(n7040), .S0(n164), .S1(n163));
    defparam add_2858_5.INIT0 = "0xc33c";
    defparam add_2858_5.INIT1 = "0xc33c";
    FA2 add_2856_29 (.A0(GND_net), .B0(grn_accum[29]), .C0(n3039), .D0(n7120), 
        .CI0(n7120), .A1(GND_net), .B1(grn_accum[30]), .C1(n3039), .D1(n11112), 
        .CI1(n11112), .CO0(n11112), .CO1(n7122), .S0(n141_adj_929), 
        .S1(n140_adj_956));
    defparam add_2856_29.INIT0 = "0xc33c";
    defparam add_2856_29.INIT1 = "0xc33c";
    FA2 add_2858_3 (.A0(GND_net), .B0(red_accum[4]), .C0(n3039), .D0(n7036), 
        .CI0(n7036), .A1(GND_net), .B1(red_accum[5]), .C1(n3039), .D1(n11148), 
        .CI1(n11148), .CO0(n11148), .CO1(n7038), .S0(n166), .S1(n165));
    defparam add_2858_3.INIT0 = "0xc33c";
    defparam add_2858_3.INIT1 = "0xc33c";
    FA2 add_2856_27 (.A0(GND_net), .B0(grn_accum[27]), .C0(n3039), .D0(n7118), 
        .CI0(n7118), .A1(GND_net), .B1(grn_accum[28]), .C1(n3039), .D1(n11109), 
        .CI1(n11109), .CO0(n11109), .CO1(n7120), .S0(n143_adj_931), 
        .S1(n142_adj_930));
    defparam add_2856_27.INIT0 = "0xc33c";
    defparam add_2856_27.INIT1 = "0xc33c";
    FA2 add_2858_1 (.A0(GND_net), .B0(n3039), .C0(GND_net), .A1(GND_net), 
        .B1(red_accum[3]), .C1(n4325), .D1(n11145), .CI1(n11145), .CO0(n11145), 
        .CO1(n7036), .S1(n167));
    defparam add_2858_1.INIT0 = "0xc33c";
    defparam add_2858_1.INIT1 = "0xc33c";
    (* lut_function="(A (B))" *) LUT4 i1950_2_lut (.A(n155_adj_971), .B(n5963), 
            .Z(grn_accum_31__N_351[15]));
    defparam i1950_2_lut.INIT = "0x8888";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_i10_3_lut_3_lut (.A(curr_grn[5]), 
            .B(curr_grn[6]), .C(pwm_count[6]), .Z(n10_adj_812));
    defparam pwm_count_17__I_0_i10_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(A (B))" *) LUT4 i1949_2_lut (.A(n156_adj_970), .B(n5963), 
            .Z(grn_accum_31__N_351[14]));
    defparam i1949_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i1948_2_lut (.A(n157_adj_969), .B(n5963), 
            .Z(grn_accum_31__N_351[13]));
    defparam i1948_2_lut.INIT = "0x8888";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 pwm_count_17__I_0_58_i26_3_lut (.A(n14_adj_843), 
            .B(curr_red[15]), .C(n31_adj_826), .Z(n26_adj_831));
    defparam pwm_count_17__I_0_58_i26_3_lut.INIT = "0xcaca";
    (* lut_function="(A (B+(C+!(D)))+!A (B+!((D)+!C)))" *) LUT4 i537_4_lut (.A(n52), 
            .B(ramp_count[27]), .C(ramp_count[26]), .D(ramp_max_cnt[26]), 
            .Z(n899));
    defparam i537_4_lut.INIT = "0xecfe";
    (* lut_function="(!((B)+!A))" *) LUT4 i2049_2_lut (.A(n121_adj_881), .B(n4392), 
            .Z(n4967));
    defparam i2049_2_lut.INIT = "0x2222";
    (* lut_function="(!((B)+!A))" *) LUT4 i2048_2_lut (.A(n122_adj_880), .B(n4392), 
            .Z(n4965));
    defparam i2048_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+(C+!(D)))+!A (B+!((D)+!C)))" *) LUT4 i536_4_lut (.A(n48), 
            .B(ramp_count[25]), .C(ramp_count[24]), .D(ramp_max_cnt[26]), 
            .Z(n52));
    defparam i536_4_lut.INIT = "0xecfe";
    (* lut_function="(A (B))" *) LUT4 i1947_2_lut (.A(n158_adj_968), .B(n5963), 
            .Z(grn_accum_31__N_351[12]));
    defparam i1947_2_lut.INIT = "0x8888";
    (* lut_function="(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))" *) LUT4 i4434_4_lut (.A(off_max_cnt[24]), 
            .B(off_max_cnt[27]), .C(steady_count[8]), .D(steady_count[4]), 
            .Z(n9125));
    defparam i4434_4_lut.INIT = "0x8421";
    (* lut_function="(A (B+!(C))+!A (B ((D)+!C)+!B !(C+!(D))))" *) LUT4 LessThan_76_i48_4_lut (.A(n44), 
            .B(ramp_count[23]), .C(ramp_max_cnt[26]), .D(ramp_count[22]), 
            .Z(n48));
    defparam LessThan_76_i48_4_lut.INIT = "0xcf8e";
    (* lut_function="(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))" *) LUT4 i4708_2_lut_4_lut (.A(pwm_count[14]), 
            .B(curr_grn[14]), .C(pwm_count[13]), .D(curr_grn[13]), .Z(n9399));
    defparam i4708_2_lut_4_lut.INIT = "0x9009";
    (* lut_function="(!((B)+!A))" *) LUT4 i2047_2_lut (.A(n123_adj_879), .B(n4392), 
            .Z(n4963));
    defparam i2047_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+(C))+!A !((C)+!B))" *) LUT4 LessThan_76_i44_3_lut (.A(n40), 
            .B(n42), .C(n9090), .Z(n44));
    defparam LessThan_76_i44_3_lut.INIT = "0xacac";
    (* lut_function="(!((B)+!A))" *) LUT4 i1862_2_lut (.A(n81), .B(n6194), 
            .Z(n101));
    defparam i1862_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i1946_2_lut (.A(n159_adj_967), .B(n5963), 
            .Z(grn_accum_31__N_351[11]));
    defparam i1946_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2093_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[21]), .Z(curr_red_17__N_415[7]));
    defparam i2093_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i8_3_lut (.A(steady_count[4]), 
            .B(steady_count[8]), .C(off_max_cnt[24]), .Z(n8_adj_899));
    defparam LessThan_61_i8_3_lut.INIT = "0x8e8e";
    (* lut_function="(!((B)+!A))" *) LUT4 i2046_2_lut (.A(n124_adj_878), .B(n4392), 
            .Z(n4961));
    defparam i2046_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i1945_2_lut (.A(n160_adj_966), .B(n5963), 
            .Z(grn_accum_31__N_351[10]));
    defparam i1945_2_lut.INIT = "0x8888";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i44_3_lut (.A(n42_adj_885), 
            .B(steady_count[25]), .C(off_max_cnt[27]), .Z(n44_adj_884));
    defparam LessThan_61_i44_3_lut.INIT = "0x8e8e";
    (* lut_function="(A (B))" *) LUT4 i1944_2_lut (.A(n161_adj_965), .B(n5963), 
            .Z(grn_accum_31__N_351[9]));
    defparam i1944_2_lut.INIT = "0x8888";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_76_i40_3_lut (.A(n8554), 
            .B(ramp_count[19]), .C(ramp_max_cnt[26]), .Z(n40));
    defparam LessThan_76_i40_3_lut.INIT = "0x8e8e";
    (* lut_function="(A (B))" *) LUT4 i1943_2_lut (.A(n162_adj_964), .B(n5963), 
            .Z(grn_accum_31__N_351[8]));
    defparam i1943_2_lut.INIT = "0x8888";
    (* lut_function="(!((B)+!A))" *) LUT4 i2045_2_lut (.A(n125_adj_877), .B(n4392), 
            .Z(n4959));
    defparam i2045_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 LessThan_61_i51_rep_82_2_lut (.A(off_max_cnt[27]), 
            .B(steady_count[25]), .Z(n10392));
    defparam LessThan_61_i51_rep_82_2_lut.INIT = "0x6666";
    (* lut_function="(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))" *) LUT4 i4546_4_lut (.A(off_max_cnt[24]), 
            .B(off_max_cnt[27]), .C(steady_count[24]), .D(steady_count[23]), 
            .Z(n9237));
    defparam i4546_4_lut.INIT = "0x8421";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_76_i42_3_lut (.A(ramp_count[20]), 
            .B(ramp_count[21]), .C(ramp_max_cnt[26]), .Z(n42));
    defparam LessThan_76_i42_3_lut.INIT = "0x8e8e";
    (* lut_function="(!((B)+!A))" *) LUT4 i1861_2_lut (.A(n82), .B(n6194), 
            .Z(n102));
    defparam i1861_2_lut.INIT = "0x2222";
    (* lut_function="(A (B (C))+!A !(B+(C)))" *) LUT4 i4399_3_lut (.A(ramp_max_cnt[26]), 
            .B(ramp_count[20]), .C(ramp_count[21]), .Z(n9090));
    defparam i4399_3_lut.INIT = "0x8181";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_i8_3_lut_3_lut (.A(curr_grn[4]), 
            .B(curr_grn[8]), .C(pwm_count[8]), .Z(n8_adj_814));
    defparam pwm_count_17__I_0_i8_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(A+(B+(C+(D))))" *) LUT4 i3_4_lut_adj_5 (.A(n32_adj_863), 
            .B(ramp_count[16]), .C(ramp_count[18]), .D(ramp_count[17]), 
            .Z(n8554));
    defparam i3_4_lut_adj_5.INIT = "0xfffe";
    (* lut_function="(!((B)+!A))" *) LUT4 i1906_2_lut (.A(n124), .B(n4392), 
            .Z(n4877));
    defparam i1906_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i1942_2_lut (.A(n163_adj_963), .B(n5963), 
            .Z(grn_accum_31__N_351[7]));
    defparam i1942_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+!(B+(C+!(D)))))" *) LUT4 i4776_4_lut (.A(n27_adj_830), 
            .B(n25_adj_832), .C(n23_adj_834), .D(n9446), .Z(n9467));
    defparam i4776_4_lut.INIT = "0x5455";
    (* lut_function="(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D))))" *) LUT4 LessThan_76_i32_4_lut (.A(n28_adj_865), 
            .B(ramp_count[15]), .C(ramp_max_cnt[26]), .D(ramp_count[14]), 
            .Z(n32_adj_863));
    defparam LessThan_76_i32_4_lut.INIT = "0x8f0e";
    (* lut_function="(A (B))" *) LUT4 select_141_Select_3_i2_2_lut (.A(red_peak[30]), 
            .B(BreatheRamp_s[2]), .Z(red_intensity_step_31__N_165[3]));
    defparam select_141_Select_3_i2_2_lut.INIT = "0x8888";
    (* lut_function="(!(A))" *) LUT4 red_set_1__I_0_31_i4_1_lut (.A(RGB_color_s[1]), 
            .Z(red_peak_31__N_489));
    defparam red_set_1__I_0_31_i4_1_lut.INIT = "0x5555";
    (* lut_function="(A (B+(C+!(D)))+!A (B+!((D)+!C)))" *) LUT4 i531_4_lut (.A(n24_adj_866), 
            .B(ramp_count[13]), .C(ramp_count[12]), .D(ramp_max_cnt[26]), 
            .Z(n28_adj_865));
    defparam i531_4_lut.INIT = "0xecfe";
    (* lut_function="(A (B))" *) LUT4 select_142_Select_2_i2_2_lut (.A(grn_peak[29]), 
            .B(BreatheRamp_s[2]), .Z(grn_intensity_step_31__N_197[2]));
    defparam select_142_Select_2_i2_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i1941_2_lut (.A(n164_adj_962), .B(n5963), 
            .Z(grn_accum_31__N_351[6]));
    defparam i1941_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i1940_2_lut (.A(n165_adj_961), .B(n5963), 
            .Z(grn_accum_31__N_351[5]));
    defparam i1940_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+(B+(C+(D)))))" *) LUT4 i4755_4_lut (.A(n21_adj_836), 
            .B(n19_adj_838), .C(n17_adj_840), .D(n9433), .Z(n9446));
    defparam i4755_4_lut.INIT = "0x0001";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i42_3_lut (.A(steady_count[23]), 
            .B(steady_count[24]), .C(off_max_cnt[24]), .Z(n42_adj_885));
    defparam LessThan_61_i42_3_lut.INIT = "0x8e8e";
    (* lut_function="(!((B)+!A))" *) LUT4 i1925_2_lut (.A(n143_adj_857), .B(n4392), 
            .Z(n4915));
    defparam i1925_2_lut.INIT = "0x2222";
    (* lut_function="(!((B)+!A))" *) LUT4 i1859_2_lut (.A(n83), .B(n6194), 
            .Z(n103));
    defparam i1859_2_lut.INIT = "0x2222";
    (* lut_function="(!(A+(B+(C+(D)))))" *) LUT4 i4742_4_lut (.A(n15_adj_842), 
            .B(n13_adj_844), .C(n11_adj_846), .D(n9422), .Z(n9433));
    defparam i4742_4_lut.INIT = "0x0001";
    (* lut_function="(A (B))" *) LUT4 i1939_2_lut (.A(n166_adj_960), .B(n5963), 
            .Z(grn_accum_31__N_351[4]));
    defparam i1939_2_lut.INIT = "0x8888";
    (* lut_function="(!((B)+!A))" *) LUT4 i1913_2_lut (.A(n131), .B(n4392), 
            .Z(n4891));
    defparam i1913_2_lut.INIT = "0x2222";
    (* lut_function="(!(A+(B+!(C (D)+!C !(D)))))" *) LUT4 i4731_4_lut (.A(n9_adj_848), 
            .B(n7_adj_850), .C(pwm_count[2]), .D(curr_red[2]), .Z(n9422));
    defparam i4731_4_lut.INIT = "0x1001";
    (* lut_function="(A (B))" *) LUT4 select_143_Select_3_i2_2_lut (.A(blu_peak[30]), 
            .B(BreatheRamp_s[2]), .Z(blu_intensity_step_31__N_229[3]));
    defparam select_143_Select_3_i2_2_lut.INIT = "0x8888";
    (* lut_function="(!((B)+!A))" *) LUT4 i1916_2_lut (.A(n134), .B(n4392), 
            .Z(n4897));
    defparam i1916_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (((D)+!C)+!B)+!A (B+(C+(D)))))" *) LUT4 i4535_4_lut (.A(off_max_cnt[24]), 
            .B(steady_count[21]), .C(steady_count[22]), .D(n10463), .Z(n9226));
    defparam i4535_4_lut.INIT = "0x0081";
    (* lut_function="(A (B))" *) LUT4 i1938_2_lut (.A(n167_adj_959), .B(n5963), 
            .Z(grn_accum_31__N_351[3]));
    defparam i1938_2_lut.INIT = "0x8888";
    (* lut_function="(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B)))" *) LUT4 pwm_count_17__I_0_59_i4_4_lut (.A(curr_blu[0]), 
            .B(curr_blu[1]), .C(pwm_count[1]), .D(pwm_count[0]), .Z(n4));
    defparam pwm_count_17__I_0_59_i4_4_lut.INIT = "0x0c8e";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 pwm_count_17__I_0_59_i26_3_lut (.A(n14), 
            .B(curr_blu[15]), .C(n31), .Z(n26));
    defparam pwm_count_17__I_0_59_i26_3_lut.INIT = "0xcaca";
    (* lut_function="(!(A+!(B+(C+!(D)))))" *) LUT4 i4616_4_lut (.A(n27), .B(n25), 
            .C(n23), .D(n9286), .Z(n9307));
    defparam i4616_4_lut.INIT = "0x5455";
    (* lut_function="(!(A+(B+(C+(D)))))" *) LUT4 i4595_4_lut (.A(n21), .B(n19), 
            .C(n17), .D(n9273), .Z(n9286));
    defparam i4595_4_lut.INIT = "0x0001";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2064_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[23]), .Z(curr_blu_17__N_451[9]));
    defparam i2064_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+(C+(D)))))" *) LUT4 i4582_4_lut (.A(n15), .B(n13), 
            .C(n11), .D(n9262), .Z(n9273));
    defparam i4582_4_lut.INIT = "0x0001";
    (* lut_function="(!(A+(B+!(C (D)+!C !(D)))))" *) LUT4 i4571_4_lut (.A(n9), 
            .B(n7), .C(pwm_count[2]), .D(curr_blu[2]), .Z(n9262));
    defparam i4571_4_lut.INIT = "0x1001";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2063_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[22]), .Z(curr_blu_17__N_451[8]));
    defparam i2063_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 pwm_count_17__I_0_59_i20_3_lut (.A(n18), 
            .B(curr_blu[12]), .C(n25), .Z(n20));
    defparam pwm_count_17__I_0_59_i20_3_lut.INIT = "0xcaca";
    (* lut_function="(A (B))" *) LUT4 i1937_2_lut (.A(n168), .B(n5963), 
            .Z(grn_accum_31__N_351[2]));
    defparam i1937_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+!(B+(C+(D)))))" *) LUT4 i4621_4_lut (.A(n27), .B(n15), 
            .C(n13), .D(n11), .Z(n9312));
    defparam i4621_4_lut.INIT = "0x5554";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2082_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[25]), .Z(curr_grn_17__N_433[11]));
    defparam i2082_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i23_2_lut (.A(pwm_count[11]), 
            .B(curr_blu[11]), .Z(n23));
    defparam pwm_count_17__I_0_59_i23_2_lut.INIT = "0x6666";
    (* lut_function="(A (B))" *) LUT4 i1994_2_lut (.A(n139_adj_820), .B(n5963), 
            .Z(red_accum_31__N_319[31]));
    defparam i1994_2_lut.INIT = "0x8888";
    (* lut_function="(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B))" *) LUT4 mux_288_i31_4_lut (.A(n140_adj_819), 
            .B(red_peak[30]), .C(n5963), .D(n3039), .Z(red_accum_31__N_319[30]));
    defparam mux_288_i31_4_lut.INIT = "0xaca0";
    (* lut_function="(A (B+(C+(D)))+!A (B+!((D)+!C)))" *) LUT4 i530_4_lut (.A(n16_adj_868), 
            .B(ramp_count[11]), .C(n20_adj_867), .D(n9097), .Z(n24_adj_866));
    defparam i530_4_lut.INIT = "0xeefc";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i21_2_lut (.A(pwm_count[10]), 
            .B(curr_blu[10]), .Z(n21));
    defparam pwm_count_17__I_0_59_i21_2_lut.INIT = "0x6666";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2076_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[19]), .Z(curr_grn_17__N_433[5]));
    defparam i2076_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i29_2_lut (.A(pwm_count[14]), 
            .B(curr_blu[14]), .Z(n29));
    defparam pwm_count_17__I_0_59_i29_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 LessThan_61_i19_rep_153_2_lut (.A(off_max_cnt[27]), 
            .B(steady_count[9]), .Z(n10463));
    defparam LessThan_61_i19_rep_153_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i27_2_lut (.A(pwm_count[13]), 
            .B(curr_blu[13]), .Z(n27));
    defparam pwm_count_17__I_0_59_i27_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i15_2_lut (.A(pwm_count[7]), 
            .B(curr_blu[7]), .Z(n15));
    defparam pwm_count_17__I_0_59_i15_2_lut.INIT = "0x6666";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2057_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[16]), .Z(curr_blu_17__N_451[2]));
    defparam i2057_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i13_2_lut (.A(pwm_count[6]), 
            .B(curr_blu[6]), .Z(n13));
    defparam pwm_count_17__I_0_59_i13_2_lut.INIT = "0x6666";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2067_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[26]), .Z(curr_blu_17__N_451[12]));
    defparam i2067_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!((B)+!A))" *) LUT4 i1858_2_lut (.A(n84), .B(n6194), 
            .Z(n104));
    defparam i1858_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i11_2_lut (.A(pwm_count[5]), 
            .B(curr_blu[5]), .Z(n11));
    defparam pwm_count_17__I_0_59_i11_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i17_2_lut (.A(pwm_count[8]), 
            .B(curr_blu[8]), .Z(n17));
    defparam pwm_count_17__I_0_59_i17_2_lut.INIT = "0x6666";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_59_i14_3_lut_3_lut (.A(curr_blu[13]), 
            .B(curr_blu[14]), .C(pwm_count[14]), .Z(n14));
    defparam pwm_count_17__I_0_59_i14_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i9_2_lut (.A(pwm_count[4]), 
            .B(curr_blu[4]), .Z(n9));
    defparam pwm_count_17__I_0_59_i9_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i25_2_lut (.A(pwm_count[12]), 
            .B(curr_blu[12]), .Z(n25));
    defparam pwm_count_17__I_0_59_i25_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i7_2_lut (.A(pwm_count[3]), 
            .B(curr_blu[3]), .Z(n7));
    defparam pwm_count_17__I_0_59_i7_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i19_2_lut (.A(pwm_count[9]), 
            .B(curr_blu[9]), .Z(n19));
    defparam pwm_count_17__I_0_59_i19_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i33_2_lut (.A(pwm_count[16]), 
            .B(curr_blu[16]), .Z(n33));
    defparam pwm_count_17__I_0_59_i33_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i31_2_lut (.A(pwm_count[15]), 
            .B(curr_blu[15]), .Z(n31));
    defparam pwm_count_17__I_0_59_i31_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_59_i35_2_lut (.A(pwm_count[17]), 
            .B(curr_blu[17]), .Z(n35));
    defparam pwm_count_17__I_0_59_i35_2_lut.INIT = "0x6666";
    (* lut_function="(A (B))" *) LUT4 i1993_2_lut (.A(n141_adj_818), .B(n5963), 
            .Z(red_accum_31__N_319[29]));
    defparam i1993_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2060_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[19]), .Z(curr_blu_17__N_451[5]));
    defparam i2060_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A (B+(C))+!A !(B+(C))))" *) LUT4 i328_2_lut_3_lut (.A(grn_intensity_step[3]), 
            .B(n2617), .C(n2616), .Z(n4195));
    defparam i328_2_lut_3_lut.INIT = "0x5656";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2079_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[22]), .Z(curr_grn_17__N_433[8]));
    defparam i2079_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2085_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[28]), .Z(curr_grn_17__N_433[14]));
    defparam i2085_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B))" *) LUT4 i1992_2_lut (.A(n142), .B(n5963), 
            .Z(red_accum_31__N_319[28]));
    defparam i1992_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2077_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[20]), .Z(curr_grn_17__N_433[6]));
    defparam i2077_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B))" *) LUT4 i1991_2_lut (.A(n143), .B(n5963), 
            .Z(red_accum_31__N_319[27]));
    defparam i1991_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2056_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[15]), .Z(curr_blu_17__N_451[1]));
    defparam i2056_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2065_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[24]), .Z(curr_blu_17__N_451[10]));
    defparam i2065_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2062_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[21]), .Z(curr_blu_17__N_451[7]));
    defparam i2062_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2068_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[27]), .Z(curr_blu_17__N_451[13]));
    defparam i2068_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B))" *) LUT4 i1990_2_lut (.A(n144), .B(n5963), 
            .Z(red_accum_31__N_319[26]));
    defparam i1990_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i1989_2_lut (.A(n145), .B(n5963), 
            .Z(red_accum_31__N_319[25]));
    defparam i1989_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2059_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[18]), .Z(curr_blu_17__N_451[4]));
    defparam i2059_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2080_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[23]), .Z(curr_grn_17__N_433[9]));
    defparam i2080_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2084_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[27]), .Z(curr_grn_17__N_433[13]));
    defparam i2084_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B))" *) LUT4 i1988_2_lut (.A(n146), .B(n5963), 
            .Z(red_accum_31__N_319[24]));
    defparam i1988_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2069_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[28]), .Z(curr_blu_17__N_451[14]));
    defparam i2069_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2058_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[17]), .Z(curr_blu_17__N_451[3]));
    defparam i2058_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2081_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[24]), .Z(curr_grn_17__N_433[10]));
    defparam i2081_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2083_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[26]), .Z(curr_grn_17__N_433[12]));
    defparam i2083_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2078_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[21]), .Z(curr_grn_17__N_433[7]));
    defparam i2078_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_i14_3_lut_3_lut (.A(curr_grn[13]), 
            .B(curr_grn[14]), .C(pwm_count[14]), .Z(n14_adj_808));
    defparam pwm_count_17__I_0_i14_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2086_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[31]), .Z(curr_grn_17__N_433[17]));
    defparam i2086_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2066_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[25]), .Z(curr_blu_17__N_451[11]));
    defparam i2066_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_i36_4_lut (.A(n24_adj_798), 
            .B(n34_adj_788), .C(n35_adj_787), .D(n9402), .Z(grn_pwm_N_786));
    defparam pwm_count_17__I_0_i36_4_lut.INIT = "0xcacc";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2061_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[20]), .Z(curr_blu_17__N_451[6]));
    defparam i2061_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_i24_4_lut (.A(n16_adj_806), 
            .B(n22_adj_800), .C(n25_adj_797), .D(n9375), .Z(n24_adj_798));
    defparam pwm_count_17__I_0_i24_4_lut.INIT = "0xcacc";
    (* lut_function="(!((B)+!A))" *) LUT4 i1889_2_lut (.A(n93), .B(n6194), 
            .Z(n113));
    defparam i1889_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_i34_4_lut (.A(n28_adj_794), 
            .B(n32_adj_790), .C(n35_adj_787), .D(n9408), .Z(n34_adj_788));
    defparam pwm_count_17__I_0_i34_4_lut.INIT = "0xcacc";
    (* lut_function="(A (B))" *) LUT4 i1987_2_lut (.A(n147_2), .B(n5963), 
            .Z(red_accum_31__N_319[23]));
    defparam i1987_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+(B+(C+!(D)))))" *) LUT4 i4711_4_lut (.A(n33_adj_789), 
            .B(n31_adj_791), .C(n29_adj_793), .D(n9387), .Z(n9402));
    defparam i4711_4_lut.INIT = "0x0100";
    (* lut_function="(!((B)+!A))" *) LUT4 i1881_2_lut (.A(n85), .B(n6194), 
            .Z(n105));
    defparam i1881_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 pwm_count_17__I_0_i16_3_lut (.A(n8_adj_814), 
            .B(curr_grn[9]), .C(n19_adj_803), .Z(n16_adj_806));
    defparam pwm_count_17__I_0_i16_3_lut.INIT = "0xcaca";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2075_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[18]), .Z(curr_grn_17__N_433[4]));
    defparam i2075_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_i22_4_lut (.A(n6_adj_816), 
            .B(n20_adj_802), .C(n25_adj_797), .D(n9377), .Z(n22_adj_800));
    defparam pwm_count_17__I_0_i22_4_lut.INIT = "0xcacc";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 pwm_count_17__I_0_58_i20_3_lut (.A(n18_adj_839), 
            .B(curr_red[12]), .C(n25_adj_832), .Z(n20_adj_837));
    defparam pwm_count_17__I_0_58_i20_3_lut.INIT = "0xcaca";
    (* lut_function="(A (B))" *) LUT4 i1986_2_lut (.A(n148), .B(n5963), 
            .Z(red_accum_31__N_319[22]));
    defparam i1986_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+(B+!(C+!(D)))))" *) LUT4 i4684_4_lut (.A(n23_adj_799), 
            .B(n21_adj_801), .C(n19_adj_803), .D(n9363), .Z(n9375));
    defparam i4684_4_lut.INIT = "0x1011";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2074_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[17]), .Z(curr_grn_17__N_433[3]));
    defparam i2074_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_i28_4_lut (.A(n4_adj_817), 
            .B(n26_adj_796), .C(n31_adj_791), .D(n9399), .Z(n28_adj_794));
    defparam pwm_count_17__I_0_i28_4_lut.INIT = "0xcacc";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 pwm_count_17__I_0_i32_3_lut (.A(n30_adj_792), 
            .B(curr_grn[17]), .C(n35_adj_787), .Z(n32_adj_790));
    defparam pwm_count_17__I_0_i32_3_lut.INIT = "0xcaca";
    (* lut_function="(!(A+!(B+(C+!(D)))))" *) LUT4 i4717_4_lut (.A(n33_adj_789), 
            .B(n31_adj_791), .C(n29_adj_793), .D(n9392), .Z(n9408));
    defparam i4717_4_lut.INIT = "0x5455";
    (* lut_function="(A (B))" *) LUT4 i1985_2_lut (.A(n149), .B(n5963), 
            .Z(red_accum_31__N_319[21]));
    defparam i1985_2_lut.INIT = "0x8888";
    (* lut_function="(A (B+!(C))+!A (B ((D)+!C)+!B !(C+!(D))))" *) LUT4 LessThan_76_i16_4_lut (.A(n12_adj_869), 
            .B(ramp_count[7]), .C(ramp_max_cnt[26]), .D(ramp_count[6]), 
            .Z(n16_adj_868));
    defparam LessThan_76_i16_4_lut.INIT = "0xcf8e";
    (* lut_function="(A (B+!(C+(D)))+!A (B (C+(D))))" *) LUT4 pwm_count_17__I_0_i30_4_lut (.A(n10_adj_812), 
            .B(n12_adj_810), .C(n33_adj_789), .D(n15_adj_807), .Z(n30_adj_792));
    defparam pwm_count_17__I_0_i30_4_lut.INIT = "0xccca";
    (* lut_function="(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B)))" *) LUT4 pwm_count_17__I_0_i4_4_lut (.A(curr_grn[0]), 
            .B(curr_grn[1]), .C(pwm_count[1]), .D(pwm_count[0]), .Z(n4_adj_817));
    defparam pwm_count_17__I_0_i4_4_lut.INIT = "0x0c8e";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 pwm_count_17__I_0_i26_3_lut (.A(n14_adj_808), 
            .B(curr_grn[15]), .C(n31_adj_791), .Z(n26_adj_796));
    defparam pwm_count_17__I_0_i26_3_lut.INIT = "0xcaca";
    (* lut_function="(!((B)+!A))" *) LUT4 i1924_2_lut (.A(n142_adj_856), .B(n4392), 
            .Z(n4913));
    defparam i1924_2_lut.INIT = "0x2222";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2073_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[16]), .Z(curr_grn_17__N_433[2]));
    defparam i2073_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2055_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[14]), .Z(curr_red_17__N_415[0]));
    defparam i2055_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A+!(B+(C+!(D)))))" *) LUT4 i4696_4_lut (.A(n27_adj_795), 
            .B(n25_adj_797), .C(n23_adj_799), .D(n9366), .Z(n9387));
    defparam i4696_4_lut.INIT = "0x5455";
    (* lut_function="(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D))))" *) LUT4 LessThan_76_i20_4_lut (.A(ramp_count[8]), 
            .B(ramp_count[10]), .C(ramp_max_cnt[26]), .D(ramp_count[9]), 
            .Z(n20_adj_867));
    defparam LessThan_76_i20_4_lut.INIT = "0x8f0e";
    (* lut_function="(!((B)+!A))" *) LUT4 i1915_2_lut (.A(n133), .B(n4392), 
            .Z(n4895));
    defparam i1915_2_lut.INIT = "0x2222";
    (* lut_function="(!(A+(B+(C+(D)))))" *) LUT4 i4675_4_lut (.A(n21_adj_801), 
            .B(n19_adj_803), .C(n17_adj_805), .D(n9353), .Z(n9366));
    defparam i4675_4_lut.INIT = "0x0001";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 LessThan_61_i56_4_lut (.A(n40_adj_886), 
            .B(n54), .C(n10354), .D(n9240), .Z(n611));
    defparam LessThan_61_i56_4_lut.INIT = "0xcacc";
    (* lut_function="(!(A+(B+(C+(D)))))" *) LUT4 i4662_4_lut (.A(n15_adj_807), 
            .B(n13_adj_809), .C(n11_adj_811), .D(n9342), .Z(n9353));
    defparam i4662_4_lut.INIT = "0x0001";
    (* lut_function="(!(A+(B+!(C (D)+!C !(D)))))" *) LUT4 i4651_4_lut (.A(n9_adj_813), 
            .B(n7_adj_815), .C(pwm_count[2]), .D(curr_grn[2]), .Z(n9342));
    defparam i4651_4_lut.INIT = "0x1001";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 LessThan_61_i40_4_lut (.A(n28_adj_890), 
            .B(n38), .C(n10397), .D(n9191), .Z(n40_adj_886));
    defparam LessThan_61_i40_4_lut.INIT = "0xcacc";
    (* lut_function="(!((B)+!A))" *) LUT4 i2044_2_lut (.A(n126_adj_876), .B(n4392), 
            .Z(n4957));
    defparam i2044_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 LessThan_61_i54_4_lut (.A(n48_adj_872), 
            .B(n52_adj_870), .C(n10354), .D(n9248), .Z(n54));
    defparam LessThan_61_i54_4_lut.INIT = "0xcacc";
    (* lut_function="(A (B (C (D)))+!A !(B+(C+(D))))" *) LUT4 i4406_4_lut (.A(ramp_max_cnt[26]), 
            .B(ramp_count[9]), .C(ramp_count[10]), .D(ramp_count[8]), 
            .Z(n9097));
    defparam i4406_4_lut.INIT = "0x8001";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 pwm_count_17__I_0_i20_3_lut (.A(n18_adj_804), 
            .B(curr_grn[12]), .C(n25_adj_797), .Z(n20_adj_802));
    defparam pwm_count_17__I_0_i20_3_lut.INIT = "0xcaca";
    (* lut_function="(!(A+!(B+(C+(D)))))" *) LUT4 i4701_4_lut (.A(n27_adj_795), 
            .B(n15_adj_807), .C(n13_adj_809), .D(n11_adj_811), .Z(n9392));
    defparam i4701_4_lut.INIT = "0x5554";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i29_2_lut (.A(pwm_count[14]), 
            .B(curr_grn[14]), .Z(n29_adj_793));
    defparam pwm_count_17__I_0_i29_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i27_2_lut (.A(pwm_count[13]), 
            .B(curr_grn[13]), .Z(n27_adj_795));
    defparam pwm_count_17__I_0_i27_2_lut.INIT = "0x6666";
    (* lut_function="(A (B (C (D)))+!A !(B+(C+!(D))))" *) LUT4 i4549_4_lut (.A(off_max_cnt[27]), 
            .B(steady_count[25]), .C(steady_count[26]), .D(n9222), .Z(n9240));
    defparam i4549_4_lut.INIT = "0x8100";
    (* lut_function="(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))" *) LUT4 i4592_2_lut_4_lut (.A(pwm_count[8]), 
            .B(curr_blu[8]), .C(pwm_count[4]), .D(curr_blu[4]), .Z(n9283));
    defparam i4592_2_lut_4_lut.INIT = "0x9009";
    (* lut_function="(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D))))" *) LUT4 LessThan_76_i12_4_lut (.A(n8209), 
            .B(ramp_count[5]), .C(ramp_max_cnt[26]), .D(ramp_count[4]), 
            .Z(n12_adj_869));
    defparam LessThan_76_i12_4_lut.INIT = "0x8f0e";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i15_2_lut (.A(pwm_count[7]), 
            .B(curr_grn[7]), .Z(n15_adj_807));
    defparam pwm_count_17__I_0_i15_2_lut.INIT = "0x6666";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 LessThan_61_i28_4_lut (.A(n4_adj_901), 
            .B(n26_adj_891), .C(n10351), .D(n9161), .Z(n28_adj_890));
    defparam LessThan_61_i28_4_lut.INIT = "0xcacc";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i13_2_lut (.A(pwm_count[6]), 
            .B(curr_grn[6]), .Z(n13_adj_809));
    defparam pwm_count_17__I_0_i13_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i11_2_lut (.A(pwm_count[5]), 
            .B(curr_grn[5]), .Z(n11_adj_811));
    defparam pwm_count_17__I_0_i11_2_lut.INIT = "0x6666";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 LessThan_61_i38_4_lut (.A(n30_adj_889), 
            .B(n36), .C(n10397), .D(n9193), .Z(n38));
    defparam LessThan_61_i38_4_lut.INIT = "0xcacc";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i23_2_lut (.A(pwm_count[11]), 
            .B(curr_grn[11]), .Z(n23_adj_799));
    defparam pwm_count_17__I_0_i23_2_lut.INIT = "0x6666";
    (* lut_function="(!((B)+!A))" *) LUT4 i1905_2_lut (.A(n123), .B(n4392), 
            .Z(n4875));
    defparam i1905_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i21_2_lut (.A(pwm_count[10]), 
            .B(curr_grn[10]), .Z(n21_adj_801));
    defparam pwm_count_17__I_0_i21_2_lut.INIT = "0x6666";
    (* lut_function="((B+(C+(D)))+!A)" *) LUT4 i10_4_lut_adj_6 (.A(ramp_max_cnt[26]), 
            .B(ramp_count[2]), .C(n8251), .D(ramp_count[3]), .Z(n8209));
    defparam i10_4_lut_adj_6.INIT = "0xfffd";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i17_2_lut (.A(pwm_count[8]), 
            .B(curr_grn[8]), .Z(n17_adj_805));
    defparam pwm_count_17__I_0_i17_2_lut.INIT = "0x6666";
    (* lut_function="(!((B)+!A))" *) LUT4 i1904_2_lut (.A(n122), .B(n4392), 
            .Z(n4873));
    defparam i1904_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i9_2_lut (.A(pwm_count[4]), 
            .B(curr_grn[4]), .Z(n9_adj_813));
    defparam pwm_count_17__I_0_i9_2_lut.INIT = "0x6666";
    (* lut_function="(A (B (C (D)))+!A !(B+(C+!(D))))" *) LUT4 i4500_4_lut (.A(off_max_cnt[24]), 
            .B(steady_count[18]), .C(steady_count[19]), .D(n9175), .Z(n9191));
    defparam i4500_4_lut.INIT = "0x8100";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i7_2_lut (.A(pwm_count[3]), 
            .B(curr_grn[3]), .Z(n7_adj_815));
    defparam pwm_count_17__I_0_i7_2_lut.INIT = "0x6666";
    (* lut_function="(!(A+!(B+(C+(D)))))" *) LUT4 i4781_4_lut (.A(n27_adj_830), 
            .B(n15_adj_842), .C(n13_adj_844), .D(n11_adj_846), .Z(n9472));
    defparam i4781_4_lut.INIT = "0x5554";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i25_2_lut (.A(pwm_count[12]), 
            .B(curr_grn[12]), .Z(n25_adj_797));
    defparam pwm_count_17__I_0_i25_2_lut.INIT = "0x6666";
    (* lut_function="(A (B+!(C))+!A !(B (C (D))+!B (C+(D))))" *) LUT4 LessThan_61_i4_4_lut (.A(steady_count[0]), 
            .B(steady_count[1]), .C(off_max_cnt[27]), .D(off_max_cnt[24]), 
            .Z(n4_adj_901));
    defparam LessThan_61_i4_4_lut.INIT = "0x8ecf";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i19_2_lut (.A(pwm_count[9]), 
            .B(curr_grn[9]), .Z(n19_adj_803));
    defparam pwm_count_17__I_0_i19_2_lut.INIT = "0x6666";
    (* lut_function="(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D))))" *) LUT4 LessThan_61_i26_4_lut (.A(steady_count[13]), 
            .B(steady_count[15]), .C(off_max_cnt[27]), .D(steady_count[14]), 
            .Z(n26_adj_891));
    defparam LessThan_61_i26_4_lut.INIT = "0x8f0e";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2091_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[19]), .Z(curr_red_17__N_415[5]));
    defparam i2091_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B))" *) LUT4 i3818_2_lut (.A(ramp_count[1]), .B(ramp_count[0]), 
            .Z(n8251));
    defparam i3818_2_lut.INIT = "0x8888";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i33_2_lut (.A(pwm_count[16]), 
            .B(curr_grn[16]), .Z(n33_adj_789));
    defparam pwm_count_17__I_0_i33_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i31_2_lut (.A(pwm_count[15]), 
            .B(curr_grn[15]), .Z(n31_adj_791));
    defparam pwm_count_17__I_0_i31_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i35_2_lut (.A(pwm_count[17]), 
            .B(curr_red[17]), .Z(n35_adj_821));
    defparam pwm_count_17__I_0_58_i35_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_i35_2_lut (.A(pwm_count[17]), 
            .B(curr_grn[17]), .Z(n35_adj_787));
    defparam pwm_count_17__I_0_i35_2_lut.INIT = "0x6666";
    (* lut_function="(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))" *) LUT4 mux_186_i17_4_lut (.A(grn_accum[30]), 
            .B(grn_peak[30]), .C(n2617), .D(n2619), .Z(curr_grn_17__N_433[16]));
    defparam mux_186_i17_4_lut.INIT = "0xc0ca";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i29_2_lut (.A(pwm_count[14]), 
            .B(curr_red[14]), .Z(n29_adj_828));
    defparam pwm_count_17__I_0_58_i29_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 LessThan_61_i31_rep_41_2_lut (.A(off_max_cnt[27]), 
            .B(steady_count[15]), .Z(n10351));
    defparam LessThan_61_i31_rep_41_2_lut.INIT = "0x6666";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_59_i8_3_lut_3_lut (.A(curr_blu[4]), 
            .B(curr_blu[8]), .C(pwm_count[8]), .Z(n8));
    defparam pwm_count_17__I_0_59_i8_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2054_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[14]), .Z(curr_grn_17__N_433[0]));
    defparam i2054_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))" *) LUT4 i4470_4_lut (.A(off_max_cnt[27]), 
            .B(off_max_cnt[24]), .C(steady_count[14]), .D(steady_count[13]), 
            .Z(n9161));
    defparam i4470_4_lut.INIT = "0x8421";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_58_i14_3_lut_3_lut (.A(curr_red[13]), 
            .B(curr_red[14]), .C(pwm_count[14]), .Z(n14_adj_843));
    defparam pwm_count_17__I_0_58_i14_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 LessThan_61_i48_4_lut (.A(n24_adj_892), 
            .B(n46), .C(n10392), .D(n9235), .Z(n48_adj_872));
    defparam LessThan_61_i48_4_lut.INIT = "0xcacc";
    (* lut_function="(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))" *) LUT4 i4752_2_lut_4_lut (.A(pwm_count[8]), 
            .B(curr_red[8]), .C(pwm_count[4]), .D(curr_red[4]), .Z(n9443));
    defparam i4752_2_lut_4_lut.INIT = "0x9009";
    (* lut_function="(!(A))" *) LUT4 i4_1_lut (.A(rst_c), .Z(n2));
    defparam i4_1_lut.INIT = "0x5555";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i52_3_lut (.A(n50_adj_871), 
            .B(steady_count[27]), .C(off_max_cnt[27]), .Z(n52_adj_870));
    defparam LessThan_61_i52_3_lut.INIT = "0x8e8e";
    (* lut_function="(!((B)+!A))" *) LUT4 i1907_2_lut (.A(n125), .B(n4392), 
            .Z(n4879));
    defparam i1907_2_lut.INIT = "0x2222";
    (* lut_function="((B (C (D))+!B (C+!(D)))+!A)" *) LUT4 i5156_4_lut (.A(BlinkRate_s[2]), 
            .B(n4631), .C(n803), .D(n2617), .Z(n4388));
    defparam i5156_4_lut.INIT = "0xf577";
    (* lut_function="(!((B)+!A))" *) LUT4 i1903_2_lut (.A(n121), .B(n4392), 
            .Z(n4871));
    defparam i1903_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 LessThan_61_i55_rep_44_2_lut (.A(off_max_cnt[27]), 
            .B(steady_count[27]), .Z(n10354));
    defparam LessThan_61_i55_rep_44_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B ((D)+!C)+!B !(C))+!A (B (C)+!B (C+(D)))))" *) LUT4 i4557_4_lut (.A(off_max_cnt[27]), 
            .B(steady_count[25]), .C(steady_count[26]), .D(n9233), .Z(n9248));
    defparam i4557_4_lut.INIT = "0x24a5";
    (* lut_function="(A ((C+!(D))+!B)+!A ((C (D))+!B))" *) LUT4 i410_4_lut (.A(n3447), 
            .B(BlinkRate_s[2]), .C(n803), .D(n2617), .Z(n4392));
    defparam i410_4_lut.INIT = "0xf3bb";
    (* lut_function="(!((B)+!A))" *) LUT4 i1902_2_lut (.A(n120), .B(n4392), 
            .Z(n4869));
    defparam i1902_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 i402_3_lut (.A(n899), 
            .B(n611), .C(n2619), .Z(n3447));
    defparam i402_3_lut.INIT = "0xcaca";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_58_i18_3_lut_3_lut (.A(curr_red[10]), 
            .B(curr_red[11]), .C(pwm_count[11]), .Z(n18_adj_839));
    defparam pwm_count_17__I_0_58_i18_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(A (B+!(C+(D)))+!A (B (C+(D))))" *) LUT4 LessThan_61_i50_4_lut (.A(n20_adj_895), 
            .B(n22_adj_894), .C(n10383), .D(n9146), .Z(n50_adj_871));
    defparam LessThan_61_i50_4_lut.INIT = "0xccca";
    (* lut_function="(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))" *) LUT4 i4766_2_lut_4_lut (.A(pwm_count[11]), 
            .B(curr_red[11]), .C(pwm_count[10]), .D(curr_red[10]), .Z(n9457));
    defparam i4766_2_lut_4_lut.INIT = "0x9009";
    (* lut_function="(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C+!(D))))" *) LUT4 LessThan_61_i24_4_lut (.A(steady_count[9]), 
            .B(steady_count[22]), .C(off_max_cnt[24]), .D(steady_count[21]), 
            .Z(n24_adj_892));
    defparam LessThan_61_i24_4_lut.INIT = "0x8f0e";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 LessThan_61_i46_4_lut (.A(n8_adj_899), 
            .B(n44_adj_884), .C(n10392), .D(n9237), .Z(n46));
    defparam LessThan_61_i46_4_lut.INIT = "0xcacc";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_58_i6_3_lut_3_lut (.A(curr_red[2]), 
            .B(curr_red[3]), .C(pwm_count[3]), .Z(n6_adj_851));
    defparam pwm_count_17__I_0_58_i6_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_58_i12_3_lut_3_lut (.A(curr_red[7]), 
            .B(curr_red[16]), .C(pwm_count[16]), .Z(n12_adj_845));
    defparam pwm_count_17__I_0_58_i12_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(!(A (B+((D)+!C))+!A (B+(C+(D)))))" *) LUT4 i4544_4_lut (.A(off_max_cnt[24]), 
            .B(n10471), .C(steady_count[24]), .D(n9226), .Z(n9235));
    defparam i4544_4_lut.INIT = "0x0021";
    (* lut_function="(!((B)+!A))" *) LUT4 i1912_2_lut (.A(n130), .B(n4392), 
            .Z(n4889));
    defparam i1912_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i20_3_lut (.A(n18_adj_896), 
            .B(steady_count[12]), .C(off_max_cnt[24]), .Z(n20_adj_895));
    defparam LessThan_61_i20_3_lut.INIT = "0x8e8e";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i27_2_lut (.A(pwm_count[13]), 
            .B(curr_red[13]), .Z(n27_adj_830));
    defparam pwm_count_17__I_0_58_i27_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i15_2_lut (.A(pwm_count[7]), 
            .B(curr_red[7]), .Z(n15_adj_842));
    defparam pwm_count_17__I_0_58_i15_2_lut.INIT = "0x6666";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i22_3_lut (.A(n6_adj_900), 
            .B(steady_count[26]), .C(off_max_cnt[27]), .Z(n22_adj_894));
    defparam LessThan_61_i22_3_lut.INIT = "0x8e8e";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_58_i10_3_lut_3_lut (.A(curr_red[5]), 
            .B(curr_red[6]), .C(pwm_count[6]), .Z(n10_adj_847));
    defparam pwm_count_17__I_0_58_i10_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i13_2_lut (.A(pwm_count[6]), 
            .B(curr_red[6]), .Z(n13_adj_844));
    defparam pwm_count_17__I_0_58_i13_2_lut.INIT = "0x6666";
    (* lut_function="(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))" *) LUT4 mux_186_i16_4_lut (.A(grn_accum[29]), 
            .B(grn_peak[29]), .C(n2617), .D(n2619), .Z(curr_grn_17__N_433[15]));
    defparam mux_186_i16_4_lut.INIT = "0xc0ca";
    (* lut_function="(!((B)+!A))" *) LUT4 i1901_2_lut (.A(n119), .B(n4392), 
            .Z(n4867));
    defparam i1901_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i11_2_lut (.A(pwm_count[5]), 
            .B(curr_red[5]), .Z(n11_adj_846));
    defparam pwm_count_17__I_0_58_i11_2_lut.INIT = "0x6666";
    (* lut_function="(!((B)+!A))" *) LUT4 i1898_2_lut (.A(n145_adj_859), .B(n4392), 
            .Z(n4865));
    defparam i1898_2_lut.INIT = "0x2222";
    (* lut_function="(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))" *) LUT4 i4788_2_lut_4_lut (.A(pwm_count[14]), 
            .B(curr_red[14]), .C(pwm_count[13]), .D(curr_red[13]), .Z(n9479));
    defparam i4788_2_lut_4_lut.INIT = "0x9009";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_58_i8_3_lut_3_lut (.A(curr_red[4]), 
            .B(curr_red[8]), .C(pwm_count[8]), .Z(n8_adj_849));
    defparam pwm_count_17__I_0_58_i8_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i17_2_lut (.A(pwm_count[8]), 
            .B(curr_red[8]), .Z(n17_adj_840));
    defparam pwm_count_17__I_0_58_i17_2_lut.INIT = "0x6666";
    (* lut_function="(!((B)+!A))" *) LUT4 i1883_2_lut (.A(n146_adj_934), .B(n4392), 
            .Z(n4863));
    defparam i1883_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i9_2_lut (.A(pwm_count[4]), 
            .B(curr_red[4]), .Z(n9_adj_848));
    defparam pwm_count_17__I_0_58_i9_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 LessThan_61_i53_rep_73_2_lut (.A(off_max_cnt[27]), 
            .B(steady_count[26]), .Z(n10383));
    defparam LessThan_61_i53_rep_73_2_lut.INIT = "0x6666";
    (* lut_function="(!((B)+!A))" *) LUT4 i1869_2_lut (.A(n146_adj_860), .B(n4392), 
            .Z(n4861));
    defparam i1869_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (B+(C))+!A !(B+(C))))" *) LUT4 i394_2_lut_3_lut (.A(red_intensity_step[3]), 
            .B(n2617), .C(n2616), .Z(n4325));
    defparam i394_2_lut_3_lut.INIT = "0x5656";
    (* lut_function="(!((B)+!A))" *) LUT4 i1914_2_lut (.A(n132), .B(n4392), 
            .Z(n4893));
    defparam i1914_2_lut.INIT = "0x2222";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2072_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(grn_accum[15]), .Z(curr_grn_17__N_433[1]));
    defparam i2072_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i23_2_lut (.A(pwm_count[11]), 
            .B(curr_red[11]), .Z(n23_adj_834));
    defparam pwm_count_17__I_0_58_i23_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i21_2_lut (.A(pwm_count[10]), 
            .B(curr_red[10]), .Z(n21_adj_836));
    defparam pwm_count_17__I_0_58_i21_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B+(C))+!A !(B+(C))))" *) LUT4 i361_2_lut_3_lut (.A(blu_intensity_step[3]), 
            .B(n2617), .C(n2616), .Z(n4260));
    defparam i361_2_lut_3_lut.INIT = "0x5656";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_59_i18_3_lut_3_lut (.A(curr_blu[10]), 
            .B(curr_blu[11]), .C(pwm_count[11]), .Z(n18));
    defparam pwm_count_17__I_0_59_i18_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i25_2_lut (.A(pwm_count[12]), 
            .B(curr_red[12]), .Z(n25_adj_832));
    defparam pwm_count_17__I_0_58_i25_2_lut.INIT = "0x6666";
    (* lut_function="(!((B)+!A))" *) LUT4 i1911_2_lut (.A(n129), .B(n4392), 
            .Z(n4887));
    defparam i1911_2_lut.INIT = "0x2222";
    (* lut_function="(!((B)+!A))" *) LUT4 i2028_2_lut (.A(n142_adj_941), .B(n4392), 
            .Z(n4925));
    defparam i2028_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i7_2_lut (.A(pwm_count[3]), 
            .B(curr_red[3]), .Z(n7_adj_850));
    defparam pwm_count_17__I_0_58_i7_2_lut.INIT = "0x6666";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2102_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[31]), .Z(curr_red_17__N_415[17]));
    defparam i2102_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A (B+!(C (D)))+!A (B+(C+(D)))))" *) LUT4 i4455_4_lut (.A(off_max_cnt[24]), 
            .B(n23_adj_893), .C(steady_count[12]), .D(steady_count[10]), 
            .Z(n9146));
    defparam i4455_4_lut.INIT = "0x2001";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i18_3_lut (.A(steady_count[10]), 
            .B(steady_count[11]), .C(off_max_cnt[27]), .Z(n18_adj_896));
    defparam LessThan_61_i18_3_lut.INIT = "0x8e8e";
    (* lut_function="(A (B (C+!(D)))+!A (B (C)))" *) LUT4 i1930_4_lut (.A(n2616), 
            .B(BlinkRate_s[2]), .C(n2640), .D(n899), .Z(n2626));
    defparam i1930_4_lut.INIT = "0xc0c8";
    (* lut_function="(A (B))" *) LUT4 i171_2_lut (.A(n803), .B(n2617), .Z(n2640));
    defparam i171_2_lut.INIT = "0x8888";
    (* lut_function="(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))" *) LUT4 i4606_2_lut_4_lut (.A(pwm_count[11]), 
            .B(curr_blu[11]), .C(pwm_count[10]), .D(curr_blu[10]), .Z(n9297));
    defparam i4606_2_lut_4_lut.INIT = "0x9009";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2053_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(blu_accum[14]), .Z(curr_blu_17__N_451[0]));
    defparam i2053_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i19_2_lut (.A(pwm_count[9]), 
            .B(curr_red[9]), .Z(n19_adj_838));
    defparam pwm_count_17__I_0_58_i19_2_lut.INIT = "0x6666";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 LessThan_61_i6_3_lut (.A(steady_count[2]), 
            .B(steady_count[3]), .C(off_max_cnt[24]), .Z(n6_adj_900));
    defparam LessThan_61_i6_3_lut.INIT = "0x8e8e";
    (* lut_function="(!((B)+!A))" *) LUT4 i2027_2_lut (.A(n143_adj_937), .B(n4392), 
            .Z(n4923));
    defparam i2027_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (B+!(C (D)))+!A (B+(C+!(D)))))" *) LUT4 i4531_4_lut (.A(off_max_cnt[24]), 
            .B(n10471), .C(steady_count[24]), .D(n9210), .Z(n9222));
    defparam i4531_4_lut.INIT = "0x2100";
    (* lut_function="(!(A (B+(C))+!A !(B+(C))))" *) LUT4 i329_2_lut_3_lut (.A(grn_intensity_step[2]), 
            .B(n2617), .C(n2616), .Z(n4196));
    defparam i329_2_lut_3_lut.INIT = "0x5656";
    (* lut_function="(A (B))" *) LUT4 i2025_2_lut (.A(n139), .B(n5963), 
            .Z(blu_accum_31__N_383[31]));
    defparam i2025_2_lut.INIT = "0x8888";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i33_2_lut (.A(pwm_count[16]), 
            .B(curr_red[16]), .Z(n33_adj_824));
    defparam pwm_count_17__I_0_58_i33_2_lut.INIT = "0x6666";
    (* lut_function="(!((B)+!A))" *) LUT4 i2026_2_lut (.A(n144_adj_936), .B(n4392), 
            .Z(n4921));
    defparam i2026_2_lut.INIT = "0x2222";
    (* lut_function="(!(A (((D)+!C)+!B)+!A (B+(C+(D)))))" *) LUT4 i4519_4_lut (.A(off_max_cnt[24]), 
            .B(steady_count[21]), .C(steady_count[22]), .D(n9198), .Z(n9210));
    defparam i4519_4_lut.INIT = "0x0081";
    (* lut_function="(A+!((C)+!B))" *) LUT4 i1876_3_lut (.A(n2616), .B(n2618), 
            .C(n2617), .Z(n5963));
    defparam i1876_3_lut.INIT = "0xaeae";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 pwm_count_17__I_0_58_i31_2_lut (.A(pwm_count[15]), 
            .B(curr_red[15]), .Z(n31_adj_826));
    defparam pwm_count_17__I_0_58_i31_2_lut.INIT = "0x6666";
    (* lut_function="(!(A (B+!(C (D)))+!A (B+(C+!(D)))))" *) LUT4 i4507_4_lut (.A(off_max_cnt[27]), 
            .B(n10400), .C(steady_count[20]), .D(n9180), .Z(n9198));
    defparam i4507_4_lut.INIT = "0x2100";
    (* lut_function="(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B))" *) LUT4 mux_292_i31_4_lut (.A(n140), 
            .B(blu_peak[30]), .C(n5963), .D(n3039), .Z(blu_accum_31__N_383[30]));
    defparam mux_292_i31_4_lut.INIT = "0xaca0";
    (* lut_function="(A+(B))" *) LUT4 i200_2_lut (.A(n2617), .B(n2616), 
            .Z(n3039));
    defparam i200_2_lut.INIT = "0xeeee";
    (* lut_function="(!(A (B)+!A !(B)))" *) LUT4 LessThan_61_i39_rep_90_2_lut (.A(off_max_cnt[24]), 
            .B(steady_count[19]), .Z(n10400));
    defparam LessThan_61_i39_rep_90_2_lut.INIT = "0x6666";
    (* lut_function="(!((B)+!A))" *) LUT4 i1908_2_lut (.A(n126), .B(n4392), 
            .Z(n4881));
    defparam i1908_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i2024_2_lut (.A(n141), .B(n5963), 
            .Z(blu_accum_31__N_383[29]));
    defparam i2024_2_lut.INIT = "0x8888";
    (* lut_function="(!((B)+!A))" *) LUT4 i1927_2_lut (.A(n145_adj_935), .B(n4392), 
            .Z(n4919));
    defparam i1927_2_lut.INIT = "0x2222";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_59_i36_4_lut (.A(n24), 
            .B(n34), .C(n35), .D(n9322), .Z(blu_pwm_N_785));
    defparam pwm_count_17__I_0_59_i36_4_lut.INIT = "0xcacc";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2101_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[29]), .Z(curr_red_17__N_415[15]));
    defparam i2101_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_59_i6_3_lut_3_lut (.A(curr_blu[2]), 
            .B(curr_blu[3]), .C(pwm_count[3]), .Z(n6));
    defparam pwm_count_17__I_0_59_i6_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_59_i24_4_lut (.A(n16), 
            .B(n22), .C(n25), .D(n9295), .Z(n24));
    defparam pwm_count_17__I_0_59_i24_4_lut.INIT = "0xcacc";
    (* lut_function="(!((B)+!A))" *) LUT4 i1918_2_lut (.A(n136), .B(n4392), 
            .Z(n4901));
    defparam i1918_2_lut.INIT = "0x2222";
    (* lut_function="(A (B (C (D)))+!A !(B+(C+!(D))))" *) LUT4 i4489_4_lut (.A(off_max_cnt[24]), 
            .B(steady_count[17]), .C(steady_count[18]), .D(n9164), .Z(n9180));
    defparam i4489_4_lut.INIT = "0x8100";
    (* lut_function="(A (B))" *) LUT4 i2023_2_lut (.A(n142_adj_861), .B(n5963), 
            .Z(blu_accum_31__N_383[28]));
    defparam i2023_2_lut.INIT = "0x8888";
    (* lut_function="(A (B (C (D)))+!A !(B+(C+!(D))))" *) LUT4 i4473_4_lut (.A(off_max_cnt[27]), 
            .B(steady_count[15]), .C(steady_count[16]), .D(n9152), .Z(n9164));
    defparam i4473_4_lut.INIT = "0x8100";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_59_i34_4_lut (.A(n28), 
            .B(n32), .C(n35), .D(n9328), .Z(n34));
    defparam pwm_count_17__I_0_59_i34_4_lut.INIT = "0xcacc";
    (* lut_function="(A (B))" *) LUT4 i2022_2_lut (.A(n143_adj_822), .B(n5963), 
            .Z(blu_accum_31__N_383[27]));
    defparam i2022_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i2021_2_lut (.A(n144_adj_925), .B(n5963), 
            .Z(blu_accum_31__N_383[26]));
    defparam i2021_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i2020_2_lut (.A(n145_adj_924), .B(n5963), 
            .Z(blu_accum_31__N_383[25]));
    defparam i2020_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2100_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[28]), .Z(curr_red_17__N_415[14]));
    defparam i2100_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!((B)+!A))" *) LUT4 i1926_2_lut (.A(n144_adj_858), .B(n4392), 
            .Z(n4917));
    defparam i1926_2_lut.INIT = "0x2222";
    (* lut_function="(A (B (C))+!A !((C)+!B))" *) LUT4 i4461_3_lut (.A(off_max_cnt[27]), 
            .B(n9149), .C(steady_count[14]), .Z(n9152));
    defparam i4461_3_lut.INIT = "0x8484";
    (* lut_function="(!(A+(B+(C+!(D)))))" *) LUT4 i4631_4_lut (.A(n33), .B(n31), 
            .C(n29), .D(n9307), .Z(n9322));
    defparam i4631_4_lut.INIT = "0x0100";
    (* lut_function="(A (B))" *) LUT4 i2019_2_lut (.A(n146_adj_923), .B(n5963), 
            .Z(blu_accum_31__N_383[24]));
    defparam i2019_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2090_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[18]), .Z(curr_red_17__N_415[4]));
    defparam i2090_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B))" *) LUT4 i2018_2_lut (.A(n147_adj_922), .B(n5963), 
            .Z(blu_accum_31__N_383[23]));
    defparam i2018_2_lut.INIT = "0x8888";
    (* lut_function="(A (B))" *) LUT4 i2017_2_lut (.A(n148_adj_921), .B(n5963), 
            .Z(blu_accum_31__N_383[22]));
    defparam i2017_2_lut.INIT = "0x8888";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2099_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[27]), .Z(curr_red_17__N_415[13]));
    defparam i2099_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(!(A (B ((D)+!C)+!B !(C))+!A (B (C)+!B (C+(D)))))" *) LUT4 i4458_4_lut (.A(off_max_cnt[24]), 
            .B(steady_count[12]), .C(steady_count[13]), .D(n9135), .Z(n9149));
    defparam i4458_4_lut.INIT = "0x24a5";
    (* lut_function="(A (B))" *) LUT4 i2016_2_lut (.A(n149_adj_920), .B(n5963), 
            .Z(blu_accum_31__N_383[21]));
    defparam i2016_2_lut.INIT = "0x8888";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 pwm_count_17__I_0_59_i16_3_lut (.A(n8), 
            .B(curr_blu[9]), .C(n19), .Z(n16));
    defparam pwm_count_17__I_0_59_i16_3_lut.INIT = "0xcaca";
    (* lut_function="(!(A+!(B (C (D))+!B !((D)+!C))))" *) LUT4 i4444_4_lut (.A(n23_adj_893), 
            .B(off_max_cnt[24]), .C(n9123), .D(steady_count[10]), .Z(n9135));
    defparam i4444_4_lut.INIT = "0x4010";
    (* lut_function="(!((B)+!A))" *) LUT4 i2043_2_lut (.A(n127_adj_875), .B(n4392), 
            .Z(n4955));
    defparam i2043_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i2015_2_lut (.A(n150_adj_919), .B(n5963), 
            .Z(blu_accum_31__N_383[20]));
    defparam i2015_2_lut.INIT = "0x8888";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_59_i22_4_lut (.A(n6), 
            .B(n20), .C(n25), .D(n9297), .Z(n22));
    defparam pwm_count_17__I_0_59_i22_4_lut.INIT = "0xcacc";
    (* lut_function="(A (B (C))+!A !((C)+!B))" *) LUT4 i4432_3_lut (.A(off_max_cnt[27]), 
            .B(n9120), .C(steady_count[9]), .Z(n9123));
    defparam i4432_3_lut.INIT = "0x8484";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_59_i12_3_lut_3_lut (.A(curr_blu[7]), 
            .B(curr_blu[16]), .C(pwm_count[16]), .Z(n12));
    defparam pwm_count_17__I_0_59_i12_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(!((B)+!A))" *) LUT4 i1917_2_lut (.A(n135), .B(n4392), 
            .Z(n4899));
    defparam i1917_2_lut.INIT = "0x2222";
    (* lut_function="(!(A+(B+!(C+!(D)))))" *) LUT4 i4604_4_lut (.A(n23), .B(n21), 
            .C(n19), .D(n9283), .Z(n9295));
    defparam i4604_4_lut.INIT = "0x1011";
    (* lut_function="(A (B+!(C))+!A !((C)+!B))" *) LUT4 pwm_count_17__I_0_59_i10_3_lut_3_lut (.A(curr_blu[5]), 
            .B(curr_blu[6]), .C(pwm_count[6]), .Z(n10));
    defparam pwm_count_17__I_0_59_i10_3_lut_3_lut.INIT = "0x8e8e";
    (* lut_function="(A (B+!(C+!(D)))+!A (B (C+!(D))))" *) LUT4 pwm_count_17__I_0_59_i28_4_lut (.A(n4), 
            .B(n26), .C(n31), .D(n9319), .Z(n28));
    defparam pwm_count_17__I_0_59_i28_4_lut.INIT = "0xcacc";
    (* lut_function="(A (B+!(C))+!A (B (C)))" *) LUT4 pwm_count_17__I_0_59_i32_3_lut (.A(n30), 
            .B(curr_blu[17]), .C(n35), .Z(n32));
    defparam pwm_count_17__I_0_59_i32_3_lut.INIT = "0xcaca";
    (* lut_function="(!((B)+!A))" *) LUT4 i2033_2_lut (.A(n137_adj_947), .B(n4392), 
            .Z(n4935));
    defparam i2033_2_lut.INIT = "0x2222";
    (* lut_function="(!(A+!(B+(C+!(D)))))" *) LUT4 i4637_4_lut (.A(n33), .B(n31), 
            .C(n29), .D(n9312), .Z(n9328));
    defparam i4637_4_lut.INIT = "0x5455";
    (* lut_function="(!((B)+!A))" *) LUT4 i2032_2_lut (.A(n138_adj_946), .B(n4392), 
            .Z(n4933));
    defparam i2032_2_lut.INIT = "0x2222";
    (* lut_function="(A (B))" *) LUT4 i2014_2_lut (.A(n151_adj_918), .B(n5963), 
            .Z(blu_accum_31__N_383[19]));
    defparam i2014_2_lut.INIT = "0x8888";
    (* lut_function="(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))" *) LUT4 i4628_2_lut_4_lut (.A(pwm_count[14]), 
            .B(curr_blu[14]), .C(pwm_count[13]), .D(curr_blu[13]), .Z(n9319));
    defparam i4628_2_lut_4_lut.INIT = "0x9009";
    (* lut_function="(A (B+!(C+(D)))+!A (B (C+(D))))" *) LUT4 pwm_count_17__I_0_59_i30_4_lut (.A(n10), 
            .B(n12), .C(n33), .D(n15), .Z(n30));
    defparam pwm_count_17__I_0_59_i30_4_lut.INIT = "0xccca";
    (* lut_function="(!(A+(B+!(C))))" *) LUT4 i2098_2_lut_3_lut (.A(n2619), 
            .B(n2617), .C(red_accum[26]), .Z(curr_red_17__N_415[12]));
    defparam i2098_2_lut_3_lut.INIT = "0x1010";
    (* lut_function="(A (B))" *) LUT4 i2013_2_lut (.A(n152_adj_917), .B(n5963), 
            .Z(blu_accum_31__N_383[18]));
    defparam i2013_2_lut.INIT = "0x8888";
    
endmodule

//
// Verilog Description of module pll_24M
//

module pll_24M (input GND_net, input clk12M_c, input n2, output clk24M);
    
    (* is_clock=1 *) wire clk12M_c;
    (* is_clock=1 *) wire clk24M;
    
    \pll_24M_ipgen_lscc_pll(DIVR="0",DIVF="63",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="12.000000")  lscc_pll_inst (.GND_net(GND_net), 
            .clk12M_c(clk12M_c), .n2(n2), .clk24M(clk24M));
    
endmodule

//
// Verilog Description of module \pll_24M_ipgen_lscc_pll(DIVR="0",DIVF="63",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="12.000000") 
//

module \pll_24M_ipgen_lscc_pll(DIVR="0",DIVF="63",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="12.000000")  (input GND_net, 
            input clk12M_c, input n2, output clk24M);
    
    (* is_clock=1 *) wire clk12M_c;
    (* is_clock=1 *) wire clk24M;
    
    wire feedback_w;
    
    (* syn_instantiated=1, LSE_LINE_FILE_ID=26, LSE_LCOL=41, LSE_RCOL=316, LSE_LLINE=17, LSE_RLINE=17 *) PLL_B u_PLL_B (.REFERENCECLK(clk12M_c), 
            .FEEDBACK(feedback_w), .DYNAMICDELAY7(GND_net), .DYNAMICDELAY6(GND_net), 
            .DYNAMICDELAY5(GND_net), .DYNAMICDELAY4(GND_net), .DYNAMICDELAY3(GND_net), 
            .DYNAMICDELAY2(GND_net), .DYNAMICDELAY1(GND_net), .DYNAMICDELAY0(GND_net), 
            .BYPASS(GND_net), .RESET_N(n2), .SCLK(GND_net), .SDI(GND_net), 
            .LATCH(GND_net), .INTFBOUT(feedback_w), .OUTGLOBAL(clk24M));
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
