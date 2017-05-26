`timescale 1 ns/100 ps
// Version: v11.5 11.5.0.26
// File used only for Simulation


module PLLBA(
       CLKA,
       EXTFB,
       POWERDOWN,
       GLA,
       LOCK,
       GLB,
       YB,
       GLC,
       YC,
       OADIV0,
       OADIV1,
       OADIV2,
       OADIV3,
       OADIV4,
       OAMUX0,
       OAMUX1,
       OAMUX2,
       DLYGLA0,
       DLYGLA1,
       DLYGLA2,
       DLYGLA3,
       DLYGLA4,
       OBDIV0,
       OBDIV1,
       OBDIV2,
       OBDIV3,
       OBDIV4,
       OBMUX0,
       OBMUX1,
       OBMUX2,
       DLYYB0,
       DLYYB1,
       DLYYB2,
       DLYYB3,
       DLYYB4,
       DLYGLB0,
       DLYGLB1,
       DLYGLB2,
       DLYGLB3,
       DLYGLB4,
       OCDIV0,
       OCDIV1,
       OCDIV2,
       OCDIV3,
       OCDIV4,
       OCMUX0,
       OCMUX1,
       OCMUX2,
       DLYYC0,
       DLYYC1,
       DLYYC2,
       DLYYC3,
       DLYYC4,
       DLYGLC0,
       DLYGLC1,
       DLYGLC2,
       DLYGLC3,
       DLYGLC4,
       FINDIV0,
       FINDIV1,
       FINDIV2,
       FINDIV3,
       FINDIV4,
       FINDIV5,
       FINDIV6,
       FBDIV0,
       FBDIV1,
       FBDIV2,
       FBDIV3,
       FBDIV4,
       FBDIV5,
       FBDIV6,
       FBDLY0,
       FBDLY1,
       FBDLY2,
       FBDLY3,
       FBDLY4,
       FBSEL0,
       FBSEL1,
       XDLYSEL,
       VCOSEL0,
       VCOSEL1,
       VCOSEL2
    );
input  CLKA;
input  EXTFB;
input  POWERDOWN;
output GLA;
output LOCK;
output GLB;
output YB;
output GLC;
output YC;
input  OADIV0;
input  OADIV1;
input  OADIV2;
input  OADIV3;
input  OADIV4;
input  OAMUX0;
input  OAMUX1;
input  OAMUX2;
input  DLYGLA0;
input  DLYGLA1;
input  DLYGLA2;
input  DLYGLA3;
input  DLYGLA4;
input  OBDIV0;
input  OBDIV1;
input  OBDIV2;
input  OBDIV3;
input  OBDIV4;
input  OBMUX0;
input  OBMUX1;
input  OBMUX2;
input  DLYYB0;
input  DLYYB1;
input  DLYYB2;
input  DLYYB3;
input  DLYYB4;
input  DLYGLB0;
input  DLYGLB1;
input  DLYGLB2;
input  DLYGLB3;
input  DLYGLB4;
input  OCDIV0;
input  OCDIV1;
input  OCDIV2;
input  OCDIV3;
input  OCDIV4;
input  OCMUX0;
input  OCMUX1;
input  OCMUX2;
input  DLYYC0;
input  DLYYC1;
input  DLYYC2;
input  DLYYC3;
input  DLYYC4;
input  DLYGLC0;
input  DLYGLC1;
input  DLYGLC2;
input  DLYGLC3;
input  DLYGLC4;
input  FINDIV0;
input  FINDIV1;
input  FINDIV2;
input  FINDIV3;
input  FINDIV4;
input  FINDIV5;
input  FINDIV6;
input  FBDIV0;
input  FBDIV1;
input  FBDIV2;
input  FBDIV3;
input  FBDIV4;
input  FBDIV5;
input  FBDIV6;
input  FBDLY0;
input  FBDLY1;
input  FBDLY2;
input  FBDLY3;
input  FBDLY4;
input  FBSEL0;
input  FBSEL1;
input  XDLYSEL;
input  VCOSEL0;
input  VCOSEL1;
input  VCOSEL2;

    wire GND, SDOUT, FB, EXTFBDLY, GLADLY, LOCKDLY, GLBDLY, YBDLY, 
        GLCDLY, YCDLY, VCODLY;
    wire GND_power_net1;
    assign GND = GND_power_net1;
    
    PLL_SDF #( .VCOFREQUENCY(100.000000) )  pll_sdf_0 (.CLKA(CLKA), 
        .EXTFB(EXTFBDLY), .POWERDOWN(POWERDOWN), .GLAOUT(GLADLY), 
        .LOCKOUT(LOCKDLY), .GLBOUT(GLBDLY), .YBOUT(YBDLY), .GLCOUT(
        GLCDLY), .YCOUT(YCDLY), .OADIV0(OADIV0), .OADIV1(OADIV1), 
        .OADIV2(OADIV2), .OADIV3(OADIV3), .OADIV4(OADIV4), .OAMUX0(
        OAMUX0), .OAMUX1(OAMUX1), .OAMUX2(OAMUX2), .DLYGLA0(DLYGLA0), 
        .DLYGLA1(DLYGLA1), .DLYGLA2(DLYGLA2), .DLYGLA3(DLYGLA3), 
        .DLYGLA4(DLYGLA4), .OBDIV0(OBDIV0), .OBDIV1(OBDIV1), .OBDIV2(
        OBDIV2), .OBDIV3(OBDIV3), .OBDIV4(OBDIV4), .OBMUX0(OBMUX0), 
        .OBMUX1(OBMUX1), .OBMUX2(OBMUX2), .DLYYB0(DLYYB0), .DLYYB1(
        DLYYB1), .DLYYB2(DLYYB2), .DLYYB3(DLYYB3), .DLYYB4(DLYYB4), 
        .DLYGLB0(DLYGLB0), .DLYGLB1(DLYGLB1), .DLYGLB2(DLYGLB2), 
        .DLYGLB3(DLYGLB3), .DLYGLB4(DLYGLB4), .OCDIV0(OCDIV0), .OCDIV1(
        OCDIV1), .OCDIV2(OCDIV2), .OCDIV3(OCDIV3), .OCDIV4(OCDIV4), 
        .OCMUX0(OCMUX0), .OCMUX1(OCMUX1), .OCMUX2(OCMUX2), .DLYYC0(
        DLYYC0), .DLYYC1(DLYYC1), .DLYYC2(DLYYC2), .DLYYC3(DLYYC3), 
        .DLYYC4(DLYYC4), .DLYGLC0(DLYGLC0), .DLYGLC1(DLYGLC1), 
        .DLYGLC2(DLYGLC2), .DLYGLC3(DLYGLC3), .DLYGLC4(DLYGLC4), 
        .FINDIV0(FINDIV0), .FINDIV1(FINDIV1), .FINDIV2(FINDIV2), 
        .FINDIV3(FINDIV3), .FINDIV4(FINDIV4), .FINDIV5(FINDIV5), 
        .FINDIV6(FINDIV6), .FBDIV0(FBDIV0), .FBDIV1(FBDIV1), .FBDIV2(
        FBDIV2), .FBDIV3(FBDIV3), .FBDIV4(FBDIV4), .FBDIV5(FBDIV5), 
        .FBDIV6(FBDIV6), .FBDLY0(FBDLY0), .FBDLY1(FBDLY1), .FBDLY2(
        FBDLY2), .FBDLY3(FBDLY3), .FBDLY4(FBDLY4), .FBSEL0(FBSEL0), 
        .FBSEL1(FBSEL1), .XDLYSEL(XDLYSEL), .VCOSEL0(VCOSEL0), 
        .VCOSEL1(VCOSEL1), .VCOSEL2(VCOSEL2), .INTFB(FB), .VCOOUT(
        VCODLY));
    PLL_DLY_SDF #( .VCOFREQUENCY(100.000000) )  pll_dly_sdf_0 (.GLA(
        GLA), .LOCK(LOCK), .GLB(GLB), .YB(YB), .GLC(GLC), .YC(YC), 
        .GLAIN(GLADLY), .LOCKIN(LOCKDLY), .GLBIN(GLBDLY), .YBIN(YBDLY), 
        .GLCIN(GLCDLY), .YCIN(YCDLY), .EXTFBOUT(EXTFBDLY), .EXTFBIN(
        EXTFB), .VCOIN(VCODLY), .PLLOUT(FB));
    GND GND_power_inst1 (.Y(GND_power_net1));
    
endmodule


module top(
       clock,
       mac_control_signal,
       reset,
       trigger_signal,
       output_signal,
       signal_into_switch
    );
input  clock;
input  mac_control_signal;
input  reset;
input  trigger_signal;
output [19:0] output_signal;
output signal_into_switch;

    wire AND2_0_Y, main_clock_0_clock_out, 
        \data_source_0_output_data_0[0] , 
        \data_source_0_output_data_0[1] , 
        \data_source_0_output_data_0[2] , 
        \data_source_0_output_data_0[3] , 
        \data_source_0_output_data_0[4] , 
        \data_source_0_output_data_0[5] , 
        \data_source_0_output_data_0[6] , 
        \data_source_0_output_data_0[7] , 
        \baseband_signal_0_tag_data_output[0] , 
        \baseband_signal_0_tag_data_output[1] , 
        \baseband_signal_0_tag_data_output[2] , 
        \baseband_signal_0_tag_data_output[3] , 
        \baseband_signal_0_tag_data_output[4] , 
        \baseband_signal_0_tag_data_output[5] , 
        \baseband_signal_0_tag_data_output[6] , 
        \baseband_signal_0_tag_data_output[7] , 
        modulator_0_output_signal, \data_source_0_tag_control_sig[0] , 
        \data_source_0_tag_control_sig[1] , 
        \data_source_0_tag_control_sig[2] , 
        \data_source_0_tag_control_sig[3] , 
        \data_source_0_tag_control_sig[4] , 
        \data_source_0_tag_control_sig[5] , 
        \data_source_0_tag_control_sig[6] , 
        \data_source_0_tag_control_sig[7] , GLA, clock_c, 
        mac_control_signal_c, reset_c, trigger_signal_c, 
        \output_signal_c[0] , \output_signal_c[1] , 
        \output_signal_c[2] , \output_signal_c[3] , 
        \output_signal_c[4] , \output_signal_c[5] , 
        \output_signal_c[6] , \output_signal_c[7] , 
        \modulator_0/output_signal_i , 
        \modulator_0/clock_counter[14]_net_1 , 
        \modulator_0/output_signal_1_sqmuxa_0 , 
        \modulator_0/un5lto15_5 , \modulator_0/un5lto15_6 , 
        \modulator_0/un6lto15_1 , 
        \modulator_0/clock_counter[13]_net_1 , 
        \modulator_0/clock_counter[15]_net_1 , 
        \modulator_0/un5lto15_2 , \modulator_0/un5lto15_1 , 
        \modulator_0/un5lto15_3 , \modulator_0/un5lto5 , 
        \modulator_0/un5lto6 , \modulator_0/un6lto8 , 
        \modulator_0/un6lto10 , \modulator_0/un6lto9 , 
        \modulator_0/un6lto12 , \modulator_0/un6lto11 , 
        \modulator_0/un6lto6_0 , \modulator_0/clock_counter[5]_net_1 , 
        \modulator_0/counter23_2_0 , \modulator_0/counter23_2 , 
        \modulator_0/counter[4]_net_1 , \modulator_0/counter[5]_net_1 , 
        \modulator_0/counter23_1 , \modulator_0/counter[0]_net_1 , 
        \modulator_0/counter[1]_net_1 , \modulator_0/counter19_1 , 
        \modulator_0/counter19_0 , \modulator_0/un6lt4_2 , 
        \modulator_0/clock_counter[0]_net_1 , 
        \modulator_0/clock_counter[1]_net_1 , 
        \modulator_0/clock_counter[4]_net_1 , \modulator_0/un6lto4 , 
        \modulator_0/clock_counter[3]_net_1 , 
        \modulator_0/clock_counter[2]_net_1 , 
        \modulator_0/output_signal_1_sqmuxa_0_0 , 
        \modulator_0/un6lt15 , \modulator_0/N_89 , 
        \modulator_0/clock_counter_c13 , \modulator_0/counter19 , 
        \modulator_0/clock_counter_n11 , 
        \modulator_0/clock_counter_c10 , 
        \modulator_0/clock_counter_n9 , \modulator_0/clock_counter_c8 , 
        \modulator_0/clock_counter_n7 , \modulator_0/clock_counter_c6 , 
        \modulator_0/clock_counter[7]_net_1 , 
        \modulator_0/clock_counter_n4 , \modulator_0/clock_counter_c3 , 
        \modulator_0/clock_counter_n3 , \modulator_0/clock_counter_c2 , 
        \modulator_0/clock_counter_n2 , \modulator_0/clock_counter_c1 , 
        \modulator_0/clock_counter_n5 , \modulator_0/clock_counter_c4 , 
        \modulator_0/clock_counter_n6 , \modulator_0/clock_counter_c5 , 
        \modulator_0/clock_counter_n8 , \modulator_0/clock_counter_c7 , 
        \modulator_0/clock_counter[8]_net_1 , 
        \modulator_0/clock_counter_n10 , 
        \modulator_0/clock_counter_c9 , 
        \modulator_0/clock_counter_n12 , 
        \modulator_0/clock_counter_c11 , 
        \modulator_0/clock_counter_n13 , 
        \modulator_0/clock_counter_c12 , 
        \modulator_0/clock_counter_n14 , \modulator_0/counter_n2 , 
        \modulator_0/counter_0_sqmuxa , \modulator_0/counter_n2_tz , 
        \modulator_0/counter[2]_net_1 , \modulator_0/counter_n3 , 
        \modulator_0/counter_c2 , \modulator_0/counter[3]_net_1 , 
        \modulator_0/counter_n4 , \modulator_0/counter_n4_tz , 
        \modulator_0/counter_n5 , \modulator_0/counter_45_0 , 
        \modulator_0/clock_counter_n1 , \modulator_0/N_121 , 
        \modulator_0/un6lt9 , \modulator_0/clock_countere , 
        \modulator_0/un6lt11 , \modulator_0/clock_counter_n15 , 
        \modulator_0/counter_n0 , \modulator_0/counter_n1 , 
        \data_source_0/data_index_0[2]_net_1 , 
        \data_source_0/data_index_4[2] , 
        \data_source_0/data_index_0[3]_net_1 , 
        \data_source_0/data_index_4[3] , 
        \data_source_0/data_index_1[5]_net_1 , 
        \data_source_0/data_index_4[5] , 
        \data_source_0/data_index_0[5]_net_1 , 
        \data_source_0/data_index_0[6]_net_1 , 
        \data_source_0/data_index_4[6] , 
        \data_source_0/data_index_0[7]_net_1 , 
        \data_source_0/data_index_4[7] , 
        \data_source_0/data_index[1]_net_1 , 
        \data_source_0/data_index_0[1] , \data_source_0/N_29 , 
        \data_source_0/counter_RNIK0AI3[1]_net_1 , 
        \data_source_0/DWACT_ADD_CI_0_g_array_11[0] , 
        \data_source_0/DWACT_ADD_CI_0_g_array_2[0] , 
        \data_source_0/DWACT_ADD_CI_0_g_array_1[0] , 
        \data_source_0/DWACT_ADD_CI_0_TMP[0] , 
        \data_source_0/data_index[4]_net_1 , 
        \data_source_0/data_index[6]_net_1 , 
        \data_source_0/data_index[2]_net_1 , 
        \data_source_0/trigger_counter[1]_net_1 , 
        \data_source_0/trigger_counter[0]_net_1 , 
        \data_source_0/trigger_counter[3]_net_1 , 
        \data_source_0/DWACT_FINC_E[0] , 
        \data_source_0/counter_n9_i_0 , 
        \data_source_0/counter[9]_net_1 , \data_source_0/N_38 , 
        \data_source_0/N_68 , \data_source_0/counter_n8_i_0 , 
        \data_source_0/N_34 , \data_source_0/counter_n8_i_a3_0_0 , 
        \data_source_0/N_69 , \data_source_0/N_87 , 
        \data_source_0/output_data_1_sqmuxa_i_a3_4 , 
        \data_source_0/output_data_1_sqmuxa_i_a3_1 , 
        \data_source_0/N_90 , 
        \data_source_0/output_data_1_sqmuxa_i_a3_2 , 
        \data_source_0/counter_i_0[3] , \data_source_0/counter_i_0[4] , 
        \data_source_0/counter[8]_net_1 , 
        \data_source_0/counter_i_0[2] , 
        \data_source_0/trigger_counter13_5 , 
        \data_source_0/trigger_counter13_3 , 
        \data_source_0/trigger_counter[4]_net_1 , 
        \data_source_0/trigger_counter13_4 , 
        \data_source_0/trigger_counter13_1 , 
        \data_source_0/trigger_counter[6]_net_1 , 
        \data_source_0/trigger_counter[7]_net_1 , 
        \data_source_0/trigger_counter[5]_net_1 , 
        \data_source_0/trigger_counter[2]_net_1 , 
        \data_source_0/counter_n9_i_a2_6 , 
        \data_source_0/counter_n9_i_a2_4 , 
        \data_source_0/counter[12]_net_1 , 
        \data_source_0/counter[10]_net_1 , 
        \data_source_0/counter_n9_i_a2_5 , 
        \data_source_0/counter_n9_i_a2_2 , 
        \data_source_0/counter[15]_net_1 , 
        \data_source_0/counter[5]_net_1 , 
        \data_source_0/counter_i_0[6] , \data_source_0/counter_i_0[7] , 
        \data_source_0/counter[11]_net_1 , 
        \data_source_0/counter[13]_net_1 , 
        \data_source_0/counter[14]_net_1 , \data_source_0/N_26 , 
        \data_source_0/counter_i_0[0] , \data_source_0/counter_i_0[1] , 
        \data_source_0/N_24 , \data_source_0/N_31 , 
        \data_source_0/N_22 , \data_source_0/N_32 , 
        \data_source_0/N_20 , \data_source_0/N_74 , 
        \data_source_0/N_16 , \data_source_0/N_35 , 
        \data_source_0/N_14 , \data_source_0/N_36 , 
        \data_source_0/N_73 , 
        \data_source_0/data_index_RNIR9AP[4]_net_1 , 
        \data_source_0/N_237 , \data_source_0/N_18 , 
        \data_source_0/N_53_i , \data_source_0/N_12 , 
        \data_source_0/N_10 , \data_source_0/N_39 , 
        \data_source_0/un25lto0 , \data_source_0/N_235_mux , 
        \data_source_0/N_195 , \data_source_0/N_230_mux , 
        \data_source_0/N_8_0 , \data_source_0/trigger_counter13 , 
        \data_source_0/counter_n15 , \data_source_0/N_44 , 
        \data_source_0/counter_n14 , \data_source_0/N_43 , 
        \data_source_0/counter_n13 , \data_source_0/N_42 , 
        \data_source_0/counter_n12 , \data_source_0/N_41 , 
        \data_source_0/counter_n11 , \data_source_0/N_40 , 
        \data_source_0/counter_n10 , \data_source_0/N_238_mux , 
        \data_source_0/N_25 , \data_source_0/N_220 , 
        \data_source_0/counter_n0 , 
        \data_source_0/tag_data_buf_7_4[0] , 
        \data_source_0/tag_data_buf_7[7]_net_1 , 
        \data_source_0/output_data_23[6] , 
        \data_source_0/tag_data_buf_5_4[0] , 
        \data_source_0/tag_data_buf_5[7]_net_1 , 
        \data_source_0/output_data_23[4] , 
        \data_source_0/tag_data_buf_3_4[0] , 
        \data_source_0/tag_data_buf_3[7]_net_1 , 
        \data_source_0/output_data_23[2] , 
        \data_source_0/tag_data_buf_1_4[0] , 
        \data_source_0/tag_data_buf_1[7]_net_1 , 
        \data_source_0/output_data_23[0] , \data_source_0/N_234_mux , 
        \data_source_0/N_229 , \data_source_0/N_233_mux , 
        \data_source_0/N_6_0 , \data_source_0/N_232_mux , 
        \data_source_0/data_index[3]_net_1 , \data_source_0/N_231_mux , 
        \data_source_0/N_229_mux , \data_source_0/N_228_mux , 
        \data_source_0/data_index[7]_net_1 , \data_source_0/i4_mux , 
        \data_source_0/i5_mux , \data_source_0/N_1163 , 
        \data_source_0/data_index_0_sqmuxa , \data_source_0/N_3_0 , 
        \data_source_0/N_219 , \data_source_0/N_208 , 
        \data_source_0/N_218 , \data_source_0/N_213 , 
        \data_source_0/N_217 , \data_source_0/N_216 , 
        \data_source_0/N_1123 , \data_source_0/N_215 , 
        \data_source_0/N_214 , \data_source_0/N_210 , 
        \data_source_0/N_212 , \data_source_0/N_211 , 
        \data_source_0/N_13_0 , \data_source_0/N_1143 , 
        \data_source_0/N_15 , \data_source_0/N_209 , 
        \data_source_0/N_204 , \data_source_0/N_1126 , 
        \data_source_0/N_1148 , \data_source_0/N_199 , 
        \data_source_0/N_207 , \data_source_0/N_203 , 
        \data_source_0/N_206 , \data_source_0/N_205 , 
        \data_source_0/N_1127 , \data_source_0/data_index[5]_net_1 , 
        \data_source_0/N_202 , \data_source_0/N_19 , 
        \data_source_0/N_200 , \data_source_0/N_201 , 
        \data_source_0/N_198 , \data_source_0/N_170 , 
        \data_source_0/N_47 , \data_source_0/tag_control_sig_2[6] , 
        \data_source_0/N_185 , \data_source_0/N_193 , 
        \data_source_0/N_189 , \data_source_0/N_192 , 
        \data_source_0/N_191 , \data_source_0/N_190 , 
        \data_source_0/N_186 , \data_source_0/N_188 , 
        \data_source_0/N_187 , \data_source_0/N_98 , 
        \data_source_0/N_179 , \data_source_0/N_184 , 
        \data_source_0/N_180 , \data_source_0/N_183 , 
        \data_source_0/N_110 , \data_source_0/N_130 , 
        \data_source_0/N_176 , \data_source_0/N_178 , 
        \data_source_0/N_162 , \data_source_0/N_177 , 
        \data_source_0/N_49 , \data_source_0/tag_control_sig_2[5] , 
        \data_source_0/N_165 , \data_source_0/N_174 , 
        \data_source_0/N_169 , \data_source_0/N_173 , 
        \data_source_0/N_171 , \data_source_0/N_172 , 
        \data_source_0/N_1155 , \data_source_0/N_114 , 
        \data_source_0/N_1150 , \data_source_0/N_167 , 
        \data_source_0/N_168 , \data_source_0/N_149 , 
        \data_source_0/N_1138 , \data_source_0/N_166 , 
        \data_source_0/N_138 , \data_source_0/N_160 , 
        \data_source_0/N_164 , \data_source_0/N_161 , 
        \data_source_0/N_163 , \data_source_0/N_21 , 
        \data_source_0/N_136 , \data_source_0/N_1129 , 
        \data_source_0/N_158 , \data_source_0/N_159 , 
        \data_source_0/N_1159 , \data_source_0/N_157 , 
        \data_source_0/N_1166 , \data_source_0/N_156 , 
        \data_source_0/tag_control_sig_2[4] , \data_source_0/N_142 , 
        \data_source_0/N_154 , \data_source_0/N_148 , 
        \data_source_0/N_153 , \data_source_0/N_1125 , 
        \data_source_0/N_152 , \data_source_0/N_151 , 
        \data_source_0/N_150 , \data_source_0/N_147 , 
        \data_source_0/N_145 , \data_source_0/N_146 , 
        \data_source_0/N_143 , \data_source_0/N_144 , 
        \data_source_0/N_11_0 , \data_source_0/N_135 , 
        \data_source_0/N_141 , \data_source_0/N_137 , 
        \data_source_0/N_140 , \data_source_0/N_1141 , 
        \data_source_0/N_139 , \data_source_0/N_7_0 , 
        \data_source_0/N_131 , \data_source_0/N_134 , 
        \data_source_0/N_129 , \data_source_0/N_12_0 , 
        \data_source_0/N_1137 , \data_source_0/tag_control_sig_2[3] , 
        \data_source_0/N_117 , \data_source_0/N_127 , 
        \data_source_0/N_120 , \data_source_0/N_126 , 
        \data_source_0/N_122 , \data_source_0/N_125 , 
        \data_source_0/N_123 , \data_source_0/N_124 , 
        \data_source_0/N_121 , \data_source_0/N_1144 , 
        \data_source_0/N_118 , \data_source_0/N_119 , 
        \data_source_0/N_91 , \data_source_0/N_1164 , 
        \data_source_0/N_109 , \data_source_0/N_116 , 
        \data_source_0/N_111 , \data_source_0/N_115 , 
        \data_source_0/N_106 , \data_source_0/N_108 , 
        \data_source_0/N_1156 , \data_source_0/N_107 , 
        \data_source_0/N_105 , \data_source_0/N_104 , 
        \data_source_0/tag_control_sig_2[2] , \data_source_0/N_1168 , 
        \data_source_0/N_102 , \data_source_0/N_97 , 
        \data_source_0/N_101 , \data_source_0/N_99 , 
        \data_source_0/N_100 , \data_source_0/N_50 , 
        \data_source_0/N_93 , \data_source_0/N_96 , 
        \data_source_0/N_94 , \data_source_0/N_95 , 
        \data_source_0/N_92 , \data_source_0/N_89 , 
        \data_source_0/N_1165 , \data_source_0/N_88 , 
        \data_source_0/N_1167 , \data_source_0/N_1132 , 
        \data_source_0/tag_control_sig_2[1] , \data_source_0/N_1147 , 
        \data_source_0/N_1162 , \data_source_0/N_1154 , 
        \data_source_0/N_1161 , \data_source_0/N_1157 , 
        \data_source_0/N_1160 , \data_source_0/N_1158 , 
        \data_source_0/N_1152 , \data_source_0/N_1153 , 
        \data_source_0/N_1149 , \data_source_0/N_1151 , 
        \data_source_0/N_52 , \data_source_0/N_1146 , 
        \data_source_0/N_1142 , \data_source_0/N_1145 , 
        \data_source_0/N_48 , \data_source_0/N_51 , 
        \data_source_0/N_46 , \data_source_0/N_30 , 
        \data_source_0/N_45 , \data_source_0/N_1131 , 
        \data_source_0/N_1140 , \data_source_0/N_1133 , 
        \data_source_0/N_1139 , \data_source_0/N_1136 , 
        \data_source_0/N_1135 , \data_source_0/N_1130 , 
        \data_source_0/N_1124 , \data_source_0/N_1128 , 
        \data_source_0/N_28 , \data_source_0/N_23 , 
        \data_source_0/N_27 , \data_source_0/N_10_0 , 
        \data_source_0/N_17 , \data_source_0/N_9_0 , 
        \data_source_0/tag_data_buf_8_4[3] , 
        \data_source_0/tag_data_buf_8[2]_net_1 , 
        \data_source_0/tag_data_buf_6_4[2] , 
        \data_source_0/tag_data_buf_6[1]_net_1 , 
        \data_source_0/tag_data_buf_6_4[1] , 
        \data_source_0/tag_data_buf_6[0]_net_1 , 
        \data_source_0/tag_data_buf_4_4[2] , 
        \data_source_0/tag_data_buf_4[1]_net_1 , 
        \data_source_0/tag_data_buf_2_4[1] , 
        \data_source_0/tag_data_buf_2[0]_net_1 , 
        \data_source_0/tag_data_buf_7_4[2] , 
        \data_source_0/tag_data_buf_7[1]_net_1 , 
        \data_source_0/tag_data_buf_7_4[1] , 
        \data_source_0/tag_data_buf_7[0]_net_1 , 
        \data_source_0/tag_data_buf_5_4[2] , 
        \data_source_0/tag_data_buf_5[1]_net_1 , 
        \data_source_0/tag_data_buf_3_4[1] , 
        \data_source_0/tag_data_buf_3[0]_net_1 , 
        \data_source_0/tag_data_buf_8_4[7] , 
        \data_source_0/tag_data_buf_8[6]_net_1 , 
        \data_source_0/tag_data_buf_8_4[6] , 
        \data_source_0/tag_data_buf_8[5]_net_1 , 
        \data_source_0/tag_data_buf_8_4[5] , 
        \data_source_0/tag_data_buf_8[4]_net_1 , 
        \data_source_0/tag_data_buf_8_4[4] , 
        \data_source_0/tag_data_buf_8[3]_net_1 , 
        \data_source_0/tag_data_buf_8_4[2] , 
        \data_source_0/tag_data_buf_8[1]_net_1 , 
        \data_source_0/tag_data_buf_8_4[1] , 
        \data_source_0/tag_data_buf_8[0]_net_1 , 
        \data_source_0/tag_data_buf_6_4[7] , 
        \data_source_0/tag_data_buf_6[6]_net_1 , 
        \data_source_0/tag_data_buf_6_4[6] , 
        \data_source_0/tag_data_buf_6[5]_net_1 , 
        \data_source_0/tag_data_buf_6_4[5] , 
        \data_source_0/tag_data_buf_6[4]_net_1 , 
        \data_source_0/tag_data_buf_6_4[4] , 
        \data_source_0/tag_data_buf_6[3]_net_1 , 
        \data_source_0/tag_data_buf_6_4[3] , 
        \data_source_0/tag_data_buf_6[2]_net_1 , 
        \data_source_0/tag_data_buf_4_4[7] , 
        \data_source_0/tag_data_buf_4[6]_net_1 , 
        \data_source_0/tag_data_buf_4_4[6] , 
        \data_source_0/tag_data_buf_4[5]_net_1 , 
        \data_source_0/tag_data_buf_4_4[5] , 
        \data_source_0/tag_data_buf_4[4]_net_1 , 
        \data_source_0/tag_data_buf_4_4[4] , 
        \data_source_0/tag_data_buf_4[3]_net_1 , 
        \data_source_0/tag_data_buf_4_4[3] , 
        \data_source_0/tag_data_buf_4[2]_net_1 , 
        \data_source_0/tag_data_buf_4_4[1] , 
        \data_source_0/tag_data_buf_4[0]_net_1 , 
        \data_source_0/tag_data_buf_2_4[7] , 
        \data_source_0/tag_data_buf_2[6]_net_1 , 
        \data_source_0/tag_data_buf_2_4[6] , 
        \data_source_0/tag_data_buf_2[5]_net_1 , 
        \data_source_0/tag_data_buf_2_4[5] , 
        \data_source_0/tag_data_buf_2[4]_net_1 , 
        \data_source_0/tag_data_buf_2_4[4] , 
        \data_source_0/tag_data_buf_2[3]_net_1 , 
        \data_source_0/tag_data_buf_2_4[3] , 
        \data_source_0/tag_data_buf_2[2]_net_1 , 
        \data_source_0/tag_data_buf_2_4[2] , 
        \data_source_0/tag_data_buf_2[1]_net_1 , 
        \data_source_0/tag_data_buf_7_4[7] , 
        \data_source_0/tag_data_buf_7[6]_net_1 , 
        \data_source_0/tag_data_buf_7_4[6] , 
        \data_source_0/tag_data_buf_7[5]_net_1 , 
        \data_source_0/tag_data_buf_7_4[5] , 
        \data_source_0/tag_data_buf_7[4]_net_1 , 
        \data_source_0/tag_data_buf_7_4[4] , 
        \data_source_0/tag_data_buf_7[3]_net_1 , 
        \data_source_0/tag_data_buf_7_4[3] , 
        \data_source_0/tag_data_buf_7[2]_net_1 , 
        \data_source_0/tag_data_buf_5_4[7] , 
        \data_source_0/tag_data_buf_5[6]_net_1 , 
        \data_source_0/tag_data_buf_5_4[6] , 
        \data_source_0/tag_data_buf_5[5]_net_1 , 
        \data_source_0/tag_data_buf_5_4[5] , 
        \data_source_0/tag_data_buf_5[4]_net_1 , 
        \data_source_0/tag_data_buf_5_4[4] , 
        \data_source_0/tag_data_buf_5[3]_net_1 , 
        \data_source_0/tag_data_buf_5_4[3] , 
        \data_source_0/tag_data_buf_5[2]_net_1 , 
        \data_source_0/tag_data_buf_5_4[1] , 
        \data_source_0/tag_data_buf_5[0]_net_1 , 
        \data_source_0/tag_data_buf_3_4[7] , 
        \data_source_0/tag_data_buf_3[6]_net_1 , 
        \data_source_0/tag_data_buf_3_4[6] , 
        \data_source_0/tag_data_buf_3[5]_net_1 , 
        \data_source_0/tag_data_buf_3_4[5] , 
        \data_source_0/tag_data_buf_3[4]_net_1 , 
        \data_source_0/tag_data_buf_3_4[4] , 
        \data_source_0/tag_data_buf_3[3]_net_1 , 
        \data_source_0/tag_data_buf_3_4[3] , 
        \data_source_0/tag_data_buf_3[2]_net_1 , 
        \data_source_0/tag_data_buf_3_4[2] , 
        \data_source_0/tag_data_buf_3[1]_net_1 , 
        \data_source_0/tag_data_buf_1_4[7] , 
        \data_source_0/tag_data_buf_1[6]_net_1 , 
        \data_source_0/tag_data_buf_1_4[6] , 
        \data_source_0/tag_data_buf_1[5]_net_1 , 
        \data_source_0/tag_data_buf_1_4[5] , 
        \data_source_0/tag_data_buf_1[4]_net_1 , 
        \data_source_0/tag_data_buf_1_4[4] , 
        \data_source_0/tag_data_buf_1[3]_net_1 , 
        \data_source_0/tag_data_buf_1_4[3] , 
        \data_source_0/tag_data_buf_1[2]_net_1 , 
        \data_source_0/tag_data_buf_1_4[2] , 
        \data_source_0/tag_data_buf_1[1]_net_1 , 
        \data_source_0/tag_data_buf_1_4[1] , 
        \data_source_0/tag_data_buf_1[0]_net_1 , \data_source_0/I_34 , 
        \data_source_0/I_31 , \data_source_0/I_28 , 
        \data_source_0/data_index_4[4] , \data_source_0/I_33 , 
        \data_source_0/I_27 , \data_source_0/I_29 , 
        \data_source_0/data_index_4[1] , \data_source_0/I_30 , 
        \data_source_0/data_index_4[0] , 
        \data_source_0/DWACT_ADD_CI_0_partial_sum[0] , 
        \data_source_0/output_data_23[7] , 
        \data_source_0/tag_data_buf_8[7]_net_1 , 
        \data_source_0/output_data_23[5] , 
        \data_source_0/tag_data_buf_6[7]_net_1 , 
        \data_source_0/output_data_23[3] , 
        \data_source_0/tag_data_buf_4[7]_net_1 , 
        \data_source_0/output_data_23[1] , 
        \data_source_0/tag_data_buf_2[7]_net_1 , 
        \data_source_0/trigger_counter_3[3] , 
        \data_source_0/trigger_counter_3[1] , 
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 , 
        \data_source_0/I_4 , \data_source_0/I_7 , \data_source_0/I_12 , 
        \data_source_0/I_14 , \data_source_0/I_17 , 
        \data_source_0/I_20 , \data_source_0/N_2 , 
        \data_source_0/DWACT_FINC_E[2] , \data_source_0/N_3 , 
        \data_source_0/DWACT_FINC_E[1] , \data_source_0/N_4 , 
        \data_source_0/N_6 , 
        \switching_circuit_0/un23_out_signal_switch_0_net_1 , 
        \switching_circuit_0/un4_out_signal_switch_0_net_1 , 
        \switching_circuit_0/un13_out_signal_switch_0_net_1 , 
        \switching_circuit_0/un63_out_signal_switch_0_net_1 , 
        \switching_circuit_0/un73_out_signal_switch_0_net_1 , 
        \switching_circuit_0/un33_out_signal_switch_0_net_1 , 
        \switching_circuit_0/un43_out_signal_switch_0_net_1 , 
        \switching_circuit_0/un53_out_signal_switch_0_net_1 , 
        \switching_circuit_0/un70_out_signal_switch_net_1 , 
        \switching_circuit_0/un60_out_signal_switch_net_1 , 
        \switching_circuit_0/un50_out_signal_switch_net_1 , 
        \switching_circuit_0/un40_out_signal_switch_net_1 , 
        \switching_circuit_0/un30_out_signal_switch_net_1 , 
        \switching_circuit_0/un20_out_signal_switch_net_1 , 
        \switching_circuit_0/un10_out_signal_switch_net_1 , 
        \switching_circuit_0/un1_out_signal_switch_net_1 , GND, VCC, 
        \main_clock_0/clock_out_i , \main_clock_0/counter[1]_net_1 , 
        \main_clock_0/counter[0]_net_1 , 
        \main_clock_0/counter[3]_net_1 , 
        \main_clock_0/DWACT_FINC_E[0] , \main_clock_0/counter14_4 , 
        \main_clock_0/counter14_2 , \main_clock_0/counter[2]_net_1 , 
        \main_clock_0/counter[5]_net_1 , \main_clock_0/counter14_3 , 
        \main_clock_0/counter[6]_net_1 , 
        \main_clock_0/counter[7]_net_1 , 
        \main_clock_0/counter[4]_net_1 , 
        \main_clock_0/clock_out_RNO_net_1 , 
        \main_clock_0/counter_3[0] , \main_clock_0/I_5_0 , 
        \main_clock_0/I_7_0 , \main_clock_0/I_9_0 , 
        \main_clock_0/I_12_0 , \main_clock_0/I_14_0 , 
        \main_clock_0/I_17_0 , \main_clock_0/I_20_0 , 
        \main_clock_0/N_2 , \main_clock_0/DWACT_FINC_E[2] , 
        \main_clock_0/N_3 , \main_clock_0/DWACT_FINC_E[1] , 
        \main_clock_0/N_4 , \main_clock_0/N_6 , 
        \output_signal_pad[1]/U0/NET1 , \output_signal_pad[1]/U0/NET2 , 
        \output_signal_pad[8]/U0/NET1 , \output_signal_pad[8]/U0/NET2 , 
        \output_signal_pad[13]/U0/NET1 , 
        \output_signal_pad[13]/U0/NET2 , 
        \output_signal_pad[3]/U0/NET1 , \output_signal_pad[3]/U0/NET2 , 
        \output_signal_pad[17]/U0/NET1 , 
        \output_signal_pad[17]/U0/NET2 , 
        \output_signal_pad[4]/U0/NET1 , \output_signal_pad[4]/U0/NET2 , 
        \output_signal_pad[12]/U0/NET1 , 
        \output_signal_pad[12]/U0/NET2 , 
        \output_signal_pad[19]/U0/NET1 , 
        \output_signal_pad[19]/U0/NET2 , 
        \mac_control_signal_pad/U0/NET1 , 
        \output_signal_pad[18]/U0/NET1 , 
        \output_signal_pad[18]/U0/NET2 , 
        \output_signal_pad[5]/U0/NET1 , \output_signal_pad[5]/U0/NET2 , 
        \output_signal_pad[6]/U0/NET1 , \output_signal_pad[6]/U0/NET2 , 
        \output_signal_pad[14]/U0/NET1 , 
        \output_signal_pad[14]/U0/NET2 , 
        \output_signal_pad[2]/U0/NET1 , \output_signal_pad[2]/U0/NET2 , 
        \trigger_signal_pad/U0/NET1 , \output_signal_pad[15]/U0/NET1 , 
        \output_signal_pad[15]/U0/NET2 , 
        \output_signal_pad[16]/U0/NET1 , 
        \output_signal_pad[16]/U0/NET2 , 
        \output_signal_pad[9]/U0/NET1 , \output_signal_pad[9]/U0/NET2 , 
        \output_signal_pad[10]/U0/NET1 , 
        \output_signal_pad[10]/U0/NET2 , \reset_pad/U0/NET1 , 
        \signal_into_switch_pad/U0/NET1 , 
        \signal_into_switch_pad/U0/NET2 , \clock_pad/U0/NET1 , 
        \output_signal_pad[7]/U0/NET1 , \output_signal_pad[7]/U0/NET2 , 
        \output_signal_pad[0]/U0/NET1 , \output_signal_pad[0]/U0/NET2 , 
        \output_signal_pad[11]/U0/NET1 , 
        \output_signal_pad[11]/U0/NET2 , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR2B \modulator_0/clock_counter_RNI41VU[11]  (.A(
        \modulator_0/clock_counter_c10 ), .B(\modulator_0/un6lto11 ), 
        .Y(\modulator_0/clock_counter_c11 ));
    XNOR2 \baseband_signal_0/tag_data_output_1[6]  (.A(
        main_clock_0_clock_out), .B(\data_source_0_output_data_0[6] ), 
        .Y(\baseband_signal_0_tag_data_output[6] ));
    DFN1E1C0 \modulator_0/clock_counter[14]  (.D(
        \modulator_0/clock_counter_n14 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[14]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_2_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[5]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[6] ));
    IOPAD_TRI \output_signal_pad[15]/U0/U0  (.D(
        \output_signal_pad[15]/U0/NET1 ), .E(
        \output_signal_pad[15]/U0/NET2 ), .PAD(output_signal[15]));
    NOR3B \switching_circuit_0/un40_out_signal_switch  (.A(
        \data_source_0_tag_control_sig[4] ), .B(main_clock_0_clock_out)
        , .C(modulator_0_output_signal), .Y(
        \switching_circuit_0/un40_out_signal_switch_net_1 ));
    OR2A \data_source_0/tag_data_buf_5_RNO[0]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_5[7]_net_1 ), .Y(
        \data_source_0/tag_data_buf_5_4[0] ));
    NOR2B \data_source_0/tag_data_buf_4_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[3]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[4] ));
    NOR2B \data_source_0/tag_data_buf_5_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_5[5]_net_1 ), .Y(
        \data_source_0/tag_data_buf_5_4[6] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_17[3]  (.A(
        \data_source_0/N_1126 ), .B(\data_source_0/N_15 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_121 ));
    OR2 \modulator_0/clock_counter_RNITDG2[7]  (.A(
        \modulator_0/clock_counter[8]_net_1 ), .B(
        \modulator_0/clock_counter[7]_net_1 ), .Y(
        \modulator_0/un6lto8 ));
    NOR2B \data_source_0/data_index_RNIASP8[7]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(
        \data_source_0/data_index[3]_net_1 ), .Y(\data_source_0/N_8_0 )
        );
    IOPAD_TRI \output_signal_pad[0]/U0/U0  (.D(
        \output_signal_pad[0]/U0/NET1 ), .E(
        \output_signal_pad[0]/U0/NET2 ), .PAD(output_signal[0]));
    DFN1E1C0 \modulator_0/clock_counter[0]  (.D(\modulator_0/N_121 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[0]_net_1 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_16[4]  (.A(
        \data_source_0/N_8_0 ), .B(\data_source_0/N_3_0 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_146 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_5[5]  (.A(
        \data_source_0/N_171 ), .B(\data_source_0/N_172 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_173 ));
    NOR2B \data_source_0/data_index_RNIGR6D[7]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(\data_source_0/N_3_0 )
        , .Y(\data_source_0/N_220 ));
    NOR3C \data_source_0/counter_RNO_1[5]  (.A(
        \data_source_0/counter[8]_net_1 ), .B(
        \data_source_0/counter[9]_net_1 ), .C(\data_source_0/N_87 ), 
        .Y(\data_source_0/N_73 ));
    XNOR2 \baseband_signal_0/tag_data_output_1[0]  (.A(
        main_clock_0_clock_out), .B(\data_source_0_output_data_0[0] ), 
        .Y(\baseband_signal_0_tag_data_output[0] ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_9[1]  (.A(
        \data_source_0/N_1144 ), .B(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_1145 ));
    MX2C \data_source_0/data_index_1_RNI1T421[5]  (.A(
        \data_source_0/N_1137 ), .B(\data_source_0/N_25 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_1138 ));
    OR2A \data_source_0/counter_RNI9PI33[13]  (.A(
        \data_source_0/counter[13]_net_1 ), .B(\data_source_0/N_42 ), 
        .Y(\data_source_0/N_43 ));
    NOR3C \data_source_0/un1_data_index_I_41  (.A(
        \data_source_0/data_index[4]_net_1 ), .B(
        \data_source_0/data_index[5]_net_1 ), .C(
        \data_source_0/DWACT_ADD_CI_0_g_array_2[0] ), .Y(
        \data_source_0/DWACT_ADD_CI_0_g_array_11[0] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_7[0]  (.A(
        \data_source_0/N_13_0 ), .B(\data_source_0/N_1123 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_17 ));
    MX2 \data_source_0/tag_control_sig_1_RNO[1]  (.A(
        \data_source_0/N_1147 ), .B(\data_source_0/N_1162 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_2[1] ));
    MX2C \data_source_0/data_index_RNIO4BF1[4]  (.A(
        \data_source_0/N_25 ), .B(\data_source_0/N_220 ), .S(
        \data_source_0/data_index_RNIR9AP[4]_net_1 ), .Y(
        \data_source_0/N_238_mux ));
    DFN1E1C0 \data_source_0/output_data[7]  (.D(
        \data_source_0/output_data_23[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0_output_data_0[7] ));
    IOPAD_TRI \signal_into_switch_pad/U0/U0  (.D(
        \signal_into_switch_pad/U0/NET1 ), .E(
        \signal_into_switch_pad/U0/NET2 ), .PAD(signal_into_switch));
    NOR2B \data_source_0/tag_data_buf_7_RNO[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_7[6]_net_1 ), .Y(
        \data_source_0/tag_data_buf_7_4[7] ));
    XOR2 \data_source_0/un1_data_index_I_29  (.A(
        \data_source_0/data_index[2]_net_1 ), .B(
        \data_source_0/DWACT_ADD_CI_0_g_array_1[0] ), .Y(
        \data_source_0/I_29 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_14[0]  (.A(
        \data_source_0/N_21 ), .B(\data_source_0/N_1126 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_23 ));
    OR2A \data_source_0/tag_data_buf_3_RNO[1]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[0]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[1] ));
    IOTRI_OB_EB \output_signal_pad[18]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[18]/U0/NET1 ), .EOUT(
        \output_signal_pad[18]/U0/NET2 ));
    NOR2B \data_source_0/tag_data_buf_5_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_5[3]_net_1 ), .Y(
        \data_source_0/tag_data_buf_5_4[4] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_8[7]  (.A(
        \data_source_0/N_202 ), .B(\data_source_0/N_19 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_203 )
        );
    DFN1C0 \data_source_0/counter[9]  (.D(\data_source_0/N_10 ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[9]_net_1 ));
    IOTRI_OB_EB \output_signal_pad[10]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[10]/U0/NET1 ), .EOUT(
        \output_signal_pad[10]/U0/NET2 ));
    IOTRI_OB_EB \output_signal_pad[13]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[13]/U0/NET1 ), .EOUT(
        \output_signal_pad[13]/U0/NET2 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_7[7]  (.A(
        \data_source_0/N_170 ), .B(\data_source_0/N_47 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_198 )
        );
    XA1 \modulator_0/clock_counter_RNO[3]  (.A(
        \modulator_0/clock_counter[3]_net_1 ), .B(
        \modulator_0/clock_counter_c2 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n3 ));
    AND3 \main_clock_0/un5_counter_1_I_19  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/DWACT_FINC_E[2] ), .C(
        \main_clock_0/counter[6]_net_1 ), .Y(\main_clock_0/N_2 ));
    AXO3 \data_source_0/tag_control_sig_1_RNO_20[3]  (.A(
        \data_source_0/data_index_0[6]_net_1 ), .B(
        \data_source_0/data_index_0[7]_net_1 ), .C(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/N_104 ));
    DFN1E1C0 \data_source_0/tag_data_buf_5[1]  (.D(
        \data_source_0/tag_data_buf_5_4[1] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_5[1]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_4_RNIS3VE[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[7]_net_1 ), .Y(
        \data_source_0/output_data_23[3] ));
    AO1 \switching_circuit_0/out_signal_switch_1[1]  (.A(
        \switching_circuit_0/un13_out_signal_switch_0_net_1 ), .B(
        \baseband_signal_0_tag_data_output[1] ), .C(
        \switching_circuit_0/un10_out_signal_switch_net_1 ), .Y(
        \output_signal_c[1] ));
    NOR2B \data_source_0/tag_data_buf_8_RNO[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_8[6]_net_1 ), .Y(
        \data_source_0/tag_data_buf_8_4[7] ));
    XA1A \data_source_0/counter_RNO[13]  (.A(\data_source_0/N_42 ), .B(
        \data_source_0/counter[13]_net_1 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/counter_n13 ));
    AX1C \modulator_0/counter_RNO_0[2]  (.A(
        \modulator_0/counter[1]_net_1 ), .B(
        \modulator_0/counter[0]_net_1 ), .C(
        \modulator_0/counter[2]_net_1 ), .Y(
        \modulator_0/counter_n2_tz ));
    MX2C \data_source_0/data_index_0_RNITS4N_1[7]  (.A(
        \data_source_0/data_index_0[7]_net_1 ), .B(
        \data_source_0/data_index_0[6]_net_1 ), .S(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/N_138 ));
    NOR2B \data_source_0/counter_RNIE3O01[10]  (.A(
        \data_source_0/counter_n9_i_a2_6 ), .B(
        \data_source_0/counter_n9_i_a2_5 ), .Y(\data_source_0/N_87 ));
    OR2A \data_source_0/tag_data_buf_1_RNO[0]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[7]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[0] ));
    OA1C \data_source_0/tag_control_sig_1_RNO_20[4]  (.A(
        \data_source_0/data_index_0[3]_net_1 ), .B(
        \data_source_0/data_index_0[7]_net_1 ), .C(
        \data_source_0/data_index_0[6]_net_1 ), .Y(
        \data_source_0/N_150 ));
    NOR2B \data_source_0/data_index_RNIFJJH[5]  (.A(
        \data_source_0/data_index[1]_net_1 ), .B(\data_source_0/N_19 ), 
        .Y(\data_source_0/N_1125 ));
    NOR2B \data_source_0/data_index_RNI9RP8[6]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index[3]_net_1 ), .Y(\data_source_0/N_3_0 )
        );
    MX2 \data_source_0/data_index_1_RNI2Q5D1[5]  (.A(
        \data_source_0/N_12_0 ), .B(\data_source_0/N_15 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_1129 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_6[4]  (.A(
        \data_source_0/N_129 ), .B(\data_source_0/N_130 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_131 )
        );
    MX2 \data_source_0/tag_control_sig_1_RNO_13[5]  (.A(
        \data_source_0/N_1155 ), .B(\data_source_0/N_114 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_172 )
        );
    NOR3A \data_source_0/counter_RNO[5]  (.A(modulator_0_output_signal)
        , .B(\data_source_0/N_53_i ), .C(\data_source_0/N_73 ), .Y(
        \data_source_0/N_18 ));
    DFN1C0 \modulator_0/counter[2]  (.D(\modulator_0/counter_n2 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/counter[2]_net_1 ));
    AX1C \data_source_0/un1_data_index_I_28  (.A(
        \data_source_0/DWACT_ADD_CI_0_g_array_2[0] ), .B(
        \data_source_0/data_index[4]_net_1 ), .C(
        \data_source_0/data_index[5]_net_1 ), .Y(\data_source_0/I_28 ));
    NOR2 \data_source_0/tag_control_sig_1_RNO_15[5]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(\data_source_0/N_138 )
        , .Y(\data_source_0/N_166 ));
    IOTRI_OB_EB \output_signal_pad[8]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[8]/U0/NET1 ), .EOUT(
        \output_signal_pad[8]/U0/NET2 ));
    NOR2B \data_source_0/tag_data_buf_8_RNO[1]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_8[0]_net_1 ), .Y(
        \data_source_0/tag_data_buf_8_4[1] ));
    DFN1E1C0 \data_source_0/tag_data_buf_1[1]  (.D(
        \data_source_0/tag_data_buf_1_4[1] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[1]_net_1 ));
    NOR3C \data_source_0/un1_data_index_I_35  (.A(
        \data_source_0/data_index[2]_net_1 ), .B(
        \data_source_0/data_index[3]_net_1 ), .C(
        \data_source_0/DWACT_ADD_CI_0_g_array_1[0] ), .Y(
        \data_source_0/DWACT_ADD_CI_0_g_array_2[0] ));
    NOR2 \data_source_0/counter_RNI7B61[13]  (.A(
        \data_source_0/counter[13]_net_1 ), .B(
        \data_source_0/counter[14]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a2_2 ));
    DFN1E1C0 \data_source_0/tag_data_buf_8[6]  (.D(
        \data_source_0/tag_data_buf_8_4[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_8[6]_net_1 ));
    IOTRI_OB_EB \output_signal_pad[4]/U0/U1  (.D(\output_signal_c[4] ), 
        .E(VCC), .DOUT(\output_signal_pad[4]/U0/NET1 ), .EOUT(
        \output_signal_pad[4]/U0/NET2 ));
    DFN1E1C0 \data_source_0/tag_data_buf_7[5]  (.D(
        \data_source_0/tag_data_buf_7_4[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_7[5]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[5]  (.D(
        \data_source_0/tag_data_buf_4_4[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_4[5]_net_1 ));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[1]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[2] ));
    OA1A \data_source_0/data_index_RNIB2UO3[4]  (.A(
        \data_source_0/trigger_counter13 ), .B(
        \data_source_0/N_238_mux ), .C(\data_source_0/I_29 ), .Y(
        \data_source_0/data_index_4[2] ));
    NOR2B \data_source_0/tag_control_sig_1_RNO_8[4]  (.A(
        \data_source_0/data_index[1]_net_1 ), .B(\data_source_0/N_136 )
        , .Y(\data_source_0/N_137 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_0[1]  (.A(
        \data_source_0/N_52 ), .B(\data_source_0/N_1146 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_1147 ));
    NOR2A \data_source_0/data_index_RNI2RHR_0[5]  (.A(
        \data_source_0/N_21 ), .B(\data_source_0/data_index[5]_net_1 ), 
        .Y(\data_source_0/N_1141 ));
    NOR2B \switching_circuit_0/un63_out_signal_switch_0  (.A(
        \data_source_0_tag_control_sig[6] ), .B(
        modulator_0_output_signal), .Y(
        \switching_circuit_0/un63_out_signal_switch_0_net_1 ));
    NOR2B \data_source_0/output_data_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_7[7]_net_1 ), .Y(
        \data_source_0/output_data_23[6] ));
    XA1B \data_source_0/tag_control_sig_1_RNO_19[7]  (.A(
        \data_source_0/data_index_0[3]_net_1 ), .B(
        \data_source_0/data_index_0[7]_net_1 ), .C(
        \data_source_0/data_index_0[6]_net_1 ), .Y(
        \data_source_0/N_200 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_3[6]  (.A(
        \data_source_0/N_180 ), .B(\data_source_0/N_183 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_184 ));
    XOR2 \main_clock_0/un5_counter_1_I_9  (.A(\main_clock_0/N_6 ), .B(
        \main_clock_0/counter[3]_net_1 ), .Y(\main_clock_0/I_9_0 ));
    DFN1E1C0 \data_source_0/tag_data_buf_6[5]  (.D(
        \data_source_0/tag_data_buf_6_4[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_6[5]_net_1 ));
    OA1A \data_source_0/data_index_RNINP464[4]  (.A(
        \data_source_0/trigger_counter13 ), .B(
        \data_source_0/N_238_mux ), .C(\data_source_0/I_28 ), .Y(
        \data_source_0/data_index_4[5] ));
    DFN1C0 \data_source_0/data_index[7]  (.D(
        \data_source_0/data_index_4[7] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[7]_net_1 ));
    MX2B \data_source_0/tag_control_sig_1_RNO_15[7]  (.A(
        \data_source_0/N_1127 ), .B(\data_source_0/N_25 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_205 ));
    DFN1E1 \data_source_0/tag_control_sig_1[4]  (.D(
        \data_source_0/tag_control_sig_2[4] ), .CLK(
        main_clock_0_clock_out), .E(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ), .Q(
        \data_source_0_tag_control_sig[4] ));
    DFN1E1C0 \modulator_0/clock_counter[2]  (.D(
        \modulator_0/clock_counter_n2 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[2]_net_1 ));
    NOR3C \modulator_0/counter_RNO_0[5]  (.A(
        \modulator_0/counter[3]_net_1 ), .B(\modulator_0/counter_c2 ), 
        .C(\modulator_0/counter[4]_net_1 ), .Y(
        \modulator_0/counter_45_0 ));
    DFN1C0 \main_clock_0/counter[1]  (.D(\main_clock_0/I_5_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[1]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNIFVF2[1]  (.A(
        \modulator_0/clock_counter[1]_net_1 ), .B(
        \modulator_0/clock_counter[0]_net_1 ), .Y(
        \modulator_0/clock_counter_c1 ));
    XA1 \modulator_0/clock_counter_RNO[7]  (.A(
        \modulator_0/clock_counter_c6 ), .B(
        \modulator_0/clock_counter[7]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n7 ));
    DFN1E1C0 \data_source_0/tag_data_buf_3[7]  (.D(
        \data_source_0/tag_data_buf_3_4[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_3[7]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_8[0]  (.D(
        \data_source_0/output_data_23[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_8[0]_net_1 ));
    NOR3 \data_source_0/data_index_RNIR9AP[4]  (.A(
        \data_source_0/data_index_0[5]_net_1 ), .B(
        \data_source_0/data_index[4]_net_1 ), .C(\data_source_0/N_237 )
        , .Y(\data_source_0/data_index_RNIR9AP[4]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNI6GO8[6]  (.A(
        \modulator_0/clock_counter_c5 ), .B(\modulator_0/un5lto6 ), .Y(
        \modulator_0/clock_counter_c6 ));
    DFN1E1C0 \modulator_0/clock_counter[11]  (.D(
        \modulator_0/clock_counter_n11 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/un6lto11 ));
    MX2 \data_source_0/data_index_1_RNIEOQU[5]  (.A(
        \data_source_0/N_3_0 ), .B(\data_source_0/N_12_0 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_1156 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_12[1]  (.A(
        \data_source_0/N_1155 ), .B(\data_source_0/N_1156 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_1157 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[4]  (.D(
        \data_source_0/tag_data_buf_4_4[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_4[4]_net_1 ));
    OR3 \modulator_0/output_signal_RNO_5  (.A(\modulator_0/un5lto15_2 )
        , .B(\modulator_0/un5lto15_1 ), .C(\modulator_0/un5lto15_3 ), 
        .Y(\modulator_0/un5lto15_6 ));
    XA1 \modulator_0/clock_counter_RNO[8]  (.A(
        \modulator_0/clock_counter_c7 ), .B(
        \modulator_0/clock_counter[8]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n8 ));
    NOR2B \data_source_0/un1_data_index_I_36  (.A(
        \data_source_0/DWACT_ADD_CI_0_TMP[0] ), .B(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/DWACT_ADD_CI_0_g_array_1[0] ));
    NOR3B \switching_circuit_0/un20_out_signal_switch  (.A(
        \data_source_0_tag_control_sig[2] ), .B(main_clock_0_clock_out)
        , .C(modulator_0_output_signal), .Y(
        \switching_circuit_0/un20_out_signal_switch_net_1 ));
    DFN1C0 \data_source_0/counter[5]  (.D(\data_source_0/N_18 ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[5]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_8[7]  (.D(
        \data_source_0/tag_data_buf_8_4[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_8[7]_net_1 ));
    NOR3B \switching_circuit_0/un30_out_signal_switch  (.A(
        \data_source_0_tag_control_sig[3] ), .B(main_clock_0_clock_out)
        , .C(modulator_0_output_signal), .Y(
        \switching_circuit_0/un30_out_signal_switch_net_1 ));
    IOTRI_OB_EB \output_signal_pad[0]/U0/U1  (.D(\output_signal_c[0] ), 
        .E(VCC), .DOUT(\output_signal_pad[0]/U0/NET1 ), .EOUT(
        \output_signal_pad[0]/U0/NET2 ));
    DFN1E1C0 \data_source_0/tag_data_buf_8[4]  (.D(
        \data_source_0/tag_data_buf_8_4[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_8[4]_net_1 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_12[4]  (.A(
        \data_source_0/N_25 ), .B(\data_source_0/N_1137 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_129 ));
    DFN1E1C0 \data_source_0/output_data[1]  (.D(
        \data_source_0/output_data_23[1] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0_output_data_0[1] ));
    DFN1E1P0 \data_source_0/tag_data_buf_7[2]  (.D(
        \data_source_0/tag_data_buf_7_4[2] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_7[2]_net_1 ));
    NOR2A \data_source_0/data_index_RNIASP8_0[7]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(
        \data_source_0/data_index[3]_net_1 ), .Y(
        \data_source_0/N_1126 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_16[7]  (.A(
        \data_source_0/N_1126 ), .B(\data_source_0/N_1148 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_209 ));
    AXOI4 \data_source_0/data_index_RNIGR6D_2[6]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(
        \data_source_0/data_index[3]_net_1 ), .C(
        \data_source_0/data_index[6]_net_1 ), .Y(
        \data_source_0/N_1143 ));
    IOPAD_IN \trigger_signal_pad/U0/U0  (.PAD(trigger_signal), .Y(
        \trigger_signal_pad/U0/NET1 ));
    DFN1C0 \data_source_0/data_index[5]  (.D(
        \data_source_0/data_index_4[5] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[5]_net_1 ));
    IOPAD_TRI \output_signal_pad[14]/U0/U0  (.D(
        \output_signal_pad[14]/U0/NET1 ), .E(
        \output_signal_pad[14]/U0/NET2 ), .PAD(output_signal[14]));
    PLLBA \pll_core_0/Core  (.CLKA(clock_c), .EXTFB(GND), .POWERDOWN(
        VCC), .GLA(GLA), .LOCK(), .GLB(), .YB(), .GLC(), .YC(), 
        .OADIV0(GND), .OADIV1(GND), .OADIV2(GND), .OADIV3(GND), 
        .OADIV4(GND), .OAMUX0(GND), .OAMUX1(GND), .OAMUX2(VCC), 
        .DLYGLA0(GND), .DLYGLA1(GND), .DLYGLA2(GND), .DLYGLA3(GND), 
        .DLYGLA4(GND), .OBDIV0(AFLSDF_GND), .OBDIV1(AFLSDF_GND), 
        .OBDIV2(AFLSDF_GND), .OBDIV3(AFLSDF_GND), .OBDIV4(AFLSDF_GND), 
        .OBMUX0(AFLSDF_GND), .OBMUX1(AFLSDF_GND), .OBMUX2(AFLSDF_GND), 
        .DLYYB0(AFLSDF_GND), .DLYYB1(AFLSDF_GND), .DLYYB2(AFLSDF_GND), 
        .DLYYB3(AFLSDF_GND), .DLYYB4(AFLSDF_GND), .DLYGLB0(AFLSDF_GND), 
        .DLYGLB1(AFLSDF_GND), .DLYGLB2(AFLSDF_GND), .DLYGLB3(
        AFLSDF_GND), .DLYGLB4(AFLSDF_GND), .OCDIV0(AFLSDF_GND), 
        .OCDIV1(AFLSDF_GND), .OCDIV2(AFLSDF_GND), .OCDIV3(AFLSDF_GND), 
        .OCDIV4(AFLSDF_GND), .OCMUX0(AFLSDF_GND), .OCMUX1(AFLSDF_GND), 
        .OCMUX2(AFLSDF_GND), .DLYYC0(AFLSDF_GND), .DLYYC1(AFLSDF_GND), 
        .DLYYC2(AFLSDF_GND), .DLYYC3(AFLSDF_GND), .DLYYC4(AFLSDF_GND), 
        .DLYGLC0(AFLSDF_GND), .DLYGLC1(AFLSDF_GND), .DLYGLC2(
        AFLSDF_GND), .DLYGLC3(AFLSDF_GND), .DLYGLC4(AFLSDF_GND), 
        .FINDIV0(VCC), .FINDIV1(VCC), .FINDIV2(GND), .FINDIV3(GND), 
        .FINDIV4(GND), .FINDIV5(GND), .FINDIV6(GND), .FBDIV0(VCC), 
        .FBDIV1(VCC), .FBDIV2(GND), .FBDIV3(GND), .FBDIV4(VCC), 
        .FBDIV5(GND), .FBDIV6(GND), .FBDLY0(GND), .FBDLY1(GND), 
        .FBDLY2(GND), .FBDLY3(GND), .FBDLY4(GND), .FBSEL0(VCC), 
        .FBSEL1(GND), .XDLYSEL(GND), .VCOSEL0(GND), .VCOSEL1(GND), 
        .VCOSEL2(VCC));
    AO1 \switching_circuit_0/out_signal_switch_1[2]  (.A(
        \switching_circuit_0/un23_out_signal_switch_0_net_1 ), .B(
        \baseband_signal_0_tag_data_output[2] ), .C(
        \switching_circuit_0/un20_out_signal_switch_net_1 ), .Y(
        \output_signal_c[2] ));
    DFN1E1C0 \modulator_0/clock_counter[13]  (.D(
        \modulator_0/clock_counter_n13 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[13]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_3[3]  (.D(
        \data_source_0/tag_data_buf_3_4[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_3[3]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_3_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[1]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[2] ));
    DFN1E1 \data_source_0/tag_control_sig_1[3]  (.D(
        \data_source_0/tag_control_sig_2[3] ), .CLK(
        main_clock_0_clock_out), .E(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ), .Q(
        \data_source_0_tag_control_sig[3] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_5[3]  (.A(
        \data_source_0/N_122 ), .B(\data_source_0/N_125 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_126 ));
    AO1 \modulator_0/output_signal_RNO_4  (.A(\modulator_0/un5lto5 ), 
        .B(\modulator_0/un5lto6 ), .C(\modulator_0/un6lto8 ), .Y(
        \modulator_0/un5lto15_5 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_3[4]  (.A(
        \data_source_0/N_137 ), .B(\data_source_0/N_140 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_141 ));
    DFN1E1C0 \data_source_0/output_data[2]  (.D(
        \data_source_0/output_data_23[2] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0_output_data_0[2] ));
    NOR2A \data_source_0/data_index_RNI9RP8_1[6]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .Y(
        \data_source_0/N_11_0 ));
    DFN1C0 \data_source_0/counter[12]  (.D(\data_source_0/counter_n12 )
        , .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[12]_net_1 ));
    MX2C \data_source_0/tag_control_sig_1_RNO[0]  (.A(
        \data_source_0/N_30 ), .B(\data_source_0/N_45 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(\data_source_0/N_46 ));
    NOR2B \data_source_0/tag_data_buf_4_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[5]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[6] ));
    DFN1E1 \data_source_0/tag_control_sig_1[0]  (.D(
        \data_source_0/N_46 ), .CLK(main_clock_0_clock_out), .E(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ), .Q(
        \data_source_0_tag_control_sig[0] ));
    NOR2B \data_source_0/tag_data_buf_6_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_6[5]_net_1 ), .Y(
        \data_source_0/tag_data_buf_6_4[6] ));
    NOR2B \data_source_0/counter_RNO_1[8]  (.A(
        \data_source_0/counter[9]_net_1 ), .B(\data_source_0/N_87 ), 
        .Y(\data_source_0/counter_n8_i_a3_0_0 ));
    NOR2A \data_source_0/data_index_RNI2RHR_1[5]  (.A(
        \data_source_0/N_15 ), .B(\data_source_0/data_index[5]_net_1 ), 
        .Y(\data_source_0/N_1123 ));
    MX2C \data_source_0/tag_control_sig_1_RNO[7]  (.A(
        \data_source_0/N_208 ), .B(\data_source_0/N_218 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(\data_source_0/N_219 )
        );
    AO1 \modulator_0/output_signal_RNO_6  (.A(\modulator_0/un6lto6_0 ), 
        .B(\modulator_0/un6lto4 ), .C(\modulator_0/un6lto8 ), .Y(
        \modulator_0/un6lt9 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_9[3]  (.A(
        \data_source_0/N_228_mux ), .B(\data_source_0/N_114 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_115 )
        );
    NOR2B \data_source_0/tag_data_buf_5_RNO[1]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_5[0]_net_1 ), .Y(
        \data_source_0/tag_data_buf_5_4[1] ));
    DFN1C0 \data_source_0/data_index[2]  (.D(
        \data_source_0/data_index_4[2] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[2]_net_1 ));
    DFN1C0 \main_clock_0/clock_out  (.D(
        \main_clock_0/clock_out_RNO_net_1 ), .CLK(GLA), .CLR(reset_c), 
        .Q(\main_clock_0/clock_out_i ));
    MX2 \data_source_0/tag_control_sig_1_RNO_7[6]  (.A(
        \data_source_0/N_162 ), .B(\data_source_0/N_177 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_178 )
        );
    NOR2 \data_source_0/tag_control_sig_1_RNO_20[7]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .Y(\data_source_0/N_201 )
        );
    MX2 \data_source_0/tag_control_sig_1_RNO_0[6]  (.A(
        \data_source_0/N_179 ), .B(\data_source_0/N_184 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_185 ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_19[3]  (.A(
        \data_source_0/N_6_0 ), .B(\data_source_0/data_index[5]_net_1 )
        , .Y(\data_source_0/N_124 ));
    DFN1E1C0 \modulator_0/clock_counter[3]  (.D(
        \modulator_0/clock_counter_n3 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[3]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[3]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[2]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[3] ));
    IOPAD_TRI \output_signal_pad[7]/U0/U0  (.D(
        \output_signal_pad[7]/U0/NET1 ), .E(
        \output_signal_pad[7]/U0/NET2 ), .PAD(output_signal[7]));
    DFN1C0 \data_source_0/counter[11]  (.D(\data_source_0/counter_n11 )
        , .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[11]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO[6]  (.A(
        \data_source_0/N_185 ), .B(\data_source_0/N_193 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_2[6] ));
    NOR3 \main_clock_0/counter_RNIFVEB1[7]  (.A(
        \main_clock_0/counter[6]_net_1 ), .B(
        \main_clock_0/counter[7]_net_1 ), .C(
        \main_clock_0/counter[3]_net_1 ), .Y(
        \main_clock_0/counter14_3 ));
    AND2 AND2_0 (.A(trigger_signal_c), .B(mac_control_signal_c), .Y(
        AND2_0_Y));
    NOR2B \modulator_0/clock_counter_RNIO0O3[2]  (.A(
        \modulator_0/clock_counter_c1 ), .B(
        \modulator_0/clock_counter[2]_net_1 ), .Y(
        \modulator_0/clock_counter_c2 ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_15[1]  (.A(
        \data_source_0/N_1148 ), .B(
        \data_source_0/data_index[5]_net_1 ), .Y(
        \data_source_0/N_1149 ));
    OA1A \data_source_0/data_index_RNO[4]  (.A(
        \data_source_0/trigger_counter13 ), .B(
        \data_source_0/N_238_mux ), .C(\data_source_0/I_33 ), .Y(
        \data_source_0/data_index_4[4] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_6[6]  (.A(
        \data_source_0/N_47 ), .B(\data_source_0/N_19 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_176 )
        );
    NOR2B \data_source_0/tag_control_sig_1_RNO_11[1]  (.A(
        \data_source_0/data_index[1]_net_1 ), .B(\data_source_0/N_25 ), 
        .Y(\data_source_0/N_1153 ));
    DFN1C0 \data_source_0/trigger_counter[2]  (.D(\data_source_0/I_7 ), 
        .CLK(modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/trigger_counter[2]_net_1 ));
    DFN1P0 \data_source_0/counter[0]  (.D(\data_source_0/counter_n0 ), 
        .CLK(main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[0] ));
    DFN1C0 \data_source_0/data_index_0[7]  (.D(
        \data_source_0/data_index_4[7] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index_0[7]_net_1 ));
    XNOR2 \baseband_signal_0/tag_data_output_1[5]  (.A(
        main_clock_0_clock_out), .B(\data_source_0_output_data_0[5] ), 
        .Y(\baseband_signal_0_tag_data_output[5] ));
    OA1B \data_source_0/data_index_RNIGR6D_0[6]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index[7]_net_1 ), .C(
        \data_source_0/data_index[3]_net_1 ), .Y(
        \data_source_0/N_1148 ));
    DFN1C0 \modulator_0/counter[1]  (.D(\modulator_0/counter_n1 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/counter[1]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[0]  (.D(
        \data_source_0/output_data_23[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_4[0]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_6[4]  (.D(
        \data_source_0/tag_data_buf_6_4[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_6[4]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_5[6]  (.D(
        \data_source_0/tag_data_buf_5_4[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_5[6]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[3]  (.D(
        \data_source_0/tag_data_buf_2_4[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[3]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_10[0]  (.A(
        \data_source_0/N_3_0 ), .B(\data_source_0/N_1132 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_1133 ));
    XA1 \data_source_0/tag_control_sig_1_RNO_14[2]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .C(\data_source_0/N_229 )
        , .Y(\data_source_0/N_232_mux ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_5[6]  (.A(
        \data_source_0/N_191 ), .B(\data_source_0/data_index[2]_net_1 )
        , .Y(\data_source_0/N_192 ));
    AX1C \main_clock_0/clock_out_RNO  (.A(\main_clock_0/counter14_3 ), 
        .B(\main_clock_0/counter14_4 ), .C(\main_clock_0/clock_out_i ), 
        .Y(\main_clock_0/clock_out_RNO_net_1 ));
    NOR2B \data_source_0/tag_control_sig_1_RNO_10[6]  (.A(
        \data_source_0/data_index[1]_net_1 ), .B(\data_source_0/N_98 ), 
        .Y(\data_source_0/N_186 ));
    NOR2B \data_source_0/tag_control_sig_1_RNO_15[3]  (.A(
        \data_source_0/data_index_1[5]_net_1 ), .B(
        \data_source_0/N_1148 ), .Y(\data_source_0/N_107 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_9[4]  (.A(
        \data_source_0/N_1141 ), .B(\data_source_0/N_139 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_140 )
        );
    OR2A \data_source_0/tag_data_buf_8_RNO[3]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_8[2]_net_1 ), .Y(
        \data_source_0/tag_data_buf_8_4[3] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_7[3]  (.A(
        \data_source_0/N_1156 ), .B(\data_source_0/N_107 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_108 )
        );
    NOR2 \modulator_0/counter_RNIPIOV[1]  (.A(
        \modulator_0/counter[0]_net_1 ), .B(
        \modulator_0/counter[1]_net_1 ), .Y(\modulator_0/counter23_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_5[2]  (.A(
        \data_source_0/N_99 ), .B(\data_source_0/N_100 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_101 ));
    AX1C \data_source_0/un1_data_index_I_27  (.A(
        \data_source_0/DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \data_source_0/data_index[2]_net_1 ), .C(
        \data_source_0/data_index[3]_net_1 ), .Y(\data_source_0/I_27 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[3]  (.D(
        \data_source_0/tag_data_buf_4_4[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_4[3]_net_1 ));
    DFN1C0 \data_source_0/data_index_1[5]  (.D(
        \data_source_0/data_index_4[5] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index_1[5]_net_1 ));
    DFN1C0 \data_source_0/counter[10]  (.D(\data_source_0/counter_n10 )
        , .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[10]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_11[6]  (.A(
        \data_source_0/N_8_0 ), .B(\data_source_0/N_187 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_188 )
        );
    NOR2B \data_source_0/tag_data_buf_6_RNO[3]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_6[2]_net_1 ), .Y(
        \data_source_0/tag_data_buf_6_4[3] ));
    DFN1C0 \data_source_0/data_index_0[6]  (.D(
        \data_source_0/data_index_4[6] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index_0[6]_net_1 ));
    XAI1 \data_source_0/counter_RNO[2]  (.A(
        \data_source_0/counter_i_0[2] ), .B(\data_source_0/N_31 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/N_24 ));
    XA1 \modulator_0/clock_counter_RNO[12]  (.A(
        \modulator_0/clock_counter_c11 ), .B(\modulator_0/un6lto12 ), 
        .C(AND2_0_Y), .Y(\modulator_0/clock_counter_n12 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_11[0]  (.A(
        \data_source_0/N_1136 ), .B(\data_source_0/N_1138 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_1139 ));
    CLKIO \reset_pad/U0/U1  (.A(\reset_pad/U0/NET1 ), .Y(reset_c));
    MX2 \data_source_0/data_index_0_RNIRNL71_0[5]  (.A(
        \data_source_0/N_15 ), .B(\data_source_0/N_1126 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_149 ));
    DFN1C0 \data_source_0/data_index[4]  (.D(
        \data_source_0/data_index_4[4] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[4]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_17[2]  (.A(
        \data_source_0/N_15 ), .B(\data_source_0/N_11_0 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_94 ));
    XOR2 \data_source_0/un1_data_index_I_31  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/DWACT_ADD_CI_0_g_array_11[0] ), .Y(
        \data_source_0/I_31 ));
    DFN1C0 \data_source_0/counter[15]  (.D(\data_source_0/counter_n15 )
        , .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[15]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_8_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_8[1]_net_1 ), .Y(
        \data_source_0/tag_data_buf_8_4[2] ));
    NOR2B \switching_circuit_0/un23_out_signal_switch_0  (.A(
        \data_source_0_tag_control_sig[2] ), .B(
        modulator_0_output_signal), .Y(
        \switching_circuit_0/un23_out_signal_switch_0_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[5]  (.A(
        \modulator_0/clock_counter_c4 ), .B(
        \modulator_0/clock_counter[5]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n5 ));
    DFN1E1C0 \modulator_0/clock_counter[1]  (.D(
        \modulator_0/clock_counter_n1 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[1]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_5[3]  (.D(
        \data_source_0/tag_data_buf_5_4[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_5[3]_net_1 ));
    DFN1C0 \data_source_0/trigger_counter[4]  (.D(\data_source_0/I_12 )
        , .CLK(modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/trigger_counter[4]_net_1 ));
    NOR3A \data_source_0/trigger_counter_RNIG483[1]  (.A(
        \data_source_0/trigger_counter13_3 ), .B(
        \data_source_0/trigger_counter[1]_net_1 ), .C(
        \data_source_0/trigger_counter[4]_net_1 ), .Y(
        \data_source_0/trigger_counter13_5 ));
    NOR2B \data_source_0/tag_data_buf_8_RNO[5]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_8[4]_net_1 ), .Y(
        \data_source_0/tag_data_buf_8_4[5] ));
    NOR2B \data_source_0/tag_data_buf_6_RNIU95H[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_6[7]_net_1 ), .Y(
        \data_source_0/output_data_23[5] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_8[6]  (.A(
        \data_source_0/N_110 ), .B(\data_source_0/N_130 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_180 )
        );
    DFN1E1 \data_source_0/tag_control_sig_1[5]  (.D(
        \data_source_0/tag_control_sig_2[5] ), .CLK(
        main_clock_0_clock_out), .E(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ), .Q(
        \data_source_0_tag_control_sig[5] ));
    DFN1E1C0 \data_source_0/output_data[3]  (.D(
        \data_source_0/output_data_23[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0_output_data_0[3] ));
    NOR2B \modulator_0/clock_counter_RNIPAG7[5]  (.A(
        \modulator_0/clock_counter_c4 ), .B(
        \modulator_0/clock_counter[5]_net_1 ), .Y(
        \modulator_0/clock_counter_c5 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_8[2]  (.A(
        \data_source_0/N_1167 ), .B(\data_source_0/N_1132 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_88 ));
    IOPAD_TRI \output_signal_pad[9]/U0/U0  (.D(
        \output_signal_pad[9]/U0/NET1 ), .E(
        \output_signal_pad[9]/U0/NET2 ), .PAD(output_signal[9]));
    IOPAD_TRI \output_signal_pad[5]/U0/U0  (.D(
        \output_signal_pad[5]/U0/NET1 ), .E(
        \output_signal_pad[5]/U0/NET2 ), .PAD(output_signal[5]));
    AND3 \main_clock_0/un5_counter_1_I_8  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(\main_clock_0/N_6 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_17[7]  (.A(
        \data_source_0/N_1143 ), .B(\data_source_0/N_15 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_211 ));
    DFN1E1C0 \data_source_0/output_data[0]  (.D(
        \data_source_0/output_data_23[0] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0_output_data_0[0] ));
    NOR2 \data_source_0/trigger_counter_RNIB5K1[2]  (.A(
        \data_source_0/trigger_counter[5]_net_1 ), .B(
        \data_source_0/trigger_counter[2]_net_1 ), .Y(
        \data_source_0/trigger_counter13_1 ));
    DFN1E1C0 \data_source_0/output_data[4]  (.D(
        \data_source_0/output_data_23[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0_output_data_0[4] ));
    XA1 \modulator_0/clock_counter_RNO[2]  (.A(
        \modulator_0/clock_counter[2]_net_1 ), .B(
        \modulator_0/clock_counter_c1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n2 ));
    OR2 \modulator_0/output_signal_RNO_9  (.A(\modulator_0/un6lto12 ), 
        .B(\modulator_0/un6lto11 ), .Y(\modulator_0/un5lto15_1 ));
    NOR2B \data_source_0/data_index_RNILPJH_0[5]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(
        \data_source_0/N_1143 ), .Y(\data_source_0/N_1144 ));
    NOR2B \data_source_0/tag_data_buf_3_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[3]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[4] ));
    NOR3A \data_source_0/counter_RNIEF7L[10]  (.A(
        \data_source_0/counter_n9_i_a2_4 ), .B(
        \data_source_0/counter[12]_net_1 ), .C(
        \data_source_0/counter[10]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a2_6 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_6[1]  (.A(
        \data_source_0/N_47 ), .B(\data_source_0/N_8_0 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_48 ));
    DFN1P0 \data_source_0/counter[7]  (.D(\data_source_0/N_14 ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[7] ));
    NOR2 \data_source_0/tag_control_sig_1_RNO_9[5]  (.A(
        \data_source_0/data_index[1]_net_1 ), .B(\data_source_0/N_162 )
        , .Y(\data_source_0/N_163 ));
    NOR2 \data_source_0/data_index_RNIS17D[7]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_229 ));
    INV \data_source_0/un3_trigger_counter_I_4  (.A(
        \data_source_0/trigger_counter[0]_net_1 ), .Y(
        \data_source_0/I_4 ));
    NOR2B \modulator_0/clock_counter_RNIPVCH1[13]  (.A(
        \modulator_0/clock_counter_c12 ), .B(
        \modulator_0/clock_counter[13]_net_1 ), .Y(
        \modulator_0/clock_counter_c13 ));
    XAI1 \data_source_0/counter_RNO[7]  (.A(
        \data_source_0/counter_i_0[7] ), .B(\data_source_0/N_36 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/N_14 ));
    NOR2B \data_source_0/tag_data_buf_2_RNIQTOS[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[7]_net_1 ), .Y(
        \data_source_0/output_data_23[1] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_11[7]  (.A(
        \data_source_0/N_211 ), .B(\data_source_0/N_13_0 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_212 )
        );
    NOR2A \data_source_0/data_index_RNILPJH_1[5]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(
        \data_source_0/N_1150 ), .Y(\data_source_0/N_170 ));
    IOTRI_OB_EB \output_signal_pad[7]/U0/U1  (.D(\output_signal_c[7] ), 
        .E(VCC), .DOUT(\output_signal_pad[7]/U0/NET1 ), .EOUT(
        \output_signal_pad[7]/U0/NET2 ));
    NOR3A \data_source_0/trigger_counter_RNISG83[7]  (.A(
        \data_source_0/trigger_counter13_1 ), .B(
        \data_source_0/trigger_counter[6]_net_1 ), .C(
        \data_source_0/trigger_counter[7]_net_1 ), .Y(
        \data_source_0/trigger_counter13_4 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_0[3]  (.A(
        \data_source_0/N_109 ), .B(\data_source_0/N_116 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_117 ));
    IOTRI_OB_EB \output_signal_pad[12]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[12]/U0/NET1 ), .EOUT(
        \output_signal_pad[12]/U0/NET2 ));
    DFN1E1C0 \data_source_0/tag_data_buf_1[2]  (.D(
        \data_source_0/tag_data_buf_1_4[2] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[2]_net_1 ));
    XOR2 \data_source_0/un1_data_index_I_33  (.A(
        \data_source_0/data_index[4]_net_1 ), .B(
        \data_source_0/DWACT_ADD_CI_0_g_array_2[0] ), .Y(
        \data_source_0/I_33 ));
    DFN1E1C0 \data_source_0/tag_data_buf_1[3]  (.D(
        \data_source_0/tag_data_buf_1_4[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[3]_net_1 ));
    NOR3B \switching_circuit_0/un50_out_signal_switch  (.A(
        \data_source_0_tag_control_sig[5] ), .B(main_clock_0_clock_out)
        , .C(modulator_0_output_signal), .Y(
        \switching_circuit_0/un50_out_signal_switch_net_1 ));
    NOR2B \data_source_0/tag_data_buf_3_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[5]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[6] ));
    NOR2B \switching_circuit_0/un33_out_signal_switch_0  (.A(
        \data_source_0_tag_control_sig[3] ), .B(
        modulator_0_output_signal), .Y(
        \switching_circuit_0/un33_out_signal_switch_0_net_1 ));
    NOR2B \modulator_0/counter_RNISLOV[4]  (.A(
        \modulator_0/counter[4]_net_1 ), .B(
        \modulator_0/counter[0]_net_1 ), .Y(\modulator_0/counter19_1 ));
    DFN1C0 \data_source_0/data_index[3]  (.D(
        \data_source_0/data_index_4[3] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[3]_net_1 ));
    DFN1E1C0 \modulator_0/clock_counter[15]  (.D(
        \modulator_0/clock_counter_n15 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[15]_net_1 ));
    AND3 \data_source_0/un3_trigger_counter_I_13  (.A(
        \data_source_0/DWACT_FINC_E[0] ), .B(
        \data_source_0/trigger_counter[3]_net_1 ), .C(
        \data_source_0/trigger_counter[4]_net_1 ), .Y(
        \data_source_0/N_4 ));
    DFN1E1P0 \data_source_0/tag_data_buf_1[0]  (.D(
        \data_source_0/tag_data_buf_1_4[0] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[0]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_7_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_7[5]_net_1 ), .Y(
        \data_source_0/tag_data_buf_7_4[6] ));
    DFN1C0 \data_source_0/data_index_0[2]  (.D(
        \data_source_0/data_index_4[2] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index_0[2]_net_1 ));
    IOTRI_OB_EB \output_signal_pad[15]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[15]/U0/NET1 ), .EOUT(
        \output_signal_pad[15]/U0/NET2 ));
    XOR2 \main_clock_0/un5_counter_1_I_17  (.A(\main_clock_0/N_3 ), .B(
        \main_clock_0/counter[6]_net_1 ), .Y(\main_clock_0/I_17_0 ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[5]  (.D(
        \data_source_0/tag_data_buf_2_4[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[5]_net_1 ));
    IOPAD_IN \clock_pad/U0/U0  (.PAD(clock), .Y(\clock_pad/U0/NET1 ));
    AO1 \switching_circuit_0/out_signal_switch_1[7]  (.A(
        \switching_circuit_0/un73_out_signal_switch_0_net_1 ), .B(
        \baseband_signal_0_tag_data_output[7] ), .C(
        \switching_circuit_0/un70_out_signal_switch_net_1 ), .Y(
        \output_signal_c[7] ));
    CLKINT \data_source_0/data_index_RNI1QC4[1]  (.A(
        \data_source_0/data_index_0[1] ), .Y(
        \data_source_0/data_index[1]_net_1 ));
    NOR2A \modulator_0/counter_RNIUNOV[5]  (.A(
        \modulator_0/counter[5]_net_1 ), .B(
        \modulator_0/counter[1]_net_1 ), .Y(\modulator_0/counter19_0 ));
    NOR2B \modulator_0/output_signal_RNO_11  (.A(\modulator_0/un5lto6 )
        , .B(\modulator_0/clock_counter[5]_net_1 ), .Y(
        \modulator_0/un6lto6_0 ));
    DFN1P0 \data_source_0/data_index[0]  (.D(
        \data_source_0/data_index_4[0] ), .CLK(
        modulator_0_output_signal), .PRE(reset_c), .Q(
        \data_source_0/un25lto0 ));
    NOR2B \modulator_0/clock_counter_RNI2305[3]  (.A(
        \modulator_0/clock_counter_c2 ), .B(
        \modulator_0/clock_counter[3]_net_1 ), .Y(
        \modulator_0/clock_counter_c3 ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_9[6]  (.A(
        \data_source_0/data_index[1]_net_1 ), .B(
        \data_source_0/N_234_mux ), .Y(\data_source_0/N_183 ));
    NOR2A \data_source_0/data_index_RNI9RP8_0[6]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index[3]_net_1 ), .Y(\data_source_0/N_6_0 )
        );
    DFN1E1C0 \data_source_0/tag_data_buf_3[6]  (.D(
        \data_source_0/tag_data_buf_3_4[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_3[6]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_5_RNO[5]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_5[4]_net_1 ), .Y(
        \data_source_0/tag_data_buf_5_4[5] ));
    DFN1E1C0 \modulator_0/clock_counter[5]  (.D(
        \modulator_0/clock_counter_n5 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[5]_net_1 ));
    NOR3A \main_clock_0/counter_RNI0BUP1[2]  (.A(
        \main_clock_0/counter14_2 ), .B(
        \main_clock_0/counter[2]_net_1 ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(
        \main_clock_0/counter14_4 ));
    NOR2B \data_source_0/tag_data_buf_2_RNO[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[6]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[7] ));
    NOR2A \data_source_0/data_index_RNILPJH_3[5]  (.A(
        \data_source_0/N_7_0 ), .B(\data_source_0/data_index[5]_net_1 )
        , .Y(\data_source_0/N_136 ));
    AX1C \modulator_0/counter_RNO_0[4]  (.A(
        \modulator_0/counter[3]_net_1 ), .B(\modulator_0/counter_c2 ), 
        .C(\modulator_0/counter[4]_net_1 ), .Y(
        \modulator_0/counter_n4_tz ));
    AND2 \data_source_0/un1_data_index_I_1  (.A(
        \data_source_0/un25lto0 ), .B(
        \data_source_0/data_index_0_sqmuxa ), .Y(
        \data_source_0/DWACT_ADD_CI_0_TMP[0] ));
    OR2A \data_source_0/tag_data_buf_7_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_7[1]_net_1 ), .Y(
        \data_source_0/tag_data_buf_7_4[2] ));
    IOPAD_TRI \output_signal_pad[11]/U0/U0  (.D(
        \output_signal_pad[11]/U0/NET1 ), .E(
        \output_signal_pad[11]/U0/NET2 ), .PAD(output_signal[11]));
    MX2 \data_source_0/tag_control_sig_1_RNO_7[5]  (.A(
        \data_source_0/N_47 ), .B(\data_source_0/N_1159 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_159 )
        );
    NOR2B \data_source_0/data_index_RNIEP6D[5]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(\data_source_0/N_3_0 )
        , .Y(\data_source_0/N_91 ));
    ULSICC_INT INT_ULSICC_INSTANCE_0 (.USTDBY(GND), .LPENA(GND));
    OR2A \data_source_0/counter_RNI3B613[9]  (.A(
        \data_source_0/counter[9]_net_1 ), .B(\data_source_0/N_38 ), 
        .Y(\data_source_0/N_39 ));
    DFN1C0 \modulator_0/counter[3]  (.D(\modulator_0/counter_n3 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/counter[3]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[6]  (.D(
        \data_source_0/tag_data_buf_4_4[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_4[6]_net_1 ));
    DFN1P0 \data_source_0/counter[2]  (.D(\data_source_0/N_24 ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[2] ));
    IOPAD_TRI \output_signal_pad[6]/U0/U0  (.D(
        \output_signal_pad[6]/U0/NET1 ), .E(
        \output_signal_pad[6]/U0/NET2 ), .PAD(output_signal[6]));
    MX2A \data_source_0/tag_control_sig_1_RNO_7[1]  (.A(
        \data_source_0/N_15 ), .B(\data_source_0/N_50 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_51 ));
    DFN1E1P0 \data_source_0/tag_data_buf_6[1]  (.D(
        \data_source_0/tag_data_buf_6_4[1] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_6[1]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_4_RNO[3]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[2]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[3] ));
    NOR3 \data_source_0/tag_control_sig_1_RNO_6[7]  (.A(
        \data_source_0/data_index[1]_net_1 ), .B(
        \data_source_0/data_index_0[5]_net_1 ), .C(
        \data_source_0/N_195 ), .Y(\data_source_0/N_235_mux ));
    DFN1E1C0 \data_source_0/tag_data_buf_6[6]  (.D(
        \data_source_0/tag_data_buf_6_4[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_6[6]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_12[5]  (.A(
        \data_source_0/N_170 ), .B(\data_source_0/N_130 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_171 )
        );
    MX2 \data_source_0/tag_control_sig_1_RNO_3[5]  (.A(
        \data_source_0/N_161 ), .B(\data_source_0/N_163 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_164 ));
    OR3 \data_source_0/counter_RNILOIG1[4]  (.A(
        \data_source_0/counter_i_0[3] ), .B(\data_source_0/N_32 ), .C(
        \data_source_0/counter_i_0[4] ), .Y(\data_source_0/N_34 ));
    OR2A \data_source_0/tag_data_buf_6_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_6[1]_net_1 ), .Y(
        \data_source_0/tag_data_buf_6_4[2] ));
    XOR2 \main_clock_0/un5_counter_1_I_5  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .Y(\main_clock_0/I_5_0 ));
    AND3 \data_source_0/un3_trigger_counter_I_19  (.A(
        \data_source_0/DWACT_FINC_E[0] ), .B(
        \data_source_0/DWACT_FINC_E[2] ), .C(
        \data_source_0/trigger_counter[6]_net_1 ), .Y(
        \data_source_0/N_2 ));
    AO1 \switching_circuit_0/out_signal_switch_1[0]  (.A(
        \switching_circuit_0/un4_out_signal_switch_0_net_1 ), .B(
        \baseband_signal_0_tag_data_output[0] ), .C(
        \switching_circuit_0/un1_out_signal_switch_net_1 ), .Y(
        \output_signal_c[0] ));
    IOPAD_TRI \output_signal_pad[2]/U0/U0  (.D(
        \output_signal_pad[2]/U0/NET1 ), .E(
        \output_signal_pad[2]/U0/NET2 ), .PAD(output_signal[2]));
    MX2 \data_source_0/tag_control_sig_1_RNO_10[3]  (.A(
        \data_source_0/N_1164 ), .B(\data_source_0/N_47 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_118 )
        );
    OR3 \modulator_0/output_signal_RNO_13  (.A(
        \modulator_0/clock_counter[0]_net_1 ), .B(
        \modulator_0/clock_counter[1]_net_1 ), .C(
        \modulator_0/clock_counter[4]_net_1 ), .Y(
        \modulator_0/un6lt4_2 ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[6]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[7] ));
    DFN1E1 \data_source_0/tag_control_sig_1[1]  (.D(
        \data_source_0/tag_control_sig_2[1] ), .CLK(
        main_clock_0_clock_out), .E(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ), .Q(
        \data_source_0_tag_control_sig[1] ));
    XA1 \modulator_0/clock_counter_RNO[11]  (.A(
        \modulator_0/clock_counter_c10 ), .B(\modulator_0/un6lto11 ), 
        .C(AND2_0_Y), .Y(\modulator_0/clock_counter_n11 ));
    DFN1E1P0 \data_source_0/tag_data_buf_6[2]  (.D(
        \data_source_0/tag_data_buf_6_4[2] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_6[2]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_8_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_8[5]_net_1 ), .Y(
        \data_source_0/tag_data_buf_8_4[6] ));
    IOTRI_OB_EB \output_signal_pad[9]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[9]/U0/NET1 ), .EOUT(
        \output_signal_pad[9]/U0/NET2 ));
    IOTRI_OB_EB \output_signal_pad[5]/U0/U1  (.D(\output_signal_c[5] ), 
        .E(VCC), .DOUT(\output_signal_pad[5]/U0/NET1 ), .EOUT(
        \output_signal_pad[5]/U0/NET2 ));
    DFN1E1 \data_source_0/tag_control_sig_1[7]  (.D(
        \data_source_0/N_219 ), .CLK(main_clock_0_clock_out), .E(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ), .Q(
        \data_source_0_tag_control_sig[7] ));
    XNOR2 \baseband_signal_0/tag_data_output_1[1]  (.A(
        main_clock_0_clock_out), .B(\data_source_0_output_data_0[1] ), 
        .Y(\baseband_signal_0_tag_data_output[1] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_10[4]  (.A(
        \data_source_0/N_145 ), .B(\data_source_0/N_146 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_147 )
        );
    NOR2B \data_source_0/counter_RNIVPDJ_0[1]  (.A(
        \data_source_0/counter_i_0[1] ), .B(
        \data_source_0/counter_i_0[0] ), .Y(\data_source_0/N_90 ));
    XNOR2 \baseband_signal_0/tag_data_output_1[2]  (.A(
        main_clock_0_clock_out), .B(\data_source_0_output_data_0[2] ), 
        .Y(\baseband_signal_0_tag_data_output[2] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_16[0]  (.A(
        \data_source_0/N_6_0 ), .B(\data_source_0/N_1135 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_1136 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_2[7]  (.A(
        \data_source_0/N_235_mux ), .B(\data_source_0/N_198 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_199 ));
    NOR2B \switching_circuit_0/un43_out_signal_switch_0  (.A(
        \data_source_0_tag_control_sig[4] ), .B(
        modulator_0_output_signal), .Y(
        \switching_circuit_0/un43_out_signal_switch_0_net_1 ));
    AND3 \data_source_0/un3_trigger_counter_I_18  (.A(
        \data_source_0/trigger_counter[3]_net_1 ), .B(
        \data_source_0/trigger_counter[4]_net_1 ), .C(
        \data_source_0/trigger_counter[5]_net_1 ), .Y(
        \data_source_0/DWACT_FINC_E[2] ));
    AND2 \main_clock_0/un5_counter_1_I_15  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/counter[4]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[1] ));
    DFN1E1C0 \data_source_0/tag_data_buf_3[2]  (.D(
        \data_source_0/tag_data_buf_3_4[2] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_3[2]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_3[5]  (.D(
        \data_source_0/tag_data_buf_3_4[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_3[5]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_12[2]  (.A(
        \data_source_0/N_50 ), .B(\data_source_0/N_1141 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_100 )
        );
    MX2 \data_source_0/data_index_1_RNIRPO81_0[5]  (.A(
        \data_source_0/N_3_0 ), .B(\data_source_0/N_15 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_98 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_13[1]  (.A(
        \data_source_0/N_1158 ), .B(\data_source_0/N_1159 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_1160 ));
    DFN1E1 \data_source_0/tag_control_sig_1[2]  (.D(
        \data_source_0/tag_control_sig_2[2] ), .CLK(
        main_clock_0_clock_out), .E(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ), .Q(
        \data_source_0_tag_control_sig[2] ));
    OR3A \data_source_0/counter_RNIB5FN2[7]  (.A(
        \data_source_0/counter[8]_net_1 ), .B(
        \data_source_0/counter_i_0[7] ), .C(\data_source_0/N_36 ), .Y(
        \data_source_0/N_38 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_0[4]  (.A(
        \data_source_0/N_135 ), .B(\data_source_0/N_141 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_142 ));
    IOPAD_TRI \output_signal_pad[1]/U0/U0  (.D(
        \output_signal_pad[1]/U0/NET1 ), .E(
        \output_signal_pad[1]/U0/NET2 ), .PAD(output_signal[1]));
    NOR2A \data_source_0/tag_control_sig_1_RNO_7[2]  (.A(
        \data_source_0/N_1164 ), .B(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_1165 ));
    AO1 \switching_circuit_0/out_signal_switch_1[5]  (.A(
        \switching_circuit_0/un53_out_signal_switch_0_net_1 ), .B(
        \baseband_signal_0_tag_data_output[5] ), .C(
        \switching_circuit_0/un50_out_signal_switch_net_1 ), .Y(
        \output_signal_c[5] ));
    OA1B \data_source_0/counter_RNO_2[8]  (.A(
        \data_source_0/counter_i_0[7] ), .B(\data_source_0/N_36 ), .C(
        \data_source_0/counter[8]_net_1 ), .Y(\data_source_0/N_69 ));
    AO1B \modulator_0/counter_RNIBT613[1]  (.A(
        \modulator_0/counter23_2_0 ), .B(\modulator_0/counter23_1 ), 
        .C(AND2_0_Y), .Y(\modulator_0/clock_countere ));
    XA1 \modulator_0/clock_counter_RNO[1]  (.A(
        \modulator_0/clock_counter[1]_net_1 ), .B(
        \modulator_0/clock_counter[0]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n1 ));
    DFN1C0 \main_clock_0/counter[0]  (.D(\main_clock_0/counter_3[0] ), 
        .CLK(GLA), .CLR(reset_c), .Q(\main_clock_0/counter[0]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_15[4]  (.A(
        \data_source_0/N_143 ), .B(\data_source_0/N_144 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_145 ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_18[4]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(
        \data_source_0/N_11_0 ), .Y(\data_source_0/N_143 ));
    XNOR2 \baseband_signal_0/tag_data_output_1[4]  (.A(
        main_clock_0_clock_out), .B(\data_source_0_output_data_0[4] ), 
        .Y(\baseband_signal_0_tag_data_output[4] ));
    NOR2 \data_source_0/tag_control_sig_1_RNO_6[5]  (.A(
        \data_source_0/data_index[1]_net_1 ), .B(\data_source_0/N_157 )
        , .Y(\data_source_0/N_158 ));
    NOR2A \data_source_0/data_index_RNIGR6D_1[7]  (.A(
        \data_source_0/N_6_0 ), .B(\data_source_0/data_index[7]_net_1 )
        , .Y(\data_source_0/N_7_0 ));
    NOR2B \data_source_0/trigger_counter_RNI71K1[0]  (.A(
        \data_source_0/trigger_counter[3]_net_1 ), .B(
        \data_source_0/trigger_counter[0]_net_1 ), .Y(
        \data_source_0/trigger_counter13_3 ));
    DFN1C0 \data_source_0/trigger_counter[6]  (.D(\data_source_0/I_17 )
        , .CLK(modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/trigger_counter[6]_net_1 ));
    NOR3B \switching_circuit_0/un10_out_signal_switch  (.A(
        \data_source_0_tag_control_sig[1] ), .B(main_clock_0_clock_out)
        , .C(modulator_0_output_signal), .Y(
        \switching_circuit_0/un10_out_signal_switch_net_1 ));
    OR2A \data_source_0/counter_RNO_0[15]  (.A(
        \data_source_0/counter[14]_net_1 ), .B(\data_source_0/N_43 ), 
        .Y(\data_source_0/N_44 ));
    IOPAD_TRI \output_signal_pad[16]/U0/U0  (.D(
        \output_signal_pad[16]/U0/NET1 ), .E(
        \output_signal_pad[16]/U0/NET2 ), .PAD(output_signal[16]));
    DFN1C0 \data_source_0/counter[14]  (.D(\data_source_0/counter_n14 )
        , .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[14]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_9[7]  (.A(
        \data_source_0/N_204 ), .B(\data_source_0/N_205 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_206 )
        );
    OR2A \data_source_0/counter_RNI6KV23[12]  (.A(
        \data_source_0/counter[12]_net_1 ), .B(\data_source_0/N_41 ), 
        .Y(\data_source_0/N_42 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_1[0]  (.A(
        \data_source_0/N_1131 ), .B(\data_source_0/N_1140 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_45 ));
    NOR2B \modulator_0/clock_counter_RNIUV581[12]  (.A(
        \modulator_0/clock_counter_c11 ), .B(\modulator_0/un6lto12 ), 
        .Y(\modulator_0/clock_counter_c12 ));
    NOR2B \data_source_0/data_index_RNI4QRL1[4]  (.A(
        \data_source_0/trigger_counter13 ), .B(
        \data_source_0/N_238_mux ), .Y(
        \data_source_0/data_index_0_sqmuxa ));
    NOR3B \data_source_0/counter_RNO_1[9]  (.A(\data_source_0/N_87 ), 
        .B(\data_source_0/counter[8]_net_1 ), .C(\data_source_0/N_34 ), 
        .Y(\data_source_0/N_68 ));
    DFN1P0 \data_source_0/counter[4]  (.D(\data_source_0/N_20 ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[4] ));
    MX2A \data_source_0/tag_control_sig_1_RNO_15[0]  (.A(
        \data_source_0/N_25 ), .B(\data_source_0/N_1127 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_27 ));
    AO1A \data_source_0/counter_RNO_0[8]  (.A(\data_source_0/N_34 ), 
        .B(\data_source_0/counter_n8_i_a3_0_0 ), .C(
        \data_source_0/N_69 ), .Y(\data_source_0/counter_n8_i_0 ));
    DFN1E1C0 \data_source_0/tag_data_buf_8[5]  (.D(
        \data_source_0/tag_data_buf_8_4[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_8[5]_net_1 ));
    DFN1E1C0 \modulator_0/clock_counter[10]  (.D(
        \modulator_0/clock_counter_n10 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/un6lto10 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[7]  (.D(
        \data_source_0/tag_data_buf_4_4[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_4[7]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_0[0]  (.A(
        \data_source_0/N_1124 ), .B(\data_source_0/N_1128 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_30 ));
    NOR2B \data_source_0/tag_data_buf_4_RNO[5]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[4]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[5] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_5[1]  (.A(
        \data_source_0/N_1157 ), .B(\data_source_0/N_1160 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/N_1161 ));
    NOR3B \data_source_0/counter_RNO[8]  (.A(\data_source_0/N_38 ), .B(
        modulator_0_output_signal), .C(\data_source_0/counter_n8_i_0 ), 
        .Y(\data_source_0/N_12 ));
    NOR3A \data_source_0/counter_RNI0KGB[15]  (.A(
        \data_source_0/counter_n9_i_a2_2 ), .B(
        \data_source_0/counter[15]_net_1 ), .C(
        \data_source_0/counter[5]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a2_5 ));
    NOR2B \data_source_0/trigger_counter_RNICLG6[1]  (.A(
        \data_source_0/trigger_counter13_5 ), .B(
        \data_source_0/trigger_counter13_4 ), .Y(
        \data_source_0/trigger_counter13 ));
    IOTRI_OB_EB \output_signal_pad[14]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[14]/U0/NET1 ), .EOUT(
        \output_signal_pad[14]/U0/NET2 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_2[0]  (.A(
        \data_source_0/N_10_0 ), .B(\data_source_0/N_17 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/N_1124 ));
    DFN1C0 \data_source_0/trigger_counter[7]  (.D(\data_source_0/I_20 )
        , .CLK(modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/trigger_counter[7]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[2]  (.D(
        \data_source_0/tag_data_buf_2_4[2] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[2]_net_1 ));
    NOR2A \data_source_0/data_index_1_RNIVTJH[5]  (.A(
        \data_source_0/N_8_0 ), .B(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_110 ));
    OR2 \data_source_0/counter_RNIVPDJ[1]  (.A(
        \data_source_0/counter_i_0[1] ), .B(
        \data_source_0/counter_i_0[0] ), .Y(\data_source_0/N_31 ));
    DFN1E1C0 \modulator_0/clock_counter[4]  (.D(
        \modulator_0/clock_counter_n4 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[4]_net_1 ));
    NOR2A \data_source_0/data_index_RNIGR6D_0[7]  (.A(
        \data_source_0/N_11_0 ), .B(
        \data_source_0/data_index[7]_net_1 ), .Y(
        \data_source_0/N_12_0 ));
    NOR2B \data_source_0/data_index_RNI2RHR[5]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(\data_source_0/N_15 ), 
        .Y(\data_source_0/N_1155 ));
    NOR2A \modulator_0/clock_counter_RNO[0]  (.A(AND2_0_Y), .B(
        \modulator_0/clock_counter[0]_net_1 ), .Y(\modulator_0/N_121 ));
    NOR2B \data_source_0/tag_data_buf_5_RNO[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_5[6]_net_1 ), .Y(
        \data_source_0/tag_data_buf_5_4[7] ));
    AOI1 \main_clock_0/counter_RNO[0]  (.A(\main_clock_0/counter14_4 ), 
        .B(\main_clock_0/counter14_3 ), .C(
        \main_clock_0/counter[0]_net_1 ), .Y(
        \main_clock_0/counter_3[0] ));
    NOR2B \data_source_0/output_data_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_5[7]_net_1 ), .Y(
        \data_source_0/output_data_23[4] ));
    XNOR2 \baseband_signal_0/tag_data_output_1[3]  (.A(
        main_clock_0_clock_out), .B(\data_source_0_output_data_0[3] ), 
        .Y(\baseband_signal_0_tag_data_output[3] ));
    IOPAD_TRI \output_signal_pad[19]/U0/U0  (.D(
        \output_signal_pad[19]/U0/NET1 ), .E(
        \output_signal_pad[19]/U0/NET2 ), .PAD(output_signal[19]));
    XAI1 \data_source_0/counter_RNO[1]  (.A(
        \data_source_0/counter_i_0[0] ), .B(
        \data_source_0/counter_i_0[1] ), .C(modulator_0_output_signal), 
        .Y(\data_source_0/N_26 ));
    IOTRI_OB_EB \output_signal_pad[6]/U0/U1  (.D(\output_signal_c[6] ), 
        .E(VCC), .DOUT(\output_signal_pad[6]/U0/NET1 ), .EOUT(
        \output_signal_pad[6]/U0/NET2 ));
    XA1 \modulator_0/counter_RNO[1]  (.A(
        \modulator_0/counter[0]_net_1 ), .B(
        \modulator_0/counter[1]_net_1 ), .C(
        \modulator_0/counter_0_sqmuxa ), .Y(\modulator_0/counter_n1 ));
    OR2B \data_source_0/counter_RNO[0]  (.A(
        \data_source_0/counter_i_0[0] ), .B(modulator_0_output_signal), 
        .Y(\data_source_0/counter_n0 ));
    AO1 \switching_circuit_0/un30_out_signal_switch_RNIOQ311  (.A(
        \switching_circuit_0/un33_out_signal_switch_0_net_1 ), .B(
        \baseband_signal_0_tag_data_output[3] ), .C(
        \switching_circuit_0/un30_out_signal_switch_net_1 ), .Y(
        \output_signal_c[3] ));
    NOR2 \modulator_0/counter_RNITMOV[2]  (.A(
        \modulator_0/counter[2]_net_1 ), .B(
        \modulator_0/counter[3]_net_1 ), .Y(\modulator_0/counter23_2 ));
    XAI1 \data_source_0/counter_RNO[3]  (.A(
        \data_source_0/counter_i_0[3] ), .B(\data_source_0/N_32 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/N_22 ));
    XA1 \modulator_0/clock_counter_RNO[10]  (.A(
        \modulator_0/clock_counter_c9 ), .B(\modulator_0/un6lto10 ), 
        .C(AND2_0_Y), .Y(\modulator_0/clock_counter_n10 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_8[1]  (.A(
        \data_source_0/N_231_mux ), .B(\data_source_0/N_1141 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_1142 ));
    AX1A \data_source_0/tag_control_sig_1_RNO_15[6]  (.A(
        \data_source_0/data_index_0[7]_net_1 ), .B(
        \data_source_0/data_index_0[3]_net_1 ), .C(
        \data_source_0/data_index_0[6]_net_1 ), .Y(
        \data_source_0/N_187 ));
    DFN1E1P0 \data_source_0/tag_data_buf_7[1]  (.D(
        \data_source_0/tag_data_buf_7_4[1] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_7[1]_net_1 ));
    AXOI4 \data_source_0/tag_control_sig_1_RNO_19[4]  (.A(
        \data_source_0/data_index_0[3]_net_1 ), .B(
        \data_source_0/data_index_0[7]_net_1 ), .C(
        \data_source_0/data_index_0[6]_net_1 ), .Y(
        \data_source_0/N_144 ));
    DFN1C0 \data_source_0/data_index[1]  (.D(
        \data_source_0/data_index_4[1] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index_0[1] ));
    OR3 \modulator_0/output_signal_RNO_12  (.A(
        \modulator_0/clock_counter[3]_net_1 ), .B(
        \modulator_0/clock_counter[2]_net_1 ), .C(
        \modulator_0/un6lt4_2 ), .Y(\modulator_0/un6lto4 ));
    DFN1E1C0 \modulator_0/clock_counter[8]  (.D(
        \modulator_0/clock_counter_n8 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[8]_net_1 ));
    IOTRI_OB_EB \output_signal_pad[2]/U0/U1  (.D(\output_signal_c[2] ), 
        .E(VCC), .DOUT(\output_signal_pad[2]/U0/NET1 ), .EOUT(
        \output_signal_pad[2]/U0/NET2 ));
    XOR2 \data_source_0/un3_trigger_counter_I_14  (.A(
        \data_source_0/N_4 ), .B(
        \data_source_0/trigger_counter[5]_net_1 ), .Y(
        \data_source_0/I_14 ));
    DFN1E1P0 \data_source_0/tag_data_buf_7[0]  (.D(
        \data_source_0/tag_data_buf_7_4[0] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_7[0]_net_1 ));
    DFN1E1P0 \data_source_0/tag_data_buf_3[0]  (.D(
        \data_source_0/tag_data_buf_3_4[0] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_3[0]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_7[3]  (.D(
        \data_source_0/tag_data_buf_7_4[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_7[3]_net_1 ));
    OAI1 \data_source_0/tag_control_sig_1_RNO_14[1]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(\data_source_0/N_229 )
        , .C(\data_source_0/data_index[6]_net_1 ), .Y(
        \data_source_0/N_231_mux ));
    MX2A \data_source_0/tag_control_sig_1_RNO_1[1]  (.A(
        \data_source_0/N_1154 ), .B(\data_source_0/N_1161 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_1162 ));
    DFN1P0 \data_source_0/counter[3]  (.D(\data_source_0/N_22 ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[3] ));
    MX2A \data_source_0/tag_control_sig_1_RNO_14[3]  (.A(
        \data_source_0/N_1126 ), .B(\data_source_0/N_104 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_105 ));
    NOR3 \data_source_0/data_index_0_RNIST7O[3]  (.A(
        \data_source_0/data_index_0[3]_net_1 ), .B(
        \data_source_0/data_index_0[6]_net_1 ), .C(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_1132 ));
    NOR3C \modulator_0/clock_counter_RNO_0[15]  (.A(AND2_0_Y), .B(
        \modulator_0/clock_counter[14]_net_1 ), .C(
        \modulator_0/clock_counter_c13 ), .Y(\modulator_0/N_89 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_10[7]  (.A(
        \data_source_0/N_209 ), .B(\data_source_0/N_204 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_210 )
        );
    AXO3 \data_source_0/data_index_0_RNITS4N_2[7]  (.A(
        \data_source_0/data_index_0[3]_net_1 ), .B(
        \data_source_0/data_index_0[7]_net_1 ), .C(
        \data_source_0/data_index_0[6]_net_1 ), .Y(
        \data_source_0/N_1127 ));
    IOTRI_OB_EB \output_signal_pad[1]/U0/U1  (.D(\output_signal_c[1] ), 
        .E(VCC), .DOUT(\output_signal_pad[1]/U0/NET1 ), .EOUT(
        \output_signal_pad[1]/U0/NET2 ));
    OR2 \data_source_0/counter_RNIUS042[6]  (.A(\data_source_0/N_35 ), 
        .B(\data_source_0/counter_i_0[6] ), .Y(\data_source_0/N_36 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_1[3]  (.A(
        \data_source_0/N_120 ), .B(\data_source_0/N_126 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_127 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_10[1]  (.A(
        \data_source_0/N_1149 ), .B(\data_source_0/N_1151 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_1152 ));
    NOR2B \data_source_0/output_data_RNO[0]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[7]_net_1 ), .Y(
        \data_source_0/output_data_23[0] ));
    DFN1E1C0 \data_source_0/output_data[6]  (.D(
        \data_source_0/output_data_23[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0_output_data_0[6] ));
    DFN1C0 \data_source_0/trigger_counter[5]  (.D(\data_source_0/I_14 )
        , .CLK(modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/trigger_counter[5]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNIB3OL[10]  (.A(
        \modulator_0/clock_counter_c9 ), .B(\modulator_0/un6lto10 ), 
        .Y(\modulator_0/clock_counter_c10 ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_16[3]  (.A(
        \data_source_0/N_229 ), .B(\data_source_0/data_index[3]_net_1 )
        , .Y(\data_source_0/N_228_mux ));
    OR2A \data_source_0/tag_data_buf_7_RNO[1]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_7[0]_net_1 ), .Y(
        \data_source_0/tag_data_buf_7_4[1] ));
    NOR2B \switching_circuit_0/un4_out_signal_switch_0  (.A(
        \data_source_0_tag_control_sig[0] ), .B(
        modulator_0_output_signal), .Y(
        \switching_circuit_0/un4_out_signal_switch_0_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_2[4]  (.A(
        \data_source_0/N_131 ), .B(\data_source_0/N_134 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_135 ));
    OA1 \data_source_0/data_index_RNIVRGG[6]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .C(
        \data_source_0/data_index_0[7]_net_1 ), .Y(
        \data_source_0/N_1137 ));
    DFN1E1C0 \modulator_0/clock_counter[7]  (.D(
        \modulator_0/clock_counter_n7 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[7]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_6[3]  (.D(
        \data_source_0/tag_data_buf_6_4[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_6[3]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_1[6]  (.D(
        \data_source_0/tag_data_buf_1_4[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[6]_net_1 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_14[6]  (.A(
        \data_source_0/N_229 ), .B(
        \data_source_0/data_index_0[6]_net_1 ), .S(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/N_234_mux ));
    DFN1E1C0 \data_source_0/tag_data_buf_1[7]  (.D(
        \data_source_0/tag_data_buf_1_4[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[7]_net_1 ));
    AO1B \data_source_0/counter_RNIK0AI3[1]  (.A(
        \data_source_0/output_data_1_sqmuxa_i_a3_4 ), .B(
        \data_source_0/N_87 ), .C(modulator_0_output_signal), .Y(
        \data_source_0/counter_RNIK0AI3[1]_net_1 ));
    AX1C \data_source_0/un1_data_index_I_34  (.A(
        \data_source_0/DWACT_ADD_CI_0_g_array_11[0] ), .B(
        \data_source_0/data_index[6]_net_1 ), .C(
        \data_source_0/data_index[7]_net_1 ), .Y(\data_source_0/I_34 ));
    DFN1P0 \data_source_0/counter[1]  (.D(\data_source_0/N_26 ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[1] ));
    NOR2B \modulator_0/counter_RNO[2]  (.A(
        \modulator_0/counter_0_sqmuxa ), .B(
        \modulator_0/counter_n2_tz ), .Y(\modulator_0/counter_n2 ));
    AO1A \data_source_0/counter_RNO_0[9]  (.A(
        \data_source_0/counter[9]_net_1 ), .B(\data_source_0/N_38 ), 
        .C(\data_source_0/N_68 ), .Y(\data_source_0/counter_n9_i_0 ));
    NOR3B \data_source_0/counter_RNO[9]  (.A(\data_source_0/N_39 ), .B(
        modulator_0_output_signal), .C(\data_source_0/counter_n9_i_0 ), 
        .Y(\data_source_0/N_10 ));
    DFN1E1C0 \data_source_0/tag_data_buf_7[4]  (.D(
        \data_source_0/tag_data_buf_7_4[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_7[4]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_10[5]  (.A(
        \data_source_0/N_1138 ), .B(\data_source_0/N_166 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_167 )
        );
    AND3 \main_clock_0/un5_counter_1_I_18  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/counter[4]_net_1 ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[2] ));
    NOR2B \switching_circuit_0/un13_out_signal_switch_0  (.A(
        \data_source_0_tag_control_sig[1] ), .B(
        modulator_0_output_signal), .Y(
        \switching_circuit_0/un13_out_signal_switch_0_net_1 ));
    XOR2 \main_clock_0/un5_counter_1_I_20  (.A(\main_clock_0/N_2 ), .B(
        \main_clock_0/counter[7]_net_1 ), .Y(\main_clock_0/I_20_0 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_14[5]  (.A(
        \data_source_0/N_1166 ), .B(\data_source_0/N_156 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_157 ));
    CLKINT \main_clock_0/clock_out_RNIG44  (.A(
        \main_clock_0/clock_out_i ), .Y(main_clock_0_clock_out));
    DFN1C0 \main_clock_0/counter[4]  (.D(\main_clock_0/I_12_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[4]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_6[0]  (.A(
        \data_source_0/N_229_mux ), .B(\data_source_0/N_9_0 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_10_0 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_3[1]  (.A(
        \data_source_0/N_1142 ), .B(\data_source_0/N_1145 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/N_1146 ));
    MX2A \data_source_0/tag_control_sig_1_RNO[4]  (.A(
        \data_source_0/N_142 ), .B(\data_source_0/N_154 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_2[4] ));
    OR2 \modulator_0/output_signal_RNO_7  (.A(
        \modulator_0/clock_counter[5]_net_1 ), .B(
        \modulator_0/clock_counter[4]_net_1 ), .Y(
        \modulator_0/un5lto5 ));
    DFN1E1C0 \data_source_0/tag_data_buf_1[4]  (.D(
        \data_source_0/tag_data_buf_1_4[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[4]_net_1 ));
    MX2B \data_source_0/data_index_1_RNIISQU[5]  (.A(
        \data_source_0/N_49 ), .B(\data_source_0/N_25 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_50 ));
    DFN1E1C0 \modulator_0/clock_counter[9]  (.D(
        \modulator_0/clock_counter_n9 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/un6lto9 ));
    DFN1E1C0 \data_source_0/tag_data_buf_7[7]  (.D(
        \data_source_0/tag_data_buf_7_4[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_7[7]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_3_RNO[3]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[2]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[3] ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[5]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[6] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_4[3]  (.A(
        \data_source_0/N_118 ), .B(\data_source_0/N_119 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_120 ));
    DFN1C0 \data_source_0/trigger_counter[3]  (.D(
        \data_source_0/trigger_counter_3[3] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/trigger_counter[3]_net_1 ));
    NOR3 \data_source_0/data_index_0_RNITS4N_0[7]  (.A(
        \data_source_0/data_index_0[3]_net_1 ), .B(
        \data_source_0/data_index_0[6]_net_1 ), .C(
        \data_source_0/data_index_0[7]_net_1 ), .Y(
        \data_source_0/N_15 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_6[2]  (.A(
        \data_source_0/N_1163 ), .B(\data_source_0/N_232_mux ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/i5_mux ));
    IOPAD_TRI \output_signal_pad[3]/U0/U0  (.D(
        \output_signal_pad[3]/U0/NET1 ), .E(
        \output_signal_pad[3]/U0/NET2 ), .PAD(output_signal[3]));
    XA1A \data_source_0/counter_RNO[11]  (.A(\data_source_0/N_40 ), .B(
        \data_source_0/counter[11]_net_1 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/counter_n11 ));
    NOR2B \modulator_0/clock_counter_RNI3U8B[8]  (.A(
        \modulator_0/clock_counter_c7 ), .B(
        \modulator_0/clock_counter[8]_net_1 ), .Y(
        \modulator_0/clock_counter_c8 ));
    NOR2B \data_source_0/data_index_RNIEP6D_0[5]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(\data_source_0/N_6_0 )
        , .Y(\data_source_0/N_19 ));
    OA1A \data_source_0/data_index_RNO[1]  (.A(
        \data_source_0/trigger_counter13 ), .B(
        \data_source_0/N_238_mux ), .C(\data_source_0/I_30 ), .Y(
        \data_source_0/data_index_4[1] ));
    MX2A \data_source_0/tag_control_sig_1_RNO_8[0]  (.A(
        \data_source_0/N_23 ), .B(\data_source_0/N_27 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_28 ));
    OR2A \data_source_0/tag_data_buf_2_RNO[1]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[0]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[1] ));
    OR2A \data_source_0/tag_data_buf_6_RNO[1]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_6[0]_net_1 ), .Y(
        \data_source_0/tag_data_buf_6_4[1] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_18[2]  (.A(
        \data_source_0/N_6_0 ), .B(\data_source_0/N_1126 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_95 ));
    NOR2A \data_source_0/data_index_RNILPJH_2[5]  (.A(
        \data_source_0/N_12_0 ), .B(
        \data_source_0/data_index[5]_net_1 ), .Y(\data_source_0/N_114 )
        );
    XA1A \data_source_0/counter_RNO[12]  (.A(\data_source_0/N_41 ), .B(
        \data_source_0/counter[12]_net_1 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/counter_n12 ));
    AX1C \data_source_0/un3_trigger_counter_I_12  (.A(
        \data_source_0/trigger_counter[3]_net_1 ), .B(
        \data_source_0/DWACT_FINC_E[0] ), .C(
        \data_source_0/trigger_counter[4]_net_1 ), .Y(
        \data_source_0/I_12 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_10[2]  (.A(
        \data_source_0/N_94 ), .B(\data_source_0/N_95 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_96 ));
    OAI1 \data_source_0/tag_control_sig_1_RNO_12[0]  (.A(
        \data_source_0/data_index_0[6]_net_1 ), .B(
        \data_source_0/N_229 ), .C(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/N_229_mux ));
    DFN1E1C0 \data_source_0/tag_data_buf_5[5]  (.D(
        \data_source_0/tag_data_buf_5_4[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_5[5]_net_1 ));
    NOR2A \modulator_0/counter_RNO[0]  (.A(
        \modulator_0/counter_0_sqmuxa ), .B(
        \modulator_0/counter[0]_net_1 ), .Y(\modulator_0/counter_n0 ));
    DFN1C0 \modulator_0/counter[5]  (.D(\modulator_0/counter_n5 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/counter[5]_net_1 ));
    OA1 \data_source_0/counter_RNO_0[4]  (.A(
        \data_source_0/counter_i_0[3] ), .B(\data_source_0/N_32 ), .C(
        \data_source_0/counter_i_0[4] ), .Y(\data_source_0/N_74 ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[6]  (.D(
        \data_source_0/tag_data_buf_2_4[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[6]_net_1 ));
    AO1 \switching_circuit_0/out_signal_switch_1[4]  (.A(
        \switching_circuit_0/un43_out_signal_switch_0_net_1 ), .B(
        \baseband_signal_0_tag_data_output[4] ), .C(
        \switching_circuit_0/un40_out_signal_switch_net_1 ), .Y(
        \output_signal_c[4] ));
    NOR2B \data_source_0/data_index_RNIFQ6D[5]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(
        \data_source_0/N_1126 ), .Y(\data_source_0/N_47 ));
    IOPAD_TRI \output_signal_pad[17]/U0/U0  (.D(
        \output_signal_pad[17]/U0/NET1 ), .E(
        \output_signal_pad[17]/U0/NET2 ), .PAD(output_signal[17]));
    XOR2 \data_source_0/un3_trigger_counter_I_20  (.A(
        \data_source_0/N_2 ), .B(
        \data_source_0/trigger_counter[7]_net_1 ), .Y(
        \data_source_0/I_20 ));
    DFN1E1P0 \data_source_0/tag_data_buf_5[0]  (.D(
        \data_source_0/tag_data_buf_5_4[0] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_5[0]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_7_RNO[5]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_7[4]_net_1 ), .Y(
        \data_source_0/tag_data_buf_7_4[5] ));
    AX1C \data_source_0/un3_trigger_counter_I_7  (.A(
        \data_source_0/trigger_counter[1]_net_1 ), .B(
        \data_source_0/trigger_counter[0]_net_1 ), .C(
        \data_source_0/trigger_counter[2]_net_1 ), .Y(
        \data_source_0/I_7 ));
    AXO7 \data_source_0/tag_control_sig_1_RNO_13[7]  (.A(
        \data_source_0/data_index_0[6]_net_1 ), .B(
        \data_source_0/data_index_0[7]_net_1 ), .C(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/N_195 ));
    NOR2 \data_source_0/data_index_RNILPJH_4[5]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(
        \data_source_0/N_1150 ), .Y(\data_source_0/N_1164 ));
    NOR2B \switching_circuit_0/un53_out_signal_switch_0  (.A(
        \data_source_0_tag_control_sig[5] ), .B(
        modulator_0_output_signal), .Y(
        \switching_circuit_0/un53_out_signal_switch_0_net_1 ));
    AXO7 \data_source_0/data_index_RNIGR6D_3[6]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/data_index[7]_net_1 ), .C(
        \data_source_0/data_index[6]_net_1 ), .Y(\data_source_0/N_49 ));
    IOPAD_IN \mac_control_signal_pad/U0/U0  (.PAD(mac_control_signal), 
        .Y(\mac_control_signal_pad/U0/NET1 ));
    NOR3C \modulator_0/counter_RNINTKF1[2]  (.A(
        \modulator_0/counter[1]_net_1 ), .B(
        \modulator_0/counter[0]_net_1 ), .C(
        \modulator_0/counter[2]_net_1 ), .Y(\modulator_0/counter_c2 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_13[6]  (.A(
        \data_source_0/N_49 ), .B(\data_source_0/N_1127 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_177 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_0[5]  (.A(
        \data_source_0/N_160 ), .B(\data_source_0/N_164 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_165 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_12[3]  (.A(
        \data_source_0/N_121 ), .B(\data_source_0/N_1144 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_122 )
        );
    OR2A \data_source_0/tag_data_buf_3_RNO[0]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[7]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[0] ));
    DFN1C0 \data_source_0/counter[8]  (.D(\data_source_0/N_12 ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[8]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_6[0]  (.D(
        \data_source_0/output_data_23[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_6[0]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_1[5]  (.D(
        \data_source_0/tag_data_buf_1_4[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[5]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_1[2]  (.A(
        \data_source_0/N_97 ), .B(\data_source_0/N_101 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_102 ));
    XA1B \data_source_0/trigger_counter_RNO[1]  (.A(
        \data_source_0/trigger_counter[0]_net_1 ), .B(
        \data_source_0/trigger_counter[1]_net_1 ), .C(
        \data_source_0/trigger_counter13 ), .Y(
        \data_source_0/trigger_counter_3[1] ));
    MX2A \data_source_0/tag_control_sig_1_RNO_2[3]  (.A(
        \data_source_0/N_106 ), .B(\data_source_0/N_108 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_109 ));
    NOR2 \main_clock_0/counter_RNIF4VS[1]  (.A(
        \main_clock_0/counter[4]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .Y(
        \main_clock_0/counter14_2 ));
    AO1 \modulator_0/output_signal_RNO_1  (.A(\modulator_0/un6lt11 ), 
        .B(\modulator_0/un6lto11 ), .C(\modulator_0/un6lto12 ), .Y(
        \modulator_0/un6lt15 ));
    NOR2B \data_source_0/tag_data_buf_8_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_8[3]_net_1 ), .Y(
        \data_source_0/tag_data_buf_8_4[4] ));
    IOTRI_OB_EB \output_signal_pad[11]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[11]/U0/NET1 ), .EOUT(
        \output_signal_pad[11]/U0/NET2 ));
    MX2B \data_source_0/tag_control_sig_1_RNO_4[1]  (.A(
        \data_source_0/N_1152 ), .B(\data_source_0/N_1153 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/N_1154 ));
    OA1A \data_source_0/data_index_RNITOHA4[4]  (.A(
        \data_source_0/trigger_counter13 ), .B(
        \data_source_0/N_238_mux ), .C(\data_source_0/I_31 ), .Y(
        \data_source_0/data_index_4[6] ));
    IOPAD_TRI \output_signal_pad[18]/U0/U0  (.D(
        \output_signal_pad[18]/U0/NET1 ), .E(
        \output_signal_pad[18]/U0/NET2 ), .PAD(output_signal[18]));
    DFN1E1 \data_source_0/tag_control_sig_1[6]  (.D(
        \data_source_0/tag_control_sig_2[6] ), .CLK(
        main_clock_0_clock_out), .E(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ), .Q(
        \data_source_0_tag_control_sig[6] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_4[7]  (.A(
        \data_source_0/N_210 ), .B(\data_source_0/N_212 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_213 ));
    MIN3 \data_source_0/data_index_RNIGR6D_1[6]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .C(
        \data_source_0/data_index[7]_net_1 ), .Y(
        \data_source_0/N_1166 ));
    IOTRI_OB_EB \signal_into_switch_pad/U0/U1  (.D(VCC), .E(VCC), 
        .DOUT(\signal_into_switch_pad/U0/NET1 ), .EOUT(
        \signal_into_switch_pad/U0/NET2 ));
    IOPAD_TRI \output_signal_pad[10]/U0/U0  (.D(
        \output_signal_pad[10]/U0/NET1 ), .E(
        \output_signal_pad[10]/U0/NET2 ), .PAD(output_signal[10]));
    IOPAD_TRI \output_signal_pad[13]/U0/U0  (.D(
        \output_signal_pad[13]/U0/NET1 ), .E(
        \output_signal_pad[13]/U0/NET2 ), .PAD(output_signal[13]));
    DFN1C0 \main_clock_0/counter[7]  (.D(\main_clock_0/I_20_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[7]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_0[2]  (.A(
        \data_source_0/i4_mux ), .B(\data_source_0/N_89 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_1168 ));
    DFN1E1C0 \data_source_0/tag_data_buf_6[7]  (.D(
        \data_source_0/tag_data_buf_6_4[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_6[7]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_7_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_7[3]_net_1 ), .Y(
        \data_source_0/tag_data_buf_7_4[4] ));
    DFN1E1C0 \data_source_0/tag_data_buf_8[2]  (.D(
        \data_source_0/tag_data_buf_8_4[2] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_8[2]_net_1 ));
    AOI1B \modulator_0/output_signal_RNO  (.A(\modulator_0/un6lto15_1 )
        , .B(\modulator_0/un6lt15 ), .C(
        \modulator_0/output_signal_1_sqmuxa_0 ), .Y(
        \modulator_0/output_signal_1_sqmuxa_0_0 ));
    DFN1E1P0 \data_source_0/tag_data_buf_5[2]  (.D(
        \data_source_0/tag_data_buf_5_4[2] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_5[2]_net_1 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_18[3]  (.A(
        \data_source_0/N_12_0 ), .B(\data_source_0/N_8_0 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_123 ));
    MX2 \data_source_0/tag_control_sig_1_RNO[2]  (.A(
        \data_source_0/N_1168 ), .B(\data_source_0/N_102 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_2[2] ));
    NOR2B \data_source_0/tag_data_buf_6_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_6[3]_net_1 ), .Y(
        \data_source_0/tag_data_buf_6_4[4] ));
    OA1A \data_source_0/data_index_RNO[0]  (.A(
        \data_source_0/trigger_counter13 ), .B(
        \data_source_0/N_238_mux ), .C(
        \data_source_0/DWACT_ADD_CI_0_partial_sum[0] ), .Y(
        \data_source_0/data_index_4[0] ));
    IOIN_IB \trigger_signal_pad/U0/U1  (.YIN(
        \trigger_signal_pad/U0/NET1 ), .Y(trigger_signal_c));
    MX2A \data_source_0/tag_control_sig_1_RNO_0[7]  (.A(
        \data_source_0/N_199 ), .B(\data_source_0/N_207 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_208 ));
    NOR2B \data_source_0/data_index_RNILPJH[5]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(
        \data_source_0/N_12_0 ), .Y(\data_source_0/N_130 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_3[7]  (.A(
        \data_source_0/N_203 ), .B(\data_source_0/N_206 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_207 ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[1]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[0]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[1] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_11[4]  (.A(
        \data_source_0/N_149 ), .B(\data_source_0/N_151 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_152 )
        );
    MX2 \data_source_0/tag_control_sig_1_RNO_16[2]  (.A(
        \data_source_0/N_8_0 ), .B(\data_source_0/N_6_0 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_92 ));
    XA1B \data_source_0/trigger_counter_RNO[3]  (.A(
        \data_source_0/N_6 ), .B(
        \data_source_0/trigger_counter[3]_net_1 ), .C(
        \data_source_0/trigger_counter13 ), .Y(
        \data_source_0/trigger_counter_3[3] ));
    NOR2B \data_source_0/tag_data_buf_8_RNI0GBJ[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_8[7]_net_1 ), .Y(
        \data_source_0/output_data_23[7] ));
    NOR2A \data_source_0/data_index_RNIEP6D_1[5]  (.A(
        \data_source_0/N_3_0 ), .B(\data_source_0/data_index[5]_net_1 )
        , .Y(\data_source_0/N_204 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_1[4]  (.A(
        \data_source_0/N_148 ), .B(\data_source_0/N_153 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_154 ));
    DFN1E1P0 \data_source_0/tag_data_buf_2[1]  (.D(
        \data_source_0/tag_data_buf_2_4[1] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[1]_net_1 ));
    XOR2 \main_clock_0/un5_counter_1_I_14  (.A(\main_clock_0/N_4 ), .B(
        \main_clock_0/counter[5]_net_1 ), .Y(\main_clock_0/I_14_0 ));
    IOTRI_OB_EB \output_signal_pad[3]/U0/U1  (.D(\output_signal_c[3] ), 
        .E(VCC), .DOUT(\output_signal_pad[3]/U0/NET1 ), .EOUT(
        \output_signal_pad[3]/U0/NET2 ));
    XA1 \modulator_0/clock_counter_RNO[13]  (.A(
        \modulator_0/clock_counter_c12 ), .B(
        \modulator_0/clock_counter[13]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n13 ));
    NOR2B \switching_circuit_0/un73_out_signal_switch_0  (.A(
        \data_source_0_tag_control_sig[7] ), .B(
        modulator_0_output_signal), .Y(
        \switching_circuit_0/un73_out_signal_switch_0_net_1 ));
    DFN1C0 \main_clock_0/counter[3]  (.D(\main_clock_0/I_9_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[3]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_7[6]  (.D(
        \data_source_0/tag_data_buf_7_4[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_7[6]_net_1 ));
    OR3 \modulator_0/output_signal_RNO_10  (.A(
        \modulator_0/clock_counter[13]_net_1 ), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(
        \modulator_0/clock_counter[14]_net_1 ), .Y(
        \modulator_0/un5lto15_3 ));
    AND3 \data_source_0/un3_trigger_counter_I_16  (.A(
        \data_source_0/DWACT_FINC_E[0] ), .B(
        \data_source_0/DWACT_FINC_E[1] ), .C(
        \data_source_0/trigger_counter[5]_net_1 ), .Y(
        \data_source_0/N_3 ));
    XA1 \modulator_0/counter_RNO[5]  (.A(
        \modulator_0/counter[5]_net_1 ), .B(\modulator_0/counter_45_0 )
        , .C(\modulator_0/counter_0_sqmuxa ), .Y(
        \modulator_0/counter_n5 ));
    DFN1E1C0 \data_source_0/tag_data_buf_5[7]  (.D(
        \data_source_0/tag_data_buf_5_4[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_5[7]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[3]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[4] ));
    XA1A \data_source_0/counter_RNO[10]  (.A(\data_source_0/N_39 ), .B(
        \data_source_0/counter[10]_net_1 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/counter_n10 ));
    XOR2 \data_source_0/un3_trigger_counter_I_17  (.A(
        \data_source_0/N_3 ), .B(
        \data_source_0/trigger_counter[6]_net_1 ), .Y(
        \data_source_0/I_17 ));
    NOR2B \data_source_0/tag_control_sig_1_RNO_13[2]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(
        \data_source_0/N_1150 ), .Y(\data_source_0/N_1163 ));
    DFN1C0 \data_source_0/data_index_0[5]  (.D(
        \data_source_0/data_index_4[5] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index_0[5]_net_1 ));
    AO1 \switching_circuit_0/out_signal_switch_1[6]  (.A(
        \switching_circuit_0/un63_out_signal_switch_0_net_1 ), .B(
        \baseband_signal_0_tag_data_output[6] ), .C(
        \switching_circuit_0/un60_out_signal_switch_net_1 ), .Y(
        \output_signal_c[6] ));
    NOR2B \data_source_0/tag_data_buf_2_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[1]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[2] ));
    DFN1E1P0 \data_source_0/tag_data_buf_4[2]  (.D(
        \data_source_0/tag_data_buf_4_4[2] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_4[2]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[4]  (.A(
        \modulator_0/clock_counter[4]_net_1 ), .B(
        \modulator_0/clock_counter_c3 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n4 ));
    NOR2B \data_source_0/tag_data_buf_2_RNO[3]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[2]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[3] ));
    IOTRI_OB_EB \output_signal_pad[16]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[16]/U0/NET1 ), .EOUT(
        \output_signal_pad[16]/U0/NET2 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_4[0]  (.A(
        \data_source_0/N_1130 ), .B(\data_source_0/N_230_mux ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/N_1131 ));
    OAI1 \data_source_0/data_index_RNIGR6D[6]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index[7]_net_1 ), .C(
        \data_source_0/data_index[3]_net_1 ), .Y(
        \data_source_0/N_1150 ));
    IOIN_IB \clock_pad/U0/U1  (.YIN(\clock_pad/U0/NET1 ), .Y(clock_c));
    NOR3C \data_source_0/data_index_RNI3E6D[2]  (.A(
        \data_source_0/data_index[2]_net_1 ), .B(
        \data_source_0/un25lto0 ), .C(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_237 )
        );
    DFN1C0 \data_source_0/data_index_0[3]  (.D(
        \data_source_0/data_index_4[3] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index_0[3]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_5[4]  (.D(
        \data_source_0/tag_data_buf_5_4[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_5[4]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_14[7]  (.A(
        \data_source_0/N_200 ), .B(\data_source_0/N_201 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_202 ));
    AX1C \main_clock_0/un5_counter_1_I_7  (.A(
        \main_clock_0/counter[1]_net_1 ), .B(
        \main_clock_0/counter[0]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(\main_clock_0/I_7_0 ));
    MX2C \data_source_0/data_index_0_RNIRNL71[5]  (.A(
        \data_source_0/N_21 ), .B(\data_source_0/N_8_0 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_162 ));
    NOR2A \modulator_0/counter_RNIBT613[4]  (.A(AND2_0_Y), .B(
        \modulator_0/counter19 ), .Y(\modulator_0/counter_0_sqmuxa ));
    NOR2B \data_source_0/tag_data_buf_4_RNO[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[6]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[7] ));
    NOR2 \data_source_0/tag_control_sig_1_RNO_17[4]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(\data_source_0/N_150 )
        , .Y(\data_source_0/N_151 ));
    NOR2B \data_source_0/tag_data_buf_3_RNO[5]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[4]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[5] ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_2[2]  (.A(
        \data_source_0/i5_mux ), .B(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/i4_mux ));
    DFN1E1C0 \modulator_0/clock_counter[6]  (.D(
        \modulator_0/clock_counter_n6 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/un5lto6 ));
    OR2A \data_source_0/counter_RNI4GC23[11]  (.A(
        \data_source_0/counter[11]_net_1 ), .B(\data_source_0/N_40 ), 
        .Y(\data_source_0/N_41 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_8[5]  (.A(
        \data_source_0/N_136 ), .B(\data_source_0/N_1129 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_161 )
        );
    MX2A \data_source_0/tag_control_sig_1_RNO_12[6]  (.A(
        \data_source_0/N_190 ), .B(\data_source_0/N_1126 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_191 )
        );
    XA1A \data_source_0/counter_RNO[15]  (.A(\data_source_0/N_44 ), .B(
        \data_source_0/counter[15]_net_1 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/counter_n15 ));
    DFN1P0 \data_source_0/counter[6]  (.D(\data_source_0/N_16 ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[6] ));
    MX2A \data_source_0/tag_control_sig_1_RNO_2[6]  (.A(
        \data_source_0/N_176 ), .B(\data_source_0/N_178 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_179 ));
    NOR2A \data_source_0/tag_control_sig_1_sqmuxa  (.A(reset_c), .B(
        modulator_0_output_signal), .Y(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ));
    OA1A \data_source_0/data_index_RNIEUAT3[4]  (.A(
        \data_source_0/trigger_counter13 ), .B(
        \data_source_0/N_238_mux ), .C(\data_source_0/I_27 ), .Y(
        \data_source_0/data_index_4[3] ));
    NOR2B \data_source_0/tag_data_buf_7_RNO[3]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_7[2]_net_1 ), .Y(
        \data_source_0/tag_data_buf_7_4[3] ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_8[3]  (.A(
        \data_source_0/N_110 ), .B(\data_source_0/data_index[1]_net_1 )
        , .Y(\data_source_0/N_111 ));
    XA1 \modulator_0/clock_counter_RNO[6]  (.A(
        \modulator_0/clock_counter_c5 ), .B(\modulator_0/un5lto6 ), .C(
        AND2_0_Y), .Y(\modulator_0/clock_counter_n6 ));
    NOR2B \data_source_0/tag_data_buf_3_RNO[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[6]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[7] ));
    XOR2 \data_source_0/un1_data_index_I_24  (.A(
        \data_source_0/un25lto0 ), .B(
        \data_source_0/data_index_0_sqmuxa ), .Y(
        \data_source_0/DWACT_ADD_CI_0_partial_sum[0] ));
    IOTRI_OB_EB \output_signal_pad[19]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[19]/U0/NET1 ), .EOUT(
        \output_signal_pad[19]/U0/NET2 ));
    AND3 \data_source_0/un3_trigger_counter_I_10  (.A(
        \data_source_0/trigger_counter[0]_net_1 ), .B(
        \data_source_0/trigger_counter[1]_net_1 ), .C(
        \data_source_0/trigger_counter[2]_net_1 ), .Y(
        \data_source_0/DWACT_FINC_E[0] ));
    DFN1E1C0 \modulator_0/output_signal  (.D(
        \modulator_0/output_signal_1_sqmuxa_0_0 ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(
        \modulator_0/output_signal_i ));
    MX2 \data_source_0/tag_control_sig_1_RNO_1[5]  (.A(
        \data_source_0/N_169 ), .B(\data_source_0/N_173 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_174 ));
    OR2A \data_source_0/counter_RNI9Q9Q1[5]  (.A(
        \data_source_0/counter[5]_net_1 ), .B(\data_source_0/N_34 ), 
        .Y(\data_source_0/N_35 ));
    DFN1C0 \main_clock_0/counter[5]  (.D(\main_clock_0/I_14_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[5]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[5]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[4]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[5] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_17[1]  (.A(
        \data_source_0/N_12_0 ), .B(\data_source_0/N_1126 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_1158 ));
    DFN1E1P0 \data_source_0/tag_data_buf_8[3]  (.D(
        \data_source_0/tag_data_buf_8_4[3] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_8[3]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_16[1]  (.A(
        \data_source_0/N_8_0 ), .B(\data_source_0/N_1150 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_1151 ));
    AND3 \main_clock_0/un5_counter_1_I_13  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/counter[3]_net_1 ), .C(
        \main_clock_0/counter[4]_net_1 ), .Y(\main_clock_0/N_4 ));
    AX1C \main_clock_0/un5_counter_1_I_12  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/DWACT_FINC_E[0] ), .C(
        \main_clock_0/counter[4]_net_1 ), .Y(\main_clock_0/I_12_0 ));
    NOR2B \modulator_0/clock_counter_RNID686[4]  (.A(
        \modulator_0/clock_counter_c3 ), .B(
        \modulator_0/clock_counter[4]_net_1 ), .Y(
        \modulator_0/clock_counter_c4 ));
    CLKINT \modulator_0/output_signal_RNI2QGD  (.A(
        \modulator_0/output_signal_i ), .Y(modulator_0_output_signal));
    XA1 \modulator_0/clock_counter_RNO[9]  (.A(
        \modulator_0/clock_counter_c8 ), .B(\modulator_0/un6lto9 ), .C(
        AND2_0_Y), .Y(\modulator_0/clock_counter_n9 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_14[4]  (.A(
        \data_source_0/N_8_0 ), .B(\data_source_0/N_138 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_139 ));
    CLKINT \data_source_0/counter_RNIK0AI3_0[1]  (.A(
        \data_source_0/counter_RNIK0AI3[1]_net_1 ), .Y(
        \data_source_0/N_29 ));
    AX1D \data_source_0/tag_control_sig_1_RNO_17[0]  (.A(
        \data_source_0/data_index_0[6]_net_1 ), .B(
        \data_source_0/data_index_0[7]_net_1 ), .C(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/N_1135 ));
    DFN1C0 \main_clock_0/counter[2]  (.D(\main_clock_0/I_7_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[2]_net_1 ));
    MX2 \data_source_0/data_index_1_RNIFPQU[5]  (.A(
        \data_source_0/N_8_0 ), .B(\data_source_0/N_12_0 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_13_0 ));
    NOR3A \modulator_0/counter_RNIUHHV1[5]  (.A(
        \modulator_0/counter23_2 ), .B(\modulator_0/counter[4]_net_1 ), 
        .C(\modulator_0/counter[5]_net_1 ), .Y(
        \modulator_0/counter23_2_0 ));
    DFN1E1P0 \data_source_0/tag_data_buf_3[1]  (.D(
        \data_source_0/tag_data_buf_3_4[1] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_3[1]_net_1 ));
    NOR3A \data_source_0/data_index_0_RNITS4N[7]  (.A(
        \data_source_0/data_index_0[7]_net_1 ), .B(
        \data_source_0/data_index_0[3]_net_1 ), .C(
        \data_source_0/data_index_0[6]_net_1 ), .Y(
        \data_source_0/N_21 ));
    NOR2A \data_source_0/counter_RNI94EJ[2]  (.A(
        \data_source_0/counter_i_0[2] ), .B(
        \data_source_0/counter[9]_net_1 ), .Y(
        \data_source_0/output_data_1_sqmuxa_i_a3_1 ));
    OR2 \modulator_0/output_signal_RNO_8  (.A(\modulator_0/un6lto10 ), 
        .B(\modulator_0/un6lto9 ), .Y(\modulator_0/un5lto15_2 ));
    DFN1C0 \data_source_0/trigger_counter[0]  (.D(\data_source_0/I_4 ), 
        .CLK(modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/trigger_counter[0]_net_1 ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_11[2]  (.A(
        \data_source_0/N_98 ), .B(\data_source_0/data_index[1]_net_1 ), 
        .Y(\data_source_0/N_99 ));
    DFN1C0 \data_source_0/trigger_counter[1]  (.D(
        \data_source_0/trigger_counter_3[1] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/trigger_counter[1]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_13[3]  (.A(
        \data_source_0/N_123 ), .B(\data_source_0/N_124 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_125 )
        );
    XOR2 \data_source_0/un1_data_index_I_30  (.A(
        \data_source_0/data_index[1]_net_1 ), .B(
        \data_source_0/DWACT_ADD_CI_0_TMP[0] ), .Y(
        \data_source_0/I_30 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_9[2]  (.A(
        \data_source_0/N_91 ), .B(\data_source_0/N_92 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_93 ));
    OR3B \data_source_0/counter_RNO[4]  (.A(\data_source_0/N_34 ), .B(
        modulator_0_output_signal), .C(\data_source_0/N_74 ), .Y(
        \data_source_0/N_20 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_16[6]  (.A(
        \data_source_0/N_15 ), .B(\data_source_0/N_3_0 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_190 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_5[0]  (.A(
        \data_source_0/N_1133 ), .B(\data_source_0/N_1139 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/N_1140 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_1[7]  (.A(
        \data_source_0/N_213 ), .B(\data_source_0/N_217 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_218 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_18[7]  (.A(
        \data_source_0/N_25 ), .B(\data_source_0/N_214 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_215 ));
    NOR3B \switching_circuit_0/un1_out_signal_switch  (.A(
        \data_source_0_tag_control_sig[0] ), .B(main_clock_0_clock_out)
        , .C(modulator_0_output_signal), .Y(
        \switching_circuit_0/un1_out_signal_switch_net_1 ));
    DFN1C0 \modulator_0/counter[4]  (.D(\modulator_0/counter_n4 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/counter[4]_net_1 ));
    OR2 \data_source_0/counter_RNIGO4T[2]  (.A(\data_source_0/N_31 ), 
        .B(\data_source_0/counter_i_0[2] ), .Y(\data_source_0/N_32 ));
    MX2 \data_source_0/data_index_1_RNIRPO81[5]  (.A(
        \data_source_0/N_15 ), .B(\data_source_0/N_6_0 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_1159 ));
    AX1C \modulator_0/clock_counter_RNO[15]  (.A(AND2_0_Y), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(\modulator_0/N_89 ), 
        .Y(\modulator_0/clock_counter_n15 ));
    NOR2B \modulator_0/clock_counter_RNIKM0A[7]  (.A(
        \modulator_0/clock_counter_c6 ), .B(
        \modulator_0/clock_counter[7]_net_1 ), .Y(
        \modulator_0/clock_counter_c7 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_16[5]  (.A(
        \data_source_0/data_index_0[3]_net_1 ), .B(
        \data_source_0/data_index_0[6]_net_1 ), .S(
        \data_source_0/data_index_0[7]_net_1 ), .Y(
        \data_source_0/N_156 ));
    AXOI3 \data_source_0/tag_control_sig_1_RNO_13[4]  (.A(
        \data_source_0/data_index_0[7]_net_1 ), .B(
        \data_source_0/N_6_0 ), .C(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_233_mux ));
    MX2 \data_source_0/tag_control_sig_1_RNO_11[3]  (.A(
        \data_source_0/N_91 ), .B(\data_source_0/N_1123 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_119 )
        );
    NOR3C \modulator_0/output_signal_RNO_0  (.A(
        \modulator_0/clock_counter[13]_net_1 ), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(
        \modulator_0/clock_counter[14]_net_1 ), .Y(
        \modulator_0/un6lto15_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_3[4]  (.D(
        \data_source_0/tag_data_buf_3_4[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_3[4]_net_1 ));
    NOR2B \modulator_0/counter_RNO[4]  (.A(
        \modulator_0/counter_0_sqmuxa ), .B(
        \modulator_0/counter_n4_tz ), .Y(\modulator_0/counter_n4 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_3[0]  (.A(
        \data_source_0/N_1125 ), .B(\data_source_0/N_28 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/N_1128 ));
    OR2A \data_source_0/tag_data_buf_4_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[1]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[2] ));
    AND2 \data_source_0/un3_trigger_counter_I_15  (.A(
        \data_source_0/trigger_counter[3]_net_1 ), .B(
        \data_source_0/trigger_counter[4]_net_1 ), .Y(
        \data_source_0/DWACT_FINC_E[1] ));
    NOR2B \data_source_0/tag_data_buf_5_RNO[3]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_5[2]_net_1 ), .Y(
        \data_source_0/tag_data_buf_5_4[3] ));
    XA1 \modulator_0/counter_RNO[3]  (.A(\modulator_0/counter_c2 ), .B(
        \modulator_0/counter[3]_net_1 ), .C(
        \modulator_0/counter_0_sqmuxa ), .Y(\modulator_0/counter_n3 ));
    DFN1C0 \modulator_0/counter[0]  (.D(\modulator_0/counter_n0 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/counter[0]_net_1 ));
    XA1A \data_source_0/counter_RNO[14]  (.A(\data_source_0/N_43 ), .B(
        \data_source_0/counter[14]_net_1 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/counter_n14 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_5[4]  (.A(
        \data_source_0/N_1125 ), .B(\data_source_0/N_152 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_153 ));
    NOR2B \data_source_0/tag_data_buf_2_RNO[5]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[4]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[5] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_11[5]  (.A(
        \data_source_0/N_149 ), .B(\data_source_0/N_6_0 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_168 )
        );
    XA1 \modulator_0/clock_counter_RNO[14]  (.A(
        \modulator_0/clock_counter_c13 ), .B(
        \modulator_0/clock_counter[14]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n14 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_5[7]  (.A(
        \data_source_0/N_230_mux ), .B(\data_source_0/N_216 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(\data_source_0/N_217 )
        );
    OR2A \data_source_0/tag_data_buf_7_RNO[0]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_7[7]_net_1 ), .Y(
        \data_source_0/tag_data_buf_7_4[0] ));
    MX2A \data_source_0/tag_control_sig_1_RNO_12[7]  (.A(
        \data_source_0/N_1123 ), .B(\data_source_0/N_215 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_216 )
        );
    MX2 \data_source_0/tag_control_sig_1_RNO_2[1]  (.A(
        \data_source_0/N_48 ), .B(\data_source_0/N_51 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(\data_source_0/N_52 ));
    NOR3C \data_source_0/counter_RNI43142[1]  (.A(
        \data_source_0/output_data_1_sqmuxa_i_a3_1 ), .B(
        \data_source_0/N_90 ), .C(
        \data_source_0/output_data_1_sqmuxa_i_a3_2 ), .Y(
        \data_source_0/output_data_1_sqmuxa_i_a3_4 ));
    AND3 \data_source_0/un3_trigger_counter_I_8  (.A(
        \data_source_0/trigger_counter[0]_net_1 ), .B(
        \data_source_0/trigger_counter[1]_net_1 ), .C(
        \data_source_0/trigger_counter[2]_net_1 ), .Y(
        \data_source_0/N_6 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_13[0]  (.A(
        \data_source_0/N_7_0 ), .B(\data_source_0/N_8_0 ), .S(
        \data_source_0/data_index_0[5]_net_1 ), .Y(
        \data_source_0/N_9_0 ));
    NOR2B \data_source_0/tag_data_buf_6_RNO[5]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_6[4]_net_1 ), .Y(
        \data_source_0/tag_data_buf_6_4[5] ));
    DFN1C0 \data_source_0/data_index[6]  (.D(
        \data_source_0/data_index_4[6] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[6]_net_1 ));
    AND3 \main_clock_0/un5_counter_1_I_16  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/DWACT_FINC_E[1] ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(\main_clock_0/N_3 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_15[2]  (.A(
        \data_source_0/N_25 ), .B(\data_source_0/N_1166 ), .S(
        \data_source_0/data_index_1[5]_net_1 ), .Y(
        \data_source_0/N_1167 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_3[2]  (.A(
        \data_source_0/N_1165 ), .B(\data_source_0/N_88 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(\data_source_0/N_89 ));
    MX2B \data_source_0/tag_control_sig_1_RNO_6[3]  (.A(
        \data_source_0/N_105 ), .B(\data_source_0/N_91 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_106 )
        );
    NOR2B \data_source_0/data_index_RNIDVP8[6]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .Y(\data_source_0/N_25 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_4[5]  (.A(
        \data_source_0/N_167 ), .B(\data_source_0/N_168 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_169 ));
    NOR2B \data_source_0/tag_data_buf_2_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[3]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[4] ));
    AND3 \main_clock_0/un5_counter_1_I_10  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[0] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_7[4]  (.A(
        \data_source_0/N_233_mux ), .B(\data_source_0/N_1155 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_134 )
        );
    DFN1C0 \data_source_0/counter[13]  (.D(\data_source_0/counter_n13 )
        , .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[13]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[4]  (.D(
        \data_source_0/tag_data_buf_2_4[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[4]_net_1 ));
    NOR3C \data_source_0/data_index_1_RNI0O0M[5]  (.A(
        \data_source_0/data_index[1]_net_1 ), .B(
        \data_source_0/data_index_1[5]_net_1 ), .C(
        \data_source_0/N_8_0 ), .Y(\data_source_0/N_230_mux ));
    XNOR2 \baseband_signal_0/tag_data_output_1[7]  (.A(
        main_clock_0_clock_out), .B(\data_source_0_output_data_0[7] ), 
        .Y(\baseband_signal_0_tag_data_output[7] ));
    IOPAD_TRI \output_signal_pad[8]/U0/U0  (.D(
        \output_signal_pad[8]/U0/NET1 ), .E(
        \output_signal_pad[8]/U0/NET2 ), .PAD(output_signal[8]));
    NOR2B \data_source_0/tag_data_buf_4_RNO[1]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[0]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[1] ));
    NOR3B \data_source_0/counter_RNIS45T[4]  (.A(
        \data_source_0/counter_i_0[3] ), .B(
        \data_source_0/counter_i_0[4] ), .C(
        \data_source_0/counter[8]_net_1 ), .Y(
        \data_source_0/output_data_1_sqmuxa_i_a3_2 ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[0]  (.D(
        \data_source_0/output_data_23[1] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[0]_net_1 ));
    NOR3B \switching_circuit_0/un70_out_signal_switch  (.A(
        \data_source_0_tag_control_sig[7] ), .B(main_clock_0_clock_out)
        , .C(modulator_0_output_signal), .Y(
        \switching_circuit_0/un70_out_signal_switch_net_1 ));
    NOR2B \modulator_0/clock_counter_RNIJ6HC[9]  (.A(
        \modulator_0/clock_counter_c8 ), .B(\modulator_0/un6lto9 ), .Y(
        \modulator_0/clock_counter_c9 ));
    XOR2 \data_source_0/counter_RNO_0[5]  (.A(\data_source_0/N_34 ), 
        .B(\data_source_0/counter[5]_net_1 ), .Y(
        \data_source_0/N_53_i ));
    DFN1C0 \main_clock_0/counter[6]  (.D(\main_clock_0/I_17_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[6]_net_1 ));
    IOPAD_TRI \output_signal_pad[4]/U0/U0  (.D(
        \output_signal_pad[4]/U0/NET1 ), .E(
        \output_signal_pad[4]/U0/NET2 ), .PAD(output_signal[4]));
    OAI1 \data_source_0/tag_control_sig_1_RNO_21[7]  (.A(
        \data_source_0/data_index_0[3]_net_1 ), .B(
        \data_source_0/data_index_0[7]_net_1 ), .C(
        \data_source_0/data_index_0[6]_net_1 ), .Y(
        \data_source_0/N_214 ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_9[0]  (.A(
        \data_source_0/N_1129 ), .B(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_1130 ));
    OR2A \data_source_0/tag_data_buf_5_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_5[1]_net_1 ), .Y(
        \data_source_0/tag_data_buf_5_4[2] ));
    MX2A \data_source_0/tag_control_sig_1_RNO_1[6]  (.A(
        \data_source_0/N_189 ), .B(\data_source_0/N_192 ), .S(
        \data_source_0/un25lto0 ), .Y(\data_source_0/N_193 ));
    AO1 \modulator_0/output_signal_RNO_3  (.A(\modulator_0/un6lt9 ), 
        .B(\modulator_0/un6lto9 ), .C(\modulator_0/un6lto10 ), .Y(
        \modulator_0/un6lt11 ));
    OR2A \data_source_0/counter_RNI3DP13[10]  (.A(
        \data_source_0/counter[10]_net_1 ), .B(\data_source_0/N_39 ), 
        .Y(\data_source_0/N_40 ));
    DFN1E1C0 \data_source_0/tag_data_buf_8[1]  (.D(
        \data_source_0/tag_data_buf_8_4[1] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_8[1]_net_1 ));
    OA1 \modulator_0/output_signal_RNO_2  (.A(\modulator_0/un5lto15_5 )
        , .B(\modulator_0/un5lto15_6 ), .C(AND2_0_Y), .Y(
        \modulator_0/output_signal_1_sqmuxa_0 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_4[6]  (.A(
        \data_source_0/N_186 ), .B(\data_source_0/N_188 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_189 ));
    OA1A \data_source_0/data_index_RNI4PUE4[4]  (.A(
        \data_source_0/trigger_counter13 ), .B(
        \data_source_0/N_238_mux ), .C(\data_source_0/I_34 ), .Y(
        \data_source_0/data_index_4[7] ));
    XAI1 \data_source_0/counter_RNO[6]  (.A(
        \data_source_0/counter_i_0[6] ), .B(\data_source_0/N_35 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/N_16 ));
    NOR3B \switching_circuit_0/un60_out_signal_switch  (.A(
        \data_source_0_tag_control_sig[6] ), .B(main_clock_0_clock_out)
        , .C(modulator_0_output_signal), .Y(
        \switching_circuit_0/un60_out_signal_switch_net_1 ));
    DFN1E1C0 \modulator_0/clock_counter[12]  (.D(
        \modulator_0/clock_counter_n12 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/un6lto12 ));
    NOR2 \data_source_0/tag_control_sig_1_RNO_4[4]  (.A(
        \data_source_0/data_index[2]_net_1 ), .B(\data_source_0/N_147 )
        , .Y(\data_source_0/N_148 ));
    NOR2B \data_source_0/output_data_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[7]_net_1 ), .Y(
        \data_source_0/output_data_23[2] ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[7]  (.D(
        \data_source_0/tag_data_buf_2_4[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[7]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO[5]  (.A(
        \data_source_0/N_165 ), .B(\data_source_0/N_174 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_2[5] ));
    IOPAD_TRI \output_signal_pad[12]/U0/U0  (.D(
        \output_signal_pad[12]/U0/NET1 ), .E(
        \output_signal_pad[12]/U0/NET2 ), .PAD(output_signal[12]));
    MX2 \data_source_0/tag_control_sig_1_RNO_2[5]  (.A(
        \data_source_0/N_158 ), .B(\data_source_0/N_159 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_160 ));
    NOR3C \modulator_0/counter_RNIN4AV2[4]  (.A(
        \modulator_0/counter19_0 ), .B(\modulator_0/counter23_2 ), .C(
        \modulator_0/counter19_1 ), .Y(\modulator_0/counter19 ));
    IOTRI_OB_EB \output_signal_pad[17]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[17]/U0/NET1 ), .EOUT(
        \output_signal_pad[17]/U0/NET2 ));
    MX2 \data_source_0/tag_control_sig_1_RNO[3]  (.A(
        \data_source_0/N_117 ), .B(\data_source_0/N_127 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_2[3] ));
    IOIN_IB \mac_control_signal_pad/U0/U1  (.YIN(
        \mac_control_signal_pad/U0/NET1 ), .Y(mac_control_signal_c));
    MX2 \data_source_0/tag_control_sig_1_RNO_4[2]  (.A(
        \data_source_0/N_93 ), .B(\data_source_0/N_96 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(\data_source_0/N_97 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[1]  (.D(
        \data_source_0/tag_data_buf_4_4[1] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_4[1]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_6_RNO[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_6[6]_net_1 ), .Y(
        \data_source_0/tag_data_buf_6_4[7] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_3[3]  (.A(
        \data_source_0/N_111 ), .B(\data_source_0/N_115 ), .S(
        \data_source_0/data_index_0[2]_net_1 ), .Y(
        \data_source_0/N_116 ));
    NOR3B \data_source_0/counter_RNIC91K[11]  (.A(
        \data_source_0/counter_i_0[6] ), .B(
        \data_source_0/counter_i_0[7] ), .C(
        \data_source_0/counter[11]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a2_4 ));
    DFN1E1C0 \data_source_0/output_data[5]  (.D(
        \data_source_0/output_data_23[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0_output_data_0[5] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
