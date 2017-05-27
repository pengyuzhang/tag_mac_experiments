`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
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
        \data_source_0_output_data_0[3] , modulator_0_output_signal, 
        \data_source_0_tag_control_sig[0] , 
        \data_source_0_tag_control_sig[1] , 
        \data_source_0_tag_control_sig[2] , 
        \data_source_0_tag_control_sig[3] , GLA, 
        \baseband_signal_0_tag_data_output[3] , 
        \baseband_signal_0_tag_data_output[2] , 
        \baseband_signal_0_tag_data_output[1] , 
        \baseband_signal_0_tag_data_output[0] , clock_c, 
        mac_control_signal_c, reset_c, trigger_signal_c, 
        \output_signal_c[0] , \output_signal_c[1] , 
        \output_signal_c[2] , \output_signal_c[3] , 
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
        \modulator_0/counter19_1 , \modulator_0/counter[4]_net_1 , 
        \modulator_0/counter[0]_net_1 , \modulator_0/counter19_0 , 
        \modulator_0/counter[5]_net_1 , \modulator_0/counter[1]_net_1 , 
        \modulator_0/counter23_2 , \modulator_0/counter19_3 , 
        \modulator_0/counter23_1 , \modulator_0/un6lt4_2 , 
        \modulator_0/clock_counter[0]_net_1 , 
        \modulator_0/clock_counter[1]_net_1 , 
        \modulator_0/clock_counter[4]_net_1 , \modulator_0/un6lto4 , 
        \modulator_0/clock_counter[2]_net_1 , 
        \modulator_0/clock_counter[3]_net_1 , 
        \modulator_0/output_signal_1_sqmuxa_0_0 , 
        \modulator_0/un6lt15 , \modulator_0/N_89 , 
        \modulator_0/clock_counter_c13 , \modulator_0/counter19 , 
        \modulator_0/clock_counter_n11 , 
        \modulator_0/clock_counter_c10 , 
        \modulator_0/clock_counter_n7 , \modulator_0/clock_counter_c6 , 
        \modulator_0/clock_counter[7]_net_1 , 
        \modulator_0/clock_counter_n4 , \modulator_0/clock_counter_c3 , 
        \modulator_0/clock_counter_n2 , \modulator_0/clock_counter_c1 , 
        \modulator_0/clock_counter_n3 , \modulator_0/clock_counter_c2 , 
        \modulator_0/clock_counter_n5 , \modulator_0/clock_counter_c4 , 
        \modulator_0/clock_counter_n6 , \modulator_0/clock_counter_c5 , 
        \modulator_0/clock_counter_n8 , \modulator_0/clock_counter_c7 , 
        \modulator_0/clock_counter[8]_net_1 , 
        \modulator_0/clock_counter_n9 , \modulator_0/clock_counter_c8 , 
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
        \modulator_0/clock_counter_n15 , 
        \modulator_0/clock_counter_n1 , \modulator_0/N_121 , 
        \modulator_0/un6lt9 , \modulator_0/clock_countere , 
        \modulator_0/un6lt11 , \modulator_0/counter_n0 , 
        \modulator_0/counter_n1 , 
        \data_source_0/data_index_0[3]_net_1 , \data_source_0/I_9 , 
        \data_source_0/data_index_0[4]_net_1 , 
        \data_source_0/data_index_3[4] , \data_source_0/N_29_0 , 
        \data_source_0/output_data_1_sqmuxa_i_a3_4 , 
        \data_source_0/N_87 , \data_source_0/data_index[1]_net_1 , 
        \data_source_0/data_index[0]_net_1 , 
        \data_source_0/data_index[3]_net_1 , 
        \data_source_0/DWACT_FINC_E[0] , 
        \data_source_0/counter_n9_i_0 , 
        \data_source_0/counter[9]_net_1 , \data_source_0/N_38 , 
        \data_source_0/N_68 , \data_source_0/counter_n8_i_0 , 
        \data_source_0/N_34 , \data_source_0/counter_n8_i_a3_0_0 , 
        \data_source_0/N_69 , \data_source_0/m115_3 , 
        \data_source_0/m115_1 , \data_source_0/N_5_0 , 
        \data_source_0/data_index[2]_net_1 , 
        \data_source_0/output_data_1_sqmuxa_i_a3_1 , 
        \data_source_0/N_90 , 
        \data_source_0/output_data_1_sqmuxa_i_a3_2 , 
        \data_source_0/counter_i_0[3] , \data_source_0/counter_i_0[4] , 
        \data_source_0/counter[8]_net_1 , 
        \data_source_0/counter_i_0[2] , 
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
        \data_source_0/counter[14]_net_1 , \data_source_0/N_73 , 
        \data_source_0/N_14 , \data_source_0/N_36 , 
        \data_source_0/N_16 , \data_source_0/N_35 , 
        \data_source_0/N_20 , \data_source_0/N_33 , 
        \data_source_0/N_22 , \data_source_0/N_32 , 
        \data_source_0/N_24 , \data_source_0/N_31 , 
        \data_source_0/N_26 , \data_source_0/counter_i_0[0] , 
        \data_source_0/counter_i_0[1] , \data_source_0/N_119_mux , 
        \data_source_0/data_index_0_RNITPGG[3]_net_1 , 
        \data_source_0/N_118_mux_0 , 
        \data_source_0/data_index[4]_net_1 , 
        \data_source_0/data_index_RNIIT6D[7]_net_1 , 
        \data_source_0/N_10 , \data_source_0/N_39 , 
        \data_source_0/N_12 , \data_source_0/N_18 , 
        \data_source_0/N_53_i , \data_source_0/counter_n10 , 
        \data_source_0/counter_n11 , \data_source_0/N_40 , 
        \data_source_0/counter_n12 , \data_source_0/N_41 , 
        \data_source_0/counter_n13 , \data_source_0/N_42 , 
        \data_source_0/counter_n14 , \data_source_0/N_43 , 
        \data_source_0/counter_n15 , \data_source_0/N_44 , 
        \data_source_0/N_2 , \data_source_0/data_index[7]_net_1 , 
        \data_source_0/i4_mux_0 , \data_source_0/i5_mux , 
        \data_source_0/data_index_RNIEP6D[3]_net_1 , 
        \data_source_0/N_106_0 , \data_source_0/i3_mux , 
        \data_source_0/i4_mux_1 , 
        \data_source_0/data_index_RNIBTP8_1[5]_net_1 , 
        \data_source_0/N_110_0 , \data_source_0/N_97 , 
        \data_source_0/N_109 , \data_source_0/N_104_0 , 
        \data_source_0/data_index[6]_net_1 , 
        \data_source_0/data_index[5]_net_1 , \data_source_0/N_101 , 
        \data_source_0/N_103 , \data_source_0/N_54_0 , 
        \data_source_0/N_102 , \data_source_0/N_8 , 
        \data_source_0/N_99_0 , \data_source_0/N_100 , 
        \data_source_0/N_98_0 , 
        \data_source_0/tag_control_sig_1_RNO_2[1]_net_1 , 
        \data_source_0/N_96 , \data_source_0/N_93_0 , 
        \data_source_0/N_95_0 , \data_source_0/N_94_0 , 
        \data_source_0/N_92_0 , \data_source_0/N_9 , 
        \data_source_0/N_91_0 , \data_source_0/N_19 , 
        \data_source_0/N_88_0 , \data_source_0/N_89 , 
        \data_source_0/N_11 , \data_source_0/tag_control_sig_2[3] , 
        \data_source_0/tag_control_sig_1_RNO_0[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_1[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_4[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_5[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_12[3]_net_1 , 
        \data_source_0/data_index_RNIEP6D_0[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_10[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_11[3]_net_1 , 
        \data_source_0/N_27 , \data_source_0/N_47 , 
        \data_source_0/tag_control_sig_1_RNO_18[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_19[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_2[3]_net_1 , 
        \data_source_0/N_77 , 
        \data_source_0/tag_control_sig_1_RNO_8[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_9[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_17[3]_net_1 , 
        \data_source_0/data_index_RNI4QTK[7]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_16[3]_net_1 , 
        \data_source_0/data_index_RNIDVP8[7]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_20[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_6[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_7[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_15[3]_net_1 , 
        \data_source_0/N_4_0 , 
        \data_source_0/tag_control_sig_1_RNO_13[3]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_14[3]_net_1 , 
        \data_source_0/tag_control_sig_2[0] , \data_source_0/N_52 , 
        \data_source_0/tag_control_sig_1_RNO_1[0]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_4[0]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_10[0]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_11[0]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_16[0]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_15[0]_net_1 , 
        \data_source_0/N_45 , \data_source_0/N_51_0 , 
        \data_source_0/N_48 , \data_source_0/N_50 , 
        \data_source_0/N_49 , \data_source_0/N_46 , 
        \data_source_0/tag_control_sig_1_RNO_7[0]_net_1 , 
        \data_source_0/tag_control_sig_2[2] , 
        \data_source_0/tag_control_sig_1_RNO_0[2]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_1[2]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_4[2]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_5[2]_net_1 , 
        \data_source_0/N_30 , 
        \data_source_0/tag_control_sig_1_RNO_11[2]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_17[2]_net_1 , 
        \data_source_0/N_13 , \data_source_0/N_25 , 
        \data_source_0/N_21 , 
        \data_source_0/tag_control_sig_1_RNO_9[2]_net_1 , 
        \data_source_0/N_23 , \data_source_0/N_17 , 
        \data_source_0/tag_control_sig_1_RNO_15[2]_net_1 , 
        \data_source_0/tag_control_sig_1_RNO_18[2]_net_1 , 
        \data_source_0/N_7_1 , 
        \data_source_0/tag_control_sig_1_RNO_7[2]_net_1 , 
        \data_source_0/N_6_0 , \data_source_0/tag_data_buf_1_4[0] , 
        \data_source_0/tag_data_buf_1[7]_net_1 , 
        \data_source_0/tag_data_buf_3_4[0] , 
        \data_source_0/tag_data_buf_3[7]_net_1 , 
        \data_source_0/output_data_23[0] , 
        \data_source_0/output_data_23[2] , \data_source_0/N_29 , 
        \data_source_0/counter_n0 , \data_source_0/output_data_23[3] , 
        \data_source_0/tag_data_buf_4[7]_net_1 , 
        \data_source_0/output_data_23[1] , 
        \data_source_0/tag_data_buf_2[7]_net_1 , 
        \data_source_0/data_index_3[2] , \data_source_0/I_7 , 
        \data_source_0/data_index_3[1] , \data_source_0/I_5 , 
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
        \data_source_0/tag_data_buf_4_4[2] , 
        \data_source_0/tag_data_buf_4[1]_net_1 , 
        \data_source_0/tag_data_buf_4_4[1] , 
        \data_source_0/tag_data_buf_4[0]_net_1 , 
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
        \data_source_0/tag_data_buf_3_4[1] , 
        \data_source_0/tag_data_buf_3[0]_net_1 , 
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
        \data_source_0/tag_data_buf_2_4[1] , 
        \data_source_0/tag_data_buf_2[0]_net_1 , 
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
        \data_source_0/tag_data_buf_1[0]_net_1 , 
        \data_source_0/data_index_3[7] , \data_source_0/I_20 , 
        \data_source_0/I_12 , 
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 , 
        \data_source_0/I_4 , \data_source_0/I_14 , 
        \data_source_0/I_17 , \data_source_0/N_2_0 , 
        \data_source_0/DWACT_FINC_E[2] , \data_source_0/N_3 , 
        \data_source_0/DWACT_FINC_E[1] , \data_source_0/N_4 , 
        \data_source_0/N_6 , 
        \switching_circuit_0/un4_out_signal_switch_0_net_1 , 
        \switching_circuit_0/un13_out_signal_switch_0_net_1 , 
        \switching_circuit_0/un23_out_signal_switch_0_net_1 , 
        \switching_circuit_0/un33_out_signal_switch_0_net_1 , 
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
        \output_signal_pad[16]/U0/NET1 , 
        \output_signal_pad[16]/U0/NET2 , 
        \output_signal_pad[2]/U0/NET1 , \output_signal_pad[2]/U0/NET2 , 
        \signal_into_switch_pad/U0/NET1 , 
        \signal_into_switch_pad/U0/NET2 , 
        \output_signal_pad[11]/U0/NET1 , 
        \output_signal_pad[11]/U0/NET2 , 
        \output_signal_pad[15]/U0/NET1 , 
        \output_signal_pad[15]/U0/NET2 , 
        \output_signal_pad[8]/U0/NET1 , \output_signal_pad[8]/U0/NET2 , 
        \output_signal_pad[5]/U0/NET1 , \output_signal_pad[5]/U0/NET2 , 
        \reset_pad/U0/NET1 , \output_signal_pad[1]/U0/NET1 , 
        \output_signal_pad[1]/U0/NET2 , 
        \output_signal_pad[19]/U0/NET1 , 
        \output_signal_pad[19]/U0/NET2 , 
        \output_signal_pad[18]/U0/NET1 , 
        \output_signal_pad[18]/U0/NET2 , 
        \output_signal_pad[12]/U0/NET1 , 
        \output_signal_pad[12]/U0/NET2 , 
        \output_signal_pad[4]/U0/NET1 , \output_signal_pad[4]/U0/NET2 , 
        \output_signal_pad[10]/U0/NET1 , 
        \output_signal_pad[10]/U0/NET2 , 
        \mac_control_signal_pad/U0/NET1 , 
        \output_signal_pad[6]/U0/NET1 , \output_signal_pad[6]/U0/NET2 , 
        \output_signal_pad[14]/U0/NET1 , 
        \output_signal_pad[14]/U0/NET2 , 
        \output_signal_pad[0]/U0/NET1 , \output_signal_pad[0]/U0/NET2 , 
        \output_signal_pad[17]/U0/NET1 , 
        \output_signal_pad[17]/U0/NET2 , 
        \output_signal_pad[3]/U0/NET1 , \output_signal_pad[3]/U0/NET2 , 
        \trigger_signal_pad/U0/NET1 , \output_signal_pad[9]/U0/NET1 , 
        \output_signal_pad[9]/U0/NET2 , 
        \output_signal_pad[13]/U0/NET1 , 
        \output_signal_pad[13]/U0/NET2 , 
        \output_signal_pad[7]/U0/NET1 , \output_signal_pad[7]/U0/NET2 , 
        \clock_pad/U0/NET1 , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    DFN1E1C0 \data_source_0/tag_data_buf_3[3]  (.D(
        \data_source_0/tag_data_buf_3_4[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_3[3]_net_1 ));
    NOR3A \main_clock_0/counter_RNI0BUP1[2]  (.A(
        \main_clock_0/counter14_2 ), .B(
        \main_clock_0/counter[2]_net_1 ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(
        \main_clock_0/counter14_4 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_15[2]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(\data_source_0/N_19 ), 
        .S(\data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_15[2]_net_1 ));
    AXO3 \data_source_0/data_index_RNIIT6D[7]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .C(
        \data_source_0/data_index[5]_net_1 ), .Y(
        \data_source_0/data_index_RNIIT6D[7]_net_1 ));
    IOTRI_OB_EB \output_signal_pad[13]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[13]/U0/NET1 ), .EOUT(
        \output_signal_pad[13]/U0/NET2 ));
    DFN1C0 \data_source_0/data_index[4]  (.D(
        \data_source_0/data_index_3[4] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[4]_net_1 ));
    AO1A \data_source_0/counter_RNO_0[9]  (.A(
        \data_source_0/counter[9]_net_1 ), .B(\data_source_0/N_38 ), 
        .C(\data_source_0/N_68 ), .Y(\data_source_0/counter_n9_i_0 ));
    NOR2B \modulator_0/clock_counter_RNIPVCH1[13]  (.A(
        \modulator_0/clock_counter_c12 ), .B(
        \modulator_0/clock_counter[13]_net_1 ), .Y(
        \modulator_0/clock_counter_c13 ));
    NOR2 \data_source_0/tag_control_sig_1_RNO_20[3]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(\data_source_0/N_8 ), 
        .Y(\data_source_0/tag_control_sig_1_RNO_20[3]_net_1 ));
    CLKINT \modulator_0/output_signal_RNI2QGD  (.A(
        \modulator_0/output_signal_i ), .Y(modulator_0_output_signal));
    AO1B \data_source_0/counter_RNIK0AI3_0[1]  (.A(
        \data_source_0/output_data_1_sqmuxa_i_a3_4 ), .B(
        \data_source_0/N_87 ), .C(modulator_0_output_signal), .Y(
        \data_source_0/N_29 ));
    OR2 \data_source_0/counter_RNI2OR61[3]  (.A(\data_source_0/N_32 ), 
        .B(\data_source_0/counter_i_0[3] ), .Y(\data_source_0/N_33 ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[7]  (.D(
        \data_source_0/tag_data_buf_2_4[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[7]_net_1 ));
    NOR3C \modulator_0/counter_RNINTKF1[2]  (.A(
        \modulator_0/counter[1]_net_1 ), .B(
        \modulator_0/counter[0]_net_1 ), .C(
        \modulator_0/counter[2]_net_1 ), .Y(\modulator_0/counter_c2 ));
    NOR3B \data_source_0/counter_RNIS45T[3]  (.A(
        \data_source_0/counter_i_0[3] ), .B(
        \data_source_0/counter_i_0[4] ), .C(
        \data_source_0/counter[8]_net_1 ), .Y(
        \data_source_0/output_data_1_sqmuxa_i_a3_2 ));
    NOR2B \data_source_0/tag_data_buf_4_RNO[3]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[2]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[3] ));
    AO1B \data_source_0/counter_RNIK0AI3[1]  (.A(
        \data_source_0/output_data_1_sqmuxa_i_a3_4 ), .B(
        \data_source_0/N_87 ), .C(modulator_0_output_signal), .Y(
        \data_source_0/N_29_0 ));
    AND2 \data_source_0/un3_data_index_I_15  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/DWACT_FINC_E[1] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_6[1]  (.A(
        \data_source_0/data_index_0_RNITPGG[3]_net_1 ), .B(
        \data_source_0/N_11 ), .S(\data_source_0/data_index[4]_net_1 ), 
        .Y(\data_source_0/N_88_0 ));
    DFN1E1 \data_source_0/tag_control_sig_1[2]  (.D(
        \data_source_0/tag_control_sig_2[2] ), .CLK(
        main_clock_0_clock_out), .E(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ), .Q(
        \data_source_0_tag_control_sig[2] ));
    NOR3C \data_source_0/counter_RNI43142[1]  (.A(
        \data_source_0/output_data_1_sqmuxa_i_a3_1 ), .B(
        \data_source_0/N_90 ), .C(
        \data_source_0/output_data_1_sqmuxa_i_a3_2 ), .Y(
        \data_source_0/output_data_1_sqmuxa_i_a3_4 ));
    IOTRI_OB_EB \output_signal_pad[4]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[4]/U0/NET1 ), .EOUT(
        \output_signal_pad[4]/U0/NET2 ));
    NOR2B \data_source_0/tag_data_buf_2_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[3]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[4] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_9[3]  (.A(
        \data_source_0/N_54_0 ), .B(
        \data_source_0/tag_control_sig_1_RNO_17[3]_net_1 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_9[3]_net_1 ));
    DFN1P0 \data_source_0/counter[7]  (.D(\data_source_0/N_14 ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[7] ));
    OR2A \data_source_0/counter_RNI6KV23[12]  (.A(
        \data_source_0/counter[12]_net_1 ), .B(\data_source_0/N_41 ), 
        .Y(\data_source_0/N_42 ));
    IOTRI_OB_EB \output_signal_pad[8]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[8]/U0/NET1 ), .EOUT(
        \output_signal_pad[8]/U0/NET2 ));
    NOR2B \modulator_0/clock_counter_RNIJ6HC[9]  (.A(
        \modulator_0/clock_counter_c8 ), .B(\modulator_0/un6lto9 ), .Y(
        \modulator_0/clock_counter_c9 ));
    DFN1C0 \data_source_0/counter[5]  (.D(\data_source_0/N_18 ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[5]_net_1 ));
    NOR2 \data_source_0/tag_control_sig_1_RNO_19[1]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(\data_source_0/N_5_0 )
        , .Y(\data_source_0/N_91_0 ));
    XA1 \modulator_0/counter_RNO[3]  (.A(\modulator_0/counter_c2 ), .B(
        \modulator_0/counter[3]_net_1 ), .C(
        \modulator_0/counter_0_sqmuxa ), .Y(\modulator_0/counter_n3 ));
    IOTRI_OB_EB \output_signal_pad[14]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[14]/U0/NET1 ), .EOUT(
        \output_signal_pad[14]/U0/NET2 ));
    AO1 \modulator_0/output_signal_RNO_1  (.A(\modulator_0/un6lt11 ), 
        .B(\modulator_0/un6lto11 ), .C(\modulator_0/un6lto12 ), .Y(
        \modulator_0/un6lt15 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_2[2]  (.A(
        \data_source_0/N_7_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_7[2]_net_1 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_13 ));
    OA1 \data_source_0/tag_control_sig_1_RNO_17[2]  (.A(
        \data_source_0/data_index_RNIBTP8_1[5]_net_1 ), .B(
        \data_source_0/data_index[7]_net_1 ), .C(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_17[2]_net_1 ));
    NOR2B \data_source_0/data_index_RNIEP6D_1[3]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(\data_source_0/N_8 ), 
        .Y(\data_source_0/N_9 ));
    XNOR2 \baseband_signal_0/tag_data_output_1[2]  (.A(
        main_clock_0_clock_out), .B(\data_source_0_output_data_0[2] ), 
        .Y(\baseband_signal_0_tag_data_output[2] ));
    XA1 \modulator_0/clock_counter_RNO[10]  (.A(
        \modulator_0/clock_counter_c9 ), .B(\modulator_0/un6lto10 ), 
        .C(AND2_0_Y), .Y(\modulator_0/clock_counter_n10 ));
    IOPAD_TRI \output_signal_pad[7]/U0/U0  (.D(
        \output_signal_pad[7]/U0/NET1 ), .E(
        \output_signal_pad[7]/U0/NET2 ), .PAD(output_signal[7]));
    XA1A \data_source_0/counter_RNO[12]  (.A(\data_source_0/N_41 ), .B(
        \data_source_0/counter[12]_net_1 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/counter_n12 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_6[0]  (.A(
        \data_source_0/data_index_RNIIT6D[7]_net_1 ), .B(
        \data_source_0/i4_mux_1 ), .S(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/i3_mux ));
    AO1B \modulator_0/counter_RNIBT613[1]  (.A(
        \modulator_0/counter23_2 ), .B(\modulator_0/counter23_1 ), .C(
        AND2_0_Y), .Y(\modulator_0/clock_countere ));
    AOI1B \modulator_0/output_signal_RNO  (.A(\modulator_0/un6lto15_1 )
        , .B(\modulator_0/un6lt15 ), .C(
        \modulator_0/output_signal_1_sqmuxa_0 ), .Y(
        \modulator_0/output_signal_1_sqmuxa_0_0 ));
    XOR2 \data_source_0/un3_data_index_I_9  (.A(\data_source_0/N_6 ), 
        .B(\data_source_0/data_index[3]_net_1 ), .Y(
        \data_source_0/I_9 ));
    NOR3B \data_source_0/tag_control_sig_1_RNO_12[3]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index[5]_net_1 ), .C(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_12[3]_net_1 ));
    DFN1C0 \data_source_0/counter[12]  (.D(\data_source_0/counter_n12 )
        , .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[12]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_4_RNIS3VE[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[7]_net_1 ), .Y(
        \data_source_0/output_data_23[3] ));
    XA1 \modulator_0/clock_counter_RNO[3]  (.A(
        \modulator_0/clock_counter_c2 ), .B(
        \modulator_0/clock_counter[3]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n3 ));
    OR2A \data_source_0/counter_RNI3DP13[10]  (.A(
        \data_source_0/counter[10]_net_1 ), .B(\data_source_0/N_39 ), 
        .Y(\data_source_0/N_40 ));
    NOR2B \data_source_0/data_index_RNIASP8[3]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/data_index[7]_net_1 ), .Y(\data_source_0/N_47 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_12[1]  (.A(
        \data_source_0/data_index_RNIEP6D[3]_net_1 ), .B(
        \data_source_0/N_106_0 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/i5_mux ));
    NOR2B \data_source_0/tag_control_sig_1_RNO_15[1]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/N_98_0 ), .Y(\data_source_0/N_99_0 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_10[0]  (.A(
        \data_source_0/tag_control_sig_1_RNO_15[0]_net_1 ), .B(
        \data_source_0/N_54_0 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_10[0]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[4]  (.A(
        \modulator_0/clock_counter[4]_net_1 ), .B(
        \modulator_0/clock_counter_c3 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n4 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_3[1]  (.A(
        \data_source_0/N_93_0 ), .B(\data_source_0/N_95_0 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_96 ));
    NOR2A \modulator_0/counter_RNIUNOV[5]  (.A(
        \modulator_0/counter[5]_net_1 ), .B(
        \modulator_0/counter[1]_net_1 ), .Y(\modulator_0/counter19_0 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_8[3]  (.A(
        \data_source_0/data_index_RNI4QTK[7]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_16[3]_net_1 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_8[3]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_4[3]  (.A(
        \data_source_0/tag_control_sig_1_RNO_10[3]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_11[3]_net_1 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_4[3]_net_1 ));
    DFN1E1C0 \modulator_0/clock_counter[1]  (.D(
        \modulator_0/clock_counter_n1 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[1]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[7]  (.D(
        \data_source_0/tag_data_buf_4_4[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_4[7]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[13]  (.A(
        \modulator_0/clock_counter_c12 ), .B(
        \modulator_0/clock_counter[13]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n13 ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[3]  (.D(
        \data_source_0/tag_data_buf_2_4[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[3]_net_1 ));
    DFN1C0 \data_source_0/counter[14]  (.D(\data_source_0/counter_n14 )
        , .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[14]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_5[2]  (.A(
        \data_source_0/data_index_0_RNITPGG[3]_net_1 ), .B(
        \data_source_0/N_118_mux_0 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_5[2]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_3_RNO[5]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[4]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[5] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_1[2]  (.A(
        \data_source_0/tag_control_sig_1_RNO_4[2]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_5[2]_net_1 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_1[2]_net_1 ));
    MX2B \data_source_0/tag_control_sig_1_RNO_1[1]  (.A(
        \data_source_0/N_104_0 ), .B(\data_source_0/i4_mux_0 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(\data_source_0/N_109 )
        );
    IOPAD_TRI \output_signal_pad[13]/U0/U0  (.D(
        \output_signal_pad[13]/U0/NET1 ), .E(
        \output_signal_pad[13]/U0/NET2 ), .PAD(output_signal[13]));
    OR2 \data_source_0/counter_RNIUS042[6]  (.A(\data_source_0/N_35 ), 
        .B(\data_source_0/counter_i_0[6] ), .Y(\data_source_0/N_36 ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[6]  (.D(
        \data_source_0/tag_data_buf_2_4[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[6]_net_1 ));
    IOTRI_OB_EB \output_signal_pad[7]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[7]/U0/NET1 ), .EOUT(
        \output_signal_pad[7]/U0/NET2 ));
    XA1 \modulator_0/clock_counter_RNO[6]  (.A(
        \modulator_0/clock_counter_c5 ), .B(\modulator_0/un5lto6 ), .C(
        AND2_0_Y), .Y(\modulator_0/clock_counter_n6 ));
    DFN1P0 \data_source_0/counter[6]  (.D(\data_source_0/N_16 ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[6] ));
    MX2 \data_source_0/tag_control_sig_1_RNO_9[0]  (.A(
        \data_source_0/N_11 ), .B(\data_source_0/N_49 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/N_50 ));
    OR3 \modulator_0/output_signal_RNO_13  (.A(
        \modulator_0/clock_counter[0]_net_1 ), .B(
        \modulator_0/clock_counter[1]_net_1 ), .C(
        \modulator_0/clock_counter[4]_net_1 ), .Y(
        \modulator_0/un6lt4_2 ));
    DFN1E1C0 \modulator_0/clock_counter[11]  (.D(
        \modulator_0/clock_counter_n11 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/un6lto11 ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[2]  (.D(
        \data_source_0/tag_data_buf_2_4[2] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[2]_net_1 ));
    XA1A \data_source_0/counter_RNO[10]  (.A(\data_source_0/N_39 ), .B(
        \data_source_0/counter[10]_net_1 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/counter_n10 ));
    XOR2 \main_clock_0/un5_counter_1_I_17  (.A(\main_clock_0/N_3 ), .B(
        \main_clock_0/counter[6]_net_1 ), .Y(\main_clock_0/I_17_0 ));
    DFN1E1C0 \data_source_0/tag_data_buf_1[3]  (.D(
        \data_source_0/tag_data_buf_1_4[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[3]_net_1 ));
    NOR2 \data_source_0/tag_control_sig_1_RNO_18[2]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(
        \data_source_0/data_index[5]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_18[2]_net_1 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_16[1]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(
        \data_source_0/data_index[3]_net_1 ), .S(
        \data_source_0/data_index[6]_net_1 ), .Y(\data_source_0/N_100 )
        );
    OR2A \data_source_0/tag_data_buf_2_RNO[1]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[0]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[1] ));
    IOTRI_OB_EB \output_signal_pad[11]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[11]/U0/NET1 ), .EOUT(
        \output_signal_pad[11]/U0/NET2 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_10[3]  (.A(
        \data_source_0/tag_control_sig_1_RNO_18[3]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_19[3]_net_1 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_10[3]_net_1 ));
    AO1 \modulator_0/output_signal_RNO_4  (.A(\modulator_0/un5lto5 ), 
        .B(\modulator_0/un5lto6 ), .C(\modulator_0/un6lto8 ), .Y(
        \modulator_0/un5lto15_5 ));
    DFN1C0 \data_source_0/data_index[3]  (.D(\data_source_0/I_9 ), 
        .CLK(modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[3]_net_1 ));
    DFN1C0 \data_source_0/counter[15]  (.D(\data_source_0/counter_n15 )
        , .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[15]_net_1 ));
    DFN1E1C0 \modulator_0/clock_counter[3]  (.D(
        \modulator_0/clock_counter_n3 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[3]_net_1 ));
    OR2A \data_source_0/counter_RNI9Q9Q1[5]  (.A(
        \data_source_0/counter[5]_net_1 ), .B(\data_source_0/N_34 ), 
        .Y(\data_source_0/N_35 ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[6]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[7] ));
    OR2A \data_source_0/tag_data_buf_1_RNO[0]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[7]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[0] ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[5]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[6] ));
    OR3A \data_source_0/counter_RNIB5FN2[7]  (.A(
        \data_source_0/counter[8]_net_1 ), .B(
        \data_source_0/counter_i_0[7] ), .C(\data_source_0/N_36 ), .Y(
        \data_source_0/N_38 ));
    NOR3A \data_source_0/counter_RNIEF7L[10]  (.A(
        \data_source_0/counter_n9_i_a2_4 ), .B(
        \data_source_0/counter[12]_net_1 ), .C(
        \data_source_0/counter[10]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a2_6 ));
    AND3 \data_source_0/un3_data_index_I_19  (.A(
        \data_source_0/DWACT_FINC_E[0] ), .B(
        \data_source_0/DWACT_FINC_E[2] ), .C(
        \data_source_0/data_index[6]_net_1 ), .Y(\data_source_0/N_2_0 )
        );
    MX2A \data_source_0/tag_control_sig_1_RNO_2[0]  (.A(
        \data_source_0/i3_mux ), .B(
        \data_source_0/tag_control_sig_1_RNO_7[0]_net_1 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_45 ));
    DFN1P0 \data_source_0/data_index[0]  (.D(\data_source_0/I_4 ), 
        .CLK(modulator_0_output_signal), .PRE(reset_c), .Q(
        \data_source_0/data_index[0]_net_1 ));
    IOPAD_TRI \output_signal_pad[14]/U0/U0  (.D(
        \output_signal_pad[14]/U0/NET1 ), .E(
        \output_signal_pad[14]/U0/NET2 ), .PAD(output_signal[14]));
    NOR2B \data_source_0/tag_data_buf_3_RNO[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[6]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[7] ));
    MX2A \data_source_0/tag_control_sig_1_RNO_3[0]  (.A(
        \data_source_0/N_48 ), .B(\data_source_0/N_50 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_51_0 ));
    NOR3B \data_source_0/data_index_RNI4QTK[7]  (.A(
        \data_source_0/N_5_0 ), .B(
        \data_source_0/data_index_0[3]_net_1 ), .C(
        \data_source_0/data_index[7]_net_1 ), .Y(
        \data_source_0/data_index_RNI4QTK[7]_net_1 ));
    IOTRI_OB_EB \output_signal_pad[16]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[16]/U0/NET1 ), .EOUT(
        \output_signal_pad[16]/U0/NET2 ));
    NOR2B \data_source_0/tag_data_buf_3_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[5]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[6] ));
    AND3 \main_clock_0/un5_counter_1_I_10  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[0] ));
    OR2 \data_source_0/counter_RNILOIG1[4]  (.A(\data_source_0/N_33 ), 
        .B(\data_source_0/counter_i_0[4] ), .Y(\data_source_0/N_34 ));
    NOR2B \data_source_0/counter_RNIE3O01[10]  (.A(
        \data_source_0/counter_n9_i_a2_6 ), .B(
        \data_source_0/counter_n9_i_a2_5 ), .Y(\data_source_0/N_87 ));
    DFN1P0 \data_source_0/counter[2]  (.D(\data_source_0/N_24 ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[2] ));
    MX2B \data_source_0/tag_control_sig_1_RNO_11[3]  (.A(
        \data_source_0/N_27 ), .B(\data_source_0/N_47 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_11[3]_net_1 ));
    NOR2B \switching_circuit_0/un13_out_signal_switch_0  (.A(
        \data_source_0_tag_control_sig[1] ), .B(
        modulator_0_output_signal), .Y(
        \switching_circuit_0/un13_out_signal_switch_0_net_1 ));
    MX2B \data_source_0/tag_control_sig_1_RNO_8[0]  (.A(
        \data_source_0/N_46 ), .B(\data_source_0/N_47 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/N_48 ));
    NOR2B \switching_circuit_0/un23_out_signal_switch_0  (.A(
        \data_source_0_tag_control_sig[2] ), .B(
        modulator_0_output_signal), .Y(
        \switching_circuit_0/un23_out_signal_switch_0_net_1 ));
    OR2 \modulator_0/output_signal_RNO_9  (.A(\modulator_0/un6lto12 ), 
        .B(\modulator_0/un6lto11 ), .Y(\modulator_0/un5lto15_1 ));
    DFN1E1C0 \modulator_0/clock_counter[12]  (.D(
        \modulator_0/clock_counter_n12 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/un6lto12 ));
    INV \data_source_0/un3_data_index_I_4  (.A(
        \data_source_0/data_index[0]_net_1 ), .Y(\data_source_0/I_4 ));
    NOR2B \data_source_0/data_index_RNIEP6D[3]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(\data_source_0/N_5_0 )
        , .Y(\data_source_0/data_index_RNIEP6D[3]_net_1 ));
    IOPAD_TRI \output_signal_pad[5]/U0/U0  (.D(
        \output_signal_pad[5]/U0/NET1 ), .E(
        \output_signal_pad[5]/U0/NET2 ), .PAD(output_signal[5]));
    DFN1C0 \modulator_0/counter[0]  (.D(\modulator_0/counter_n0 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/counter[0]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[1]  (.A(
        \modulator_0/clock_counter[1]_net_1 ), .B(
        \modulator_0/clock_counter[0]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n1 ));
    DFN1E1 \data_source_0/tag_control_sig_1[0]  (.D(
        \data_source_0/tag_control_sig_2[0] ), .CLK(
        main_clock_0_clock_out), .E(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ), .Q(
        \data_source_0_tag_control_sig[0] ));
    IOPAD_IN \trigger_signal_pad/U0/U0  (.PAD(trigger_signal), .Y(
        \trigger_signal_pad/U0/NET1 ));
    XOR2 \data_source_0/un3_data_index_I_20  (.A(\data_source_0/N_2_0 )
        , .B(\data_source_0/data_index[7]_net_1 ), .Y(
        \data_source_0/I_20 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_9[2]  (.A(
        \data_source_0/data_index_RNI4QTK[7]_net_1 ), .B(
        \data_source_0/N_23 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_9[2]_net_1 ));
    XAI1 \data_source_0/counter_RNO[4]  (.A(
        \data_source_0/counter_i_0[4] ), .B(\data_source_0/N_33 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/N_20 ));
    AX1C \modulator_0/clock_counter_RNO[15]  (.A(AND2_0_Y), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(\modulator_0/N_89 ), 
        .Y(\modulator_0/clock_counter_n15 ));
    NOR2 \main_clock_0/counter_RNIF4VS[1]  (.A(
        \main_clock_0/counter[4]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .Y(
        \main_clock_0/counter14_2 ));
    OR2 \modulator_0/output_signal_RNO_8  (.A(\modulator_0/un6lto10 ), 
        .B(\modulator_0/un6lto9 ), .Y(\modulator_0/un5lto15_2 ));
    DFN1E1C0 \modulator_0/clock_counter[5]  (.D(
        \modulator_0/clock_counter_n5 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[5]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[3]  (.D(
        \data_source_0/tag_data_buf_4_4[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_4[3]_net_1 ));
    DFN1E1C0 \modulator_0/clock_counter[8]  (.D(
        \modulator_0/clock_counter_n8 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[8]_net_1 ));
    OR2A \data_source_0/tag_data_buf_4_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[1]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[2] ));
    DFN1C0 \modulator_0/counter[1]  (.D(\modulator_0/counter_n1 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/counter[1]_net_1 ));
    AXO7 \data_source_0/data_index_RNI4QTK_1[7]  (.A(
        \data_source_0/N_5_0 ), .B(
        \data_source_0/data_index_0[3]_net_1 ), .C(
        \data_source_0/data_index[7]_net_1 ), .Y(\data_source_0/N_27 ));
    OR2A \data_source_0/tag_data_buf_3_RNO[1]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[0]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[1] ));
    AOI1B \data_source_0/data_index_0_RNILCHS1[4]  (.A(
        \data_source_0/m115_3 ), .B(\data_source_0/N_2 ), .C(
        \data_source_0/I_12 ), .Y(\data_source_0/data_index_3[4] ));
    MX2A \data_source_0/tag_control_sig_1_RNO_1[0]  (.A(
        \data_source_0/tag_control_sig_1_RNO_4[0]_net_1 ), .B(
        \data_source_0/N_119_mux ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_1[0]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_7[3]  (.A(
        \data_source_0/tag_control_sig_1_RNO_15[3]_net_1 ), .B(
        \data_source_0/data_index_RNIEP6D[3]_net_1 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_7[3]_net_1 ));
    NOR3B \data_source_0/counter_RNO[8]  (.A(\data_source_0/N_38 ), .B(
        modulator_0_output_signal), .C(\data_source_0/counter_n8_i_0 ), 
        .Y(\data_source_0/N_12 ));
    DFN1C0 \data_source_0/counter[10]  (.D(\data_source_0/counter_n10 )
        , .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[10]_net_1 ));
    NOR2B \modulator_0/counter_RNO[2]  (.A(
        \modulator_0/counter_0_sqmuxa ), .B(
        \modulator_0/counter_n2_tz ), .Y(\modulator_0/counter_n2 ));
    DFN1E1P0 \data_source_0/tag_data_buf_1[0]  (.D(
        \data_source_0/tag_data_buf_1_4[0] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[0]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_3[6]  (.D(
        \data_source_0/tag_data_buf_3_4[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_3[6]_net_1 ));
    DFN1E1C0 \data_source_0/output_data[3]  (.D(
        \data_source_0/output_data_23[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0_output_data_0[3] ));
    DFN1C0 \data_source_0/counter[13]  (.D(\data_source_0/counter_n13 )
        , .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[13]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNI2305[3]  (.A(
        \modulator_0/clock_counter_c2 ), .B(
        \modulator_0/clock_counter[3]_net_1 ), .Y(
        \modulator_0/clock_counter_c3 ));
    NOR2B \modulator_0/clock_counter_RNIFVF2[1]  (.A(
        \modulator_0/clock_counter[1]_net_1 ), .B(
        \modulator_0/clock_counter[0]_net_1 ), .Y(
        \modulator_0/clock_counter_c1 ));
    NOR2 \data_source_0/counter_RNI7B61[13]  (.A(
        \data_source_0/counter[13]_net_1 ), .B(
        \data_source_0/counter[14]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a2_2 ));
    DFN1C0 \data_source_0/counter[9]  (.D(\data_source_0/N_10 ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[9]_net_1 ));
    XA1 \data_source_0/tag_control_sig_1_RNO_14[1]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index[3]_net_1 ), .C(
        \data_source_0/data_index[5]_net_1 ), .Y(
        \data_source_0/N_94_0 ));
    NOR3A \data_source_0/data_index_RNI4QTK_0[7]  (.A(
        \data_source_0/N_5_0 ), .B(\data_source_0/data_index[7]_net_1 )
        , .C(\data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/N_11 ));
    AND2 \main_clock_0/un5_counter_1_I_15  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/counter[4]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[1] ));
    NOR2B \data_source_0/tag_data_buf_2_RNO[5]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[4]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[5] ));
    XOR2 \data_source_0/un3_data_index_I_14  (.A(\data_source_0/N_4 ), 
        .B(\data_source_0/data_index[5]_net_1 ), .Y(
        \data_source_0/I_14 ));
    NOR3C \modulator_0/clock_counter_RNO_0[15]  (.A(AND2_0_Y), .B(
        \modulator_0/clock_counter[14]_net_1 ), .C(
        \modulator_0/clock_counter_c13 ), .Y(\modulator_0/N_89 ));
    OR2 \data_source_0/counter_RNIVPDJ[1]  (.A(
        \data_source_0/counter_i_0[1] ), .B(
        \data_source_0/counter_i_0[0] ), .Y(\data_source_0/N_31 ));
    OR2A \data_source_0/counter_RNI9PI33[13]  (.A(
        \data_source_0/counter[13]_net_1 ), .B(\data_source_0/N_42 ), 
        .Y(\data_source_0/N_43 ));
    AX1C \main_clock_0/un5_counter_1_I_12  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/DWACT_FINC_E[0] ), .C(
        \main_clock_0/counter[4]_net_1 ), .Y(\main_clock_0/I_12_0 ));
    IOPAD_TRI \signal_into_switch_pad/U0/U0  (.D(
        \signal_into_switch_pad/U0/NET1 ), .E(
        \signal_into_switch_pad/U0/NET2 ), .PAD(signal_into_switch));
    IOPAD_TRI \output_signal_pad[9]/U0/U0  (.D(
        \output_signal_pad[9]/U0/NET1 ), .E(
        \output_signal_pad[9]/U0/NET2 ), .PAD(output_signal[9]));
    IOPAD_TRI \output_signal_pad[11]/U0/U0  (.D(
        \output_signal_pad[11]/U0/NET1 ), .E(
        \output_signal_pad[11]/U0/NET2 ), .PAD(output_signal[11]));
    AX1C \main_clock_0/un5_counter_1_I_7  (.A(
        \main_clock_0/counter[1]_net_1 ), .B(
        \main_clock_0/counter[0]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(\main_clock_0/I_7_0 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_2[1]  (.A(
        \data_source_0/N_88_0 ), .B(\data_source_0/N_89 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_2[1]_net_1 ));
    IOTRI_OB_EB \output_signal_pad[19]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[19]/U0/NET1 ), .EOUT(
        \output_signal_pad[19]/U0/NET2 ));
    DFN1E1C0 \modulator_0/clock_counter[14]  (.D(
        \modulator_0/clock_counter_n14 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[14]_net_1 ));
    NOR3A \data_source_0/counter_RNO[5]  (.A(modulator_0_output_signal)
        , .B(\data_source_0/N_53_i ), .C(\data_source_0/N_73 ), .Y(
        \data_source_0/N_18 ));
    OR2 \data_source_0/counter_RNIGO4T[2]  (.A(\data_source_0/N_31 ), 
        .B(\data_source_0/counter_i_0[2] ), .Y(\data_source_0/N_32 ));
    DFN1C0 \main_clock_0/clock_out  (.D(
        \main_clock_0/clock_out_RNO_net_1 ), .CLK(GLA), .CLR(reset_c), 
        .Q(\main_clock_0/clock_out_i ));
    NOR2B \data_source_0/tag_data_buf_4_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[3]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[4] ));
    AO1C \data_source_0/tag_control_sig_1_RNO_15[0]  (.A(
        \data_source_0/data_index_0[3]_net_1 ), .B(
        \data_source_0/data_index[5]_net_1 ), .C(
        \data_source_0/data_index[6]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_15[0]_net_1 ));
    NOR2B \data_source_0/output_data_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[7]_net_1 ), .Y(
        \data_source_0/output_data_23[2] ));
    OA1B \data_source_0/counter_RNO_2[8]  (.A(
        \data_source_0/counter_i_0[7] ), .B(\data_source_0/N_36 ), .C(
        \data_source_0/counter[8]_net_1 ), .Y(\data_source_0/N_69 ));
    IOTRI_OB_EB \output_signal_pad[5]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[5]/U0/NET1 ), .EOUT(
        \output_signal_pad[5]/U0/NET2 ));
    XOR2 \data_source_0/counter_RNO_0[5]  (.A(\data_source_0/N_34 ), 
        .B(\data_source_0/counter[5]_net_1 ), .Y(
        \data_source_0/N_53_i ));
    DFN1C0 \data_source_0/counter[8]  (.D(\data_source_0/N_12 ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[8]_net_1 ));
    IOTRI_OB_EB \signal_into_switch_pad/U0/U1  (.D(VCC), .E(VCC), 
        .DOUT(\signal_into_switch_pad/U0/NET1 ), .EOUT(
        \signal_into_switch_pad/U0/NET2 ));
    IOPAD_TRI \output_signal_pad[3]/U0/U0  (.D(
        \output_signal_pad[3]/U0/NET1 ), .E(
        \output_signal_pad[3]/U0/NET2 ), .PAD(output_signal[3]));
    DFN1C0 \main_clock_0/counter[7]  (.D(\main_clock_0/I_20_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[7]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[5]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[4]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[5] ));
    DFN1C0 \main_clock_0/counter[0]  (.D(\main_clock_0/counter_3[0] ), 
        .CLK(GLA), .CLR(reset_c), .Q(\main_clock_0/counter[0]_net_1 ));
    NOR3C \data_source_0/tag_control_sig_1_RNO_19[3]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index[5]_net_1 ), .C(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_19[3]_net_1 ));
    NOR2A \data_source_0/counter_RNI94EJ[2]  (.A(
        \data_source_0/counter_i_0[2] ), .B(
        \data_source_0/counter[9]_net_1 ), .Y(
        \data_source_0/output_data_1_sqmuxa_i_a3_1 ));
    NOR3B \data_source_0/counter_RNO[9]  (.A(\data_source_0/N_39 ), .B(
        modulator_0_output_signal), .C(\data_source_0/counter_n9_i_0 ), 
        .Y(\data_source_0/N_10 ));
    NOR2B \data_source_0/tag_data_buf_2_RNO[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[6]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[7] ));
    OR3 \modulator_0/output_signal_RNO_10  (.A(
        \modulator_0/clock_counter[13]_net_1 ), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(
        \modulator_0/clock_counter[14]_net_1 ), .Y(
        \modulator_0/un5lto15_3 ));
    IOPAD_TRI \output_signal_pad[16]/U0/U0  (.D(
        \output_signal_pad[16]/U0/NET1 ), .E(
        \output_signal_pad[16]/U0/NET2 ), .PAD(output_signal[16]));
    DFN1E1C0 \data_source_0/tag_data_buf_1[4]  (.D(
        \data_source_0/tag_data_buf_1_4[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[4]_net_1 ));
    IOTRI_OB_EB \output_signal_pad[18]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[18]/U0/NET1 ), .EOUT(
        \output_signal_pad[18]/U0/NET2 ));
    IOTRI_OB_EB \output_signal_pad[17]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[17]/U0/NET1 ), .EOUT(
        \output_signal_pad[17]/U0/NET2 ));
    XAI1 \data_source_0/counter_RNO[6]  (.A(
        \data_source_0/counter_i_0[6] ), .B(\data_source_0/N_35 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/N_16 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_13[1]  (.A(
        \data_source_0/N_91_0 ), .B(\data_source_0/N_19 ), .S(
        \data_source_0/data_index[3]_net_1 ), .Y(
        \data_source_0/N_92_0 ));
    DFN1C0 \data_source_0/data_index[6]  (.D(\data_source_0/I_17 ), 
        .CLK(modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[6]_net_1 ));
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
    DFN1E1P0 \data_source_0/tag_data_buf_3[1]  (.D(
        \data_source_0/tag_data_buf_3_4[1] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_3[1]_net_1 ));
    DFN1C0 \data_source_0/data_index_0[3]  (.D(\data_source_0/I_9 ), 
        .CLK(modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index_0[3]_net_1 ));
    AO1 \modulator_0/output_signal_RNO_6  (.A(\modulator_0/un6lto6_0 ), 
        .B(\modulator_0/un6lto4 ), .C(\modulator_0/un6lto8 ), .Y(
        \modulator_0/un6lt9 ));
    NOR3B \data_source_0/data_index_RNI3E6D[0]  (.A(
        \data_source_0/data_index[2]_net_1 ), .B(
        \data_source_0/data_index[0]_net_1 ), .C(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/m115_1 ));
    NOR3C \modulator_0/counter_RNIN4AV2[4]  (.A(
        \modulator_0/counter19_0 ), .B(\modulator_0/counter19_3 ), .C(
        \modulator_0/counter19_1 ), .Y(\modulator_0/counter19 ));
    DFN1C0 \main_clock_0/counter[4]  (.D(\main_clock_0/I_12_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[4]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[11]  (.A(
        \modulator_0/clock_counter_c10 ), .B(\modulator_0/un6lto11 ), 
        .C(AND2_0_Y), .Y(\modulator_0/clock_counter_n11 ));
    NOR2B \modulator_0/clock_counter_RNI3U8B[8]  (.A(
        \modulator_0/clock_counter_c7 ), .B(
        \modulator_0/clock_counter[8]_net_1 ), .Y(
        \modulator_0/clock_counter_c8 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_6[3]  (.A(
        \data_source_0/tag_control_sig_1_RNO_13[3]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_14[3]_net_1 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_6[3]_net_1 ));
    NOR3B \data_source_0/counter_RNO_1[9]  (.A(\data_source_0/N_87 ), 
        .B(\data_source_0/counter[8]_net_1 ), .C(\data_source_0/N_34 ), 
        .Y(\data_source_0/N_68 ));
    NOR2B \data_source_0/tag_data_buf_4_RNO[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[6]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[7] ));
    NOR3B \data_source_0/counter_RNIC91K[11]  (.A(
        \data_source_0/counter_i_0[6] ), .B(
        \data_source_0/counter_i_0[7] ), .C(
        \data_source_0/counter[11]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a2_4 ));
    NOR2B \modulator_0/clock_counter_RNIB3OL[10]  (.A(
        \modulator_0/clock_counter_c9 ), .B(\modulator_0/un6lto10 ), 
        .Y(\modulator_0/clock_counter_c10 ));
    CLKINT \main_clock_0/clock_out_RNIG44  (.A(
        \main_clock_0/clock_out_i ), .Y(main_clock_0_clock_out));
    AXO3 \data_source_0/tag_control_sig_1_RNO_18[1]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index_0[3]_net_1 ), .C(
        \data_source_0/data_index[5]_net_1 ), .Y(
        \data_source_0/N_106_0 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_0[1]  (.A(
        \data_source_0/tag_control_sig_1_RNO_2[1]_net_1 ), .B(
        \data_source_0/N_96 ), .S(\data_source_0/data_index[2]_net_1 ), 
        .Y(\data_source_0/N_97 ));
    IOTRI_OB_EB \output_signal_pad[9]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[9]/U0/NET1 ), .EOUT(
        \output_signal_pad[9]/U0/NET2 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_6[2]  (.A(
        \data_source_0/N_2 ), .B(\data_source_0/N_6_0 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/N_7_1 ));
    OR2 \modulator_0/output_signal_RNO_7  (.A(
        \modulator_0/clock_counter[5]_net_1 ), .B(
        \modulator_0/clock_counter[4]_net_1 ), .Y(
        \modulator_0/un5lto5 ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[1]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[2] ));
    NOR2B \modulator_0/counter_RNO[4]  (.A(
        \modulator_0/counter_0_sqmuxa ), .B(
        \modulator_0/counter_n4_tz ), .Y(\modulator_0/counter_n4 ));
    NOR2B \modulator_0/clock_counter_RNI6GO8[6]  (.A(
        \modulator_0/clock_counter_c5 ), .B(\modulator_0/un5lto6 ), .Y(
        \modulator_0/clock_counter_c6 ));
    NOR2B \data_source_0/tag_data_buf_4_RNO[5]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[4]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[5] ));
    DFN1C0 \data_source_0/counter[11]  (.D(\data_source_0/counter_n11 )
        , .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \data_source_0/counter[11]_net_1 ));
    DFN1C0 \main_clock_0/counter[2]  (.D(\main_clock_0/I_7_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[2]_net_1 ));
    XNOR2 \data_source_0/data_index_RNIBTP8[5]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .Y(\data_source_0/N_4_0 )
        );
    DFN1E1P0 \data_source_0/tag_data_buf_3[0]  (.D(
        \data_source_0/tag_data_buf_3_4[0] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_3[0]_net_1 ));
    AXOI5 \data_source_0/tag_control_sig_1_RNO_18[3]  (.A(
        \data_source_0/N_5_0 ), .B(\data_source_0/data_index[3]_net_1 )
        , .C(\data_source_0/data_index[7]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_18[3]_net_1 ));
    AX1C \modulator_0/counter_RNO_0[2]  (.A(
        \modulator_0/counter[1]_net_1 ), .B(
        \modulator_0/counter[0]_net_1 ), .C(
        \modulator_0/counter[2]_net_1 ), .Y(
        \modulator_0/counter_n2_tz ));
    NOR2B \data_source_0/tag_data_buf_3_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[3]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[4] ));
    XAI1 \data_source_0/counter_RNO[3]  (.A(
        \data_source_0/counter_i_0[3] ), .B(\data_source_0/N_32 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/N_22 ));
    IOTRI_OB_EB \output_signal_pad[3]/U0/U1  (.D(\output_signal_c[3] ), 
        .E(VCC), .DOUT(\output_signal_pad[3]/U0/NET1 ), .EOUT(
        \output_signal_pad[3]/U0/NET2 ));
    AXO7 \data_source_0/tag_control_sig_1_RNO_20[1]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .C(
        \data_source_0/data_index[5]_net_1 ), .Y(
        \data_source_0/N_98_0 ));
    IOTRI_OB_EB \output_signal_pad[10]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[10]/U0/NET1 ), .EOUT(
        \output_signal_pad[10]/U0/NET2 ));
    OA1B \data_source_0/tag_control_sig_1_RNO_14[0]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index_0[3]_net_1 ), .C(
        \data_source_0/data_index[5]_net_1 ), .Y(\data_source_0/N_49 ));
    DFN1E1P0 \data_source_0/tag_data_buf_2[1]  (.D(
        \data_source_0/tag_data_buf_2_4[1] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[1]_net_1 ));
    DFN1C0 \data_source_0/data_index[7]  (.D(
        \data_source_0/data_index_3[7] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[7]_net_1 ));
    XA1A \data_source_0/counter_RNO[14]  (.A(\data_source_0/N_43 ), .B(
        \data_source_0/counter[14]_net_1 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/counter_n14 ));
    XA1A \data_source_0/tag_control_sig_1_RNO_11[2]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/data_index[4]_net_1 ), .C(\data_source_0/N_8 ), 
        .Y(\data_source_0/tag_control_sig_1_RNO_11[2]_net_1 ));
    XOR2 \main_clock_0/un5_counter_1_I_14  (.A(\main_clock_0/N_4 ), .B(
        \main_clock_0/counter[5]_net_1 ), .Y(\main_clock_0/I_14_0 ));
    XOR2 \data_source_0/un3_data_index_I_17  (.A(\data_source_0/N_3 ), 
        .B(\data_source_0/data_index[6]_net_1 ), .Y(
        \data_source_0/I_17 ));
    MIN3X \data_source_0/tag_control_sig_1_RNO_13[2]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index[5]_net_1 ), .C(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/N_6_0 ));
    OR2 \modulator_0/clock_counter_RNITDG2[7]  (.A(
        \modulator_0/clock_counter[8]_net_1 ), .B(
        \modulator_0/clock_counter[7]_net_1 ), .Y(
        \modulator_0/un6lto8 ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[3]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[2]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[3] ));
    DFN1E1C0 \modulator_0/clock_counter[10]  (.D(
        \modulator_0/clock_counter_n10 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/un6lto10 ));
    NOR2B \switching_circuit_0/un33_out_signal_switch_0  (.A(
        \data_source_0_tag_control_sig[3] ), .B(
        modulator_0_output_signal), .Y(
        \switching_circuit_0/un33_out_signal_switch_0_net_1 ));
    AX1C \data_source_0/un3_data_index_I_12  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/DWACT_FINC_E[0] ), .C(
        \data_source_0/data_index[4]_net_1 ), .Y(\data_source_0/I_12 ));
    OA1 \modulator_0/output_signal_RNO_2  (.A(\modulator_0/un5lto15_5 )
        , .B(\modulator_0/un5lto15_6 ), .C(AND2_0_Y), .Y(
        \modulator_0/output_signal_1_sqmuxa_0 ));
    NOR2B \modulator_0/clock_counter_RNIKM0A[7]  (.A(
        \modulator_0/clock_counter_c6 ), .B(
        \modulator_0/clock_counter[7]_net_1 ), .Y(
        \modulator_0/clock_counter_c7 ));
    DFN1P0 \data_source_0/counter[1]  (.D(\data_source_0/N_26 ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[1] ));
    DFN1E1C0 \modulator_0/clock_counter[7]  (.D(
        \modulator_0/clock_counter_n7 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[7]_net_1 ));
    NOR3B \switching_circuit_0/un1_out_signal_switch  (.A(
        \data_source_0_tag_control_sig[0] ), .B(main_clock_0_clock_out)
        , .C(modulator_0_output_signal), .Y(
        \switching_circuit_0/un1_out_signal_switch_net_1 ));
    IOPAD_TRI \output_signal_pad[19]/U0/U0  (.D(
        \output_signal_pad[19]/U0/NET1 ), .E(
        \output_signal_pad[19]/U0/NET2 ), .PAD(output_signal[19]));
    DFN1E1C0 \data_source_0/output_data[1]  (.D(
        \data_source_0/output_data_23[1] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(\data_source_0_output_data_0[1] ));
    XNOR2 \baseband_signal_0/tag_data_output_1[3]  (.A(
        main_clock_0_clock_out), .B(\data_source_0_output_data_0[3] ), 
        .Y(\baseband_signal_0_tag_data_output[3] ));
    DFN1E1C0 \modulator_0/clock_counter[6]  (.D(
        \modulator_0/clock_counter_n6 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/un5lto6 ));
    NOR2B \modulator_0/clock_counter_RNID686[4]  (.A(
        \modulator_0/clock_counter_c3 ), .B(
        \modulator_0/clock_counter[4]_net_1 ), .Y(
        \modulator_0/clock_counter_c4 ));
    NOR3 \main_clock_0/counter_RNIFVEB1[7]  (.A(
        \main_clock_0/counter[6]_net_1 ), .B(
        \main_clock_0/counter[7]_net_1 ), .C(
        \main_clock_0/counter[3]_net_1 ), .Y(
        \main_clock_0/counter14_3 ));
    NOR2B \data_source_0/counter_RNO_1[8]  (.A(
        \data_source_0/counter[9]_net_1 ), .B(\data_source_0/N_87 ), 
        .Y(\data_source_0/counter_n8_i_a3_0_0 ));
    DFN1C0 \main_clock_0/counter[5]  (.D(\main_clock_0/I_14_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[5]_net_1 ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[1]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[0]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[1] ));
    MX2 \data_source_0/tag_control_sig_1_RNO[0]  (.A(
        \data_source_0/N_52 ), .B(
        \data_source_0/tag_control_sig_1_RNO_1[0]_net_1 ), .S(
        \data_source_0/data_index[0]_net_1 ), .Y(
        \data_source_0/tag_control_sig_2[0] ));
    AO1 \switching_circuit_0/out_signal_switch_1[0]  (.A(
        \switching_circuit_0/un4_out_signal_switch_0_net_1 ), .B(
        \baseband_signal_0_tag_data_output[0] ), .C(
        \switching_circuit_0/un1_out_signal_switch_net_1 ), .Y(
        \output_signal_c[0] ));
    IOPAD_TRI \output_signal_pad[18]/U0/U0  (.D(
        \output_signal_pad[18]/U0/NET1 ), .E(
        \output_signal_pad[18]/U0/NET2 ), .PAD(output_signal[18]));
    IOPAD_TRI \output_signal_pad[17]/U0/U0  (.D(
        \output_signal_pad[17]/U0/NET1 ), .E(
        \output_signal_pad[17]/U0/NET2 ), .PAD(output_signal[17]));
    MX2A \data_source_0/tag_control_sig_1_RNO_4[0]  (.A(
        \data_source_0/tag_control_sig_1_RNO_10[0]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_11[0]_net_1 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_4[0]_net_1 ));
    DFN1E1C0 \data_source_0/output_data[2]  (.D(
        \data_source_0/output_data_23[2] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(\data_source_0_output_data_0[2] ));
    AO1A \data_source_0/counter_RNO_0[8]  (.A(\data_source_0/N_34 ), 
        .B(\data_source_0/counter_n8_i_a3_0_0 ), .C(
        \data_source_0/N_69 ), .Y(\data_source_0/counter_n8_i_0 ));
    NOR2B \modulator_0/clock_counter_RNIO0O3[2]  (.A(
        \modulator_0/clock_counter_c1 ), .B(
        \modulator_0/clock_counter[2]_net_1 ), .Y(
        \modulator_0/clock_counter_c2 ));
    XOR2 \data_source_0/un3_data_index_I_5  (.A(
        \data_source_0/data_index[0]_net_1 ), .B(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/I_5 ));
    DFN1E1C0 \modulator_0/clock_counter[0]  (.D(\modulator_0/N_121 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[0]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_9[1]  (.A(
        \data_source_0/N_94_0 ), .B(
        \data_source_0/data_index_0_RNITPGG[3]_net_1 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/N_95_0 ));
    XAI1 \data_source_0/counter_RNO[1]  (.A(
        \data_source_0/counter_i_0[0] ), .B(
        \data_source_0/counter_i_0[1] ), .C(modulator_0_output_signal), 
        .Y(\data_source_0/N_26 ));
    NOR2B \data_source_0/tag_data_buf_2_RNIQTOS[7]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[7]_net_1 ), .Y(
        \data_source_0/output_data_23[1] ));
    DFN1E1C0 \data_source_0/tag_data_buf_1[1]  (.D(
        \data_source_0/tag_data_buf_1_4[1] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[1]_net_1 ));
    XAI1 \data_source_0/counter_RNO[2]  (.A(
        \data_source_0/counter_i_0[2] ), .B(\data_source_0/N_31 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/N_24 ));
    NOR2B \data_source_0/tag_data_buf_3_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[1]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[2] ));
    XOR2 \main_clock_0/un5_counter_1_I_5  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .Y(\main_clock_0/I_5_0 ));
    DFN1E1C0 \data_source_0/tag_data_buf_3[7]  (.D(
        \data_source_0/tag_data_buf_3_4[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_3[7]_net_1 ));
    XA1A \data_source_0/counter_RNO[13]  (.A(\data_source_0/N_42 ), .B(
        \data_source_0/counter[13]_net_1 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/counter_n13 ));
    DFN1E1C0 \data_source_0/tag_data_buf_3[5]  (.D(
        \data_source_0/tag_data_buf_3_4[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_3[5]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_1[6]  (.D(
        \data_source_0/tag_data_buf_1_4[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[6]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_1[2]  (.D(
        \data_source_0/tag_data_buf_1_4[2] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[2]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[0]  (.D(
        \data_source_0/output_data_23[3] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_4[0]_net_1 ));
    IOIN_IB \trigger_signal_pad/U0/U1  (.YIN(
        \trigger_signal_pad/U0/NET1 ), .Y(trigger_signal_c));
    AND3 \main_clock_0/un5_counter_1_I_13  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/counter[3]_net_1 ), .C(
        \main_clock_0/counter[4]_net_1 ), .Y(\main_clock_0/N_4 ));
    NOR2B \data_source_0/tag_data_buf_4_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[5]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[6] ));
    XNOR2 \baseband_signal_0/tag_data_output_1[0]  (.A(
        main_clock_0_clock_out), .B(\data_source_0_output_data_0[0] ), 
        .Y(\baseband_signal_0_tag_data_output[0] ));
    ULSICC_INT INT_ULSICC_INSTANCE_0 (.USTDBY(GND), .LPENA(GND));
    NOR3C \data_source_0/counter_RNO_1[5]  (.A(
        \data_source_0/counter[8]_net_1 ), .B(
        \data_source_0/counter[9]_net_1 ), .C(\data_source_0/N_87 ), 
        .Y(\data_source_0/N_73 ));
    IOPAD_TRI \output_signal_pad[0]/U0/U0  (.D(
        \output_signal_pad[0]/U0/NET1 ), .E(
        \output_signal_pad[0]/U0/NET2 ), .PAD(output_signal[0]));
    OA1C \data_source_0/tag_control_sig_1_RNO_12[0]  (.A(
        \data_source_0/data_index_RNIBTP8_1[5]_net_1 ), .B(
        \data_source_0/data_index[4]_net_1 ), .C(
        \data_source_0/data_index[7]_net_1 ), .Y(
        \data_source_0/i4_mux_1 ));
    NOR3B \switching_circuit_0/un10_out_signal_switch  (.A(
        \data_source_0_tag_control_sig[1] ), .B(main_clock_0_clock_out)
        , .C(modulator_0_output_signal), .Y(
        \switching_circuit_0/un10_out_signal_switch_net_1 ));
    IOTRI_OB_EB \output_signal_pad[12]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[12]/U0/NET1 ), .EOUT(
        \output_signal_pad[12]/U0/NET2 ));
    NOR2 \modulator_0/counter_RNITMOV[2]  (.A(
        \modulator_0/counter[2]_net_1 ), .B(
        \modulator_0/counter[3]_net_1 ), .Y(\modulator_0/counter19_3 ));
    DFN1C0 \main_clock_0/counter[6]  (.D(\main_clock_0/I_17_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[6]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_3[2]  (.A(
        \data_source_0/N_21 ), .B(
        \data_source_0/tag_control_sig_1_RNO_9[2]_net_1 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_25 ));
    NOR2B \modulator_0/clock_counter_RNI41VU[11]  (.A(
        \modulator_0/clock_counter_c10 ), .B(\modulator_0/un6lto11 ), 
        .Y(\modulator_0/clock_counter_c11 ));
    AXOI4 \data_source_0/tag_control_sig_1_RNO_16[2]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .C(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/N_23 ));
    AOI1B \data_source_0/data_index_RNO[1]  (.A(\data_source_0/m115_3 )
        , .B(\data_source_0/N_2 ), .C(\data_source_0/I_5 ), .Y(
        \data_source_0/data_index_3[1] ));
    AND3 \data_source_0/un3_data_index_I_10  (.A(
        \data_source_0/data_index[0]_net_1 ), .B(
        \data_source_0/data_index[1]_net_1 ), .C(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/DWACT_FINC_E[0] ));
    DFN1E1C0 \modulator_0/clock_counter[2]  (.D(
        \modulator_0/clock_counter_n2 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[2]_net_1 ));
    IOPAD_TRI \output_signal_pad[2]/U0/U0  (.D(
        \output_signal_pad[2]/U0/NET1 ), .E(
        \output_signal_pad[2]/U0/NET2 ), .PAD(output_signal[2]));
    AX1C \main_clock_0/clock_out_RNO  (.A(\main_clock_0/counter14_3 ), 
        .B(\main_clock_0/counter14_4 ), .C(\main_clock_0/clock_out_i ), 
        .Y(\main_clock_0/clock_out_RNO_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[5]  (.D(
        \data_source_0/tag_data_buf_2_4[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[5]_net_1 ));
    NOR2B \modulator_0/output_signal_RNO_11  (.A(\modulator_0/un5lto6 )
        , .B(\modulator_0/clock_counter[5]_net_1 ), .Y(
        \modulator_0/un6lto6_0 ));
    NOR2B \data_source_0/output_data_RNO[0]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[7]_net_1 ), .Y(
        \data_source_0/output_data_23[0] ));
    NOR2A \data_source_0/data_index_RNIEP6D_2[3]  (.A(
        \data_source_0/data_index_RNIBTP8_1[5]_net_1 ), .B(
        \data_source_0/data_index[3]_net_1 ), .Y(
        \data_source_0/N_54_0 ));
    NOR2 \data_source_0/data_index_RNIBTP8_2[5]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .Y(\data_source_0/N_5_0 )
        );
    NOR3B \switching_circuit_0/un20_out_signal_switch  (.A(
        \data_source_0_tag_control_sig[2] ), .B(main_clock_0_clock_out)
        , .C(modulator_0_output_signal), .Y(
        \switching_circuit_0/un20_out_signal_switch_net_1 ));
    IOPAD_TRI \output_signal_pad[10]/U0/U0  (.D(
        \output_signal_pad[10]/U0/NET1 ), .E(
        \output_signal_pad[10]/U0/NET2 ), .PAD(output_signal[10]));
    DFN1E1C0 \modulator_0/clock_counter[9]  (.D(
        \modulator_0/clock_counter_n9 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/un6lto9 ));
    MX2B \data_source_0/tag_control_sig_1_RNO[1]  (.A(
        \data_source_0/N_97 ), .B(\data_source_0/N_109 ), .S(
        \data_source_0/data_index[0]_net_1 ), .Y(
        \data_source_0/N_110_0 ));
    IOTRI_OB_EB \output_signal_pad[15]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[15]/U0/NET1 ), .EOUT(
        \output_signal_pad[15]/U0/NET2 ));
    NOR2B \switching_circuit_0/un4_out_signal_switch_0  (.A(
        \data_source_0_tag_control_sig[0] ), .B(
        modulator_0_output_signal), .Y(
        \switching_circuit_0/un4_out_signal_switch_0_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_2[3]  (.A(
        \data_source_0/tag_control_sig_1_RNO_6[3]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_7[3]_net_1 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_2[3]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_10[1]  (.A(
        \data_source_0/N_99_0 ), .B(\data_source_0/N_100 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/N_101 ));
    NOR3B \data_source_0/tag_control_sig_1_RNO_5[0]  (.A(
        \data_source_0/data_index_0[4]_net_1 ), .B(
        \data_source_0/data_index_0_RNITPGG[3]_net_1 ), .C(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_119_mux ));
    DFN1E1C0 \modulator_0/output_signal  (.D(
        \modulator_0/output_signal_1_sqmuxa_0_0 ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \modulator_0/clock_countere ), .Q(
        \modulator_0/output_signal_i ));
    MX2 \data_source_0/tag_control_sig_1_RNO_0[3]  (.A(
        \data_source_0/tag_control_sig_1_RNO_2[3]_net_1 ), .B(
        \data_source_0/N_77 ), .S(\data_source_0/data_index[2]_net_1 ), 
        .Y(\data_source_0/tag_control_sig_1_RNO_0[3]_net_1 ));
    DFN1E1 \data_source_0/tag_control_sig_1[3]  (.D(
        \data_source_0/tag_control_sig_2[3] ), .CLK(
        main_clock_0_clock_out), .E(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ), .Q(
        \data_source_0_tag_control_sig[3] ));
    DFN1E1C0 \data_source_0/tag_data_buf_3[2]  (.D(
        \data_source_0/tag_data_buf_3_4[2] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_3[2]_net_1 ));
    AXOI5 \data_source_0/tag_control_sig_1_RNO_16[0]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index_0[3]_net_1 ), .C(
        \data_source_0/data_index[5]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_16[0]_net_1 ));
    NOR2 \data_source_0/tag_control_sig_1_RNO_15[3]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(\data_source_0/N_4_0 )
        , .Y(\data_source_0/tag_control_sig_1_RNO_15[3]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[0]  (.D(
        \data_source_0/output_data_23[1] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[0]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_8[2]  (.A(
        \data_source_0/N_17 ), .B(
        \data_source_0/tag_control_sig_1_RNO_15[2]_net_1 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/N_21 ));
    DFN1P0 \data_source_0/counter[0]  (.D(\data_source_0/counter_n0 ), 
        .CLK(main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[0] ));
    NOR2B \data_source_0/tag_data_buf_4_RNO[1]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_4[0]_net_1 ), .Y(
        \data_source_0/tag_data_buf_4_4[1] ));
    MX2A \data_source_0/tag_control_sig_1_RNO_4[2]  (.A(
        \data_source_0/N_30 ), .B(
        \data_source_0/tag_control_sig_1_RNO_11[2]_net_1 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_4[2]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_11[0]  (.A(
        \data_source_0/data_index_RNIEP6D_0[3]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_16[0]_net_1 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_11[0]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[6]  (.D(
        \data_source_0/tag_data_buf_4_4[6] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_4[6]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[4]  (.D(
        \data_source_0/tag_data_buf_4_4[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_4[4]_net_1 ));
    NOR2 \modulator_0/counter_RNIPIOV[1]  (.A(
        \modulator_0/counter[0]_net_1 ), .B(
        \modulator_0/counter[1]_net_1 ), .Y(\modulator_0/counter23_1 ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_5[1]  (.A(
        \data_source_0/data_index[4]_net_1 ), .B(
        \data_source_0/i5_mux ), .Y(\data_source_0/i4_mux_0 ));
    DFN1E1 \data_source_0/tag_control_sig_1[1]  (.D(
        \data_source_0/N_110_0 ), .CLK(main_clock_0_clock_out), .E(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ), .Q(
        \data_source_0_tag_control_sig[1] ));
    AND2 AND2_0 (.A(trigger_signal_c), .B(mac_control_signal_c), .Y(
        AND2_0_Y));
    NOR2A \data_source_0/data_index_RNIASP8_0[3]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(
        \data_source_0/data_index[3]_net_1 ), .Y(\data_source_0/N_2 ));
    NOR2A \data_source_0/tag_control_sig_1_sqmuxa  (.A(reset_c), .B(
        modulator_0_output_signal), .Y(
        \data_source_0/tag_control_sig_1_sqmuxa_net_1 ));
    NOR3A \data_source_0/tag_control_sig_1_RNO_7[1]  (.A(
        \data_source_0/N_8 ), .B(\data_source_0/data_index[3]_net_1 ), 
        .C(\data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/N_89 ));
    IOPAD_TRI \output_signal_pad[1]/U0/U0  (.D(
        \output_signal_pad[1]/U0/NET1 ), .E(
        \output_signal_pad[1]/U0/NET2 ), .PAD(output_signal[1]));
    AOI1B \data_source_0/data_index_RNO[7]  (.A(\data_source_0/m115_3 )
        , .B(\data_source_0/N_2 ), .C(\data_source_0/I_20 ), .Y(
        \data_source_0/data_index_3[7] ));
    AO1 \switching_circuit_0/out_signal_switch_1[3]  (.A(
        \switching_circuit_0/un33_out_signal_switch_0_net_1 ), .B(
        \baseband_signal_0_tag_data_output[3] ), .C(
        \switching_circuit_0/un30_out_signal_switch_net_1 ), .Y(
        \output_signal_c[3] ));
    DFN1E1C0 \modulator_0/clock_counter[4]  (.D(
        \modulator_0/clock_counter_n4 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[4]_net_1 ));
    XAI1 \data_source_0/counter_RNO[7]  (.A(
        \data_source_0/counter_i_0[7] ), .B(\data_source_0/N_36 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/N_14 ));
    IOTRI_OB_EB \output_signal_pad[0]/U0/U1  (.D(\output_signal_c[0] ), 
        .E(VCC), .DOUT(\output_signal_pad[0]/U0/NET1 ), .EOUT(
        \output_signal_pad[0]/U0/NET2 ));
    NOR2 \data_source_0/tag_control_sig_1_RNO_17[3]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_17[3]_net_1 ));
    NOR2B \modulator_0/clock_counter_RNIUV581[12]  (.A(
        \modulator_0/clock_counter_c11 ), .B(\modulator_0/un6lto12 ), 
        .Y(\modulator_0/clock_counter_c12 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_8[1]  (.A(
        \data_source_0/N_92_0 ), .B(\data_source_0/N_9 ), .S(
        \data_source_0/data_index[4]_net_1 ), .Y(
        \data_source_0/N_93_0 ));
    MX2 \data_source_0/tag_control_sig_1_RNO[3]  (.A(
        \data_source_0/tag_control_sig_1_RNO_0[3]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_1[3]_net_1 ), .S(
        \data_source_0/data_index[0]_net_1 ), .Y(
        \data_source_0/tag_control_sig_2[3] ));
    DFN1E1C0 \data_source_0/tag_data_buf_2[4]  (.D(
        \data_source_0/tag_data_buf_2_4[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_2[4]_net_1 ));
    NOR2B \data_source_0/counter_RNIVPDJ_0[1]  (.A(
        \data_source_0/counter_i_0[1] ), .B(
        \data_source_0/counter_i_0[0] ), .Y(\data_source_0/N_90 ));
    NOR3A \data_source_0/counter_RNI0KGB[15]  (.A(
        \data_source_0/counter_n9_i_a2_2 ), .B(
        \data_source_0/counter[15]_net_1 ), .C(
        \data_source_0/counter[5]_net_1 ), .Y(
        \data_source_0/counter_n9_i_a2_5 ));
    NOR2B \data_source_0/tag_data_buf_3_RNO[3]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[2]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[3] ));
    IOTRI_OB_EB \output_signal_pad[2]/U0/U1  (.D(\output_signal_c[2] ), 
        .E(VCC), .DOUT(\output_signal_pad[2]/U0/NET1 ), .EOUT(
        \output_signal_pad[2]/U0/NET2 ));
    XA1 \modulator_0/clock_counter_RNO[9]  (.A(
        \modulator_0/clock_counter_c8 ), .B(\modulator_0/un6lto9 ), .C(
        AND2_0_Y), .Y(\modulator_0/clock_counter_n9 ));
    XA1 \modulator_0/counter_RNO[5]  (.A(
        \modulator_0/counter[5]_net_1 ), .B(\modulator_0/counter_45_0 )
        , .C(\modulator_0/counter_0_sqmuxa ), .Y(
        \modulator_0/counter_n5 ));
    OR3 \modulator_0/output_signal_RNO_12  (.A(
        \modulator_0/clock_counter[2]_net_1 ), .B(
        \modulator_0/clock_counter[3]_net_1 ), .C(
        \modulator_0/un6lt4_2 ), .Y(\modulator_0/un6lto4 ));
    XA1 \modulator_0/clock_counter_RNO[14]  (.A(
        \modulator_0/clock_counter_c13 ), .B(
        \modulator_0/clock_counter[14]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n14 ));
    AND3 \main_clock_0/un5_counter_1_I_18  (.A(
        \main_clock_0/counter[3]_net_1 ), .B(
        \main_clock_0/counter[4]_net_1 ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(
        \main_clock_0/DWACT_FINC_E[2] ));
    MX2B \data_source_0/tag_control_sig_1_RNO_14[3]  (.A(
        \data_source_0/N_4_0 ), .B(\data_source_0/data_index[7]_net_1 )
        , .S(\data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_14[3]_net_1 ));
    DFN1C0 \data_source_0/data_index[1]  (.D(
        \data_source_0/data_index_3[1] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[1]_net_1 ));
    CLKIO \reset_pad/U0/U1  (.A(\reset_pad/U0/NET1 ), .Y(reset_c));
    AO1 \modulator_0/output_signal_RNO_3  (.A(\modulator_0/un6lt9 ), 
        .B(\modulator_0/un6lto9 ), .C(\modulator_0/un6lto10 ), .Y(
        \modulator_0/un6lt11 ));
    IOPAD_TRI \output_signal_pad[12]/U0/U0  (.D(
        \output_signal_pad[12]/U0/NET1 ), .E(
        \output_signal_pad[12]/U0/NET2 ), .PAD(output_signal[12]));
    MX2 \data_source_0/tag_control_sig_1_RNO_16[3]  (.A(
        \data_source_0/data_index_RNIDVP8[7]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_20[3]_net_1 ), .S(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_16[3]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[12]  (.A(
        \modulator_0/clock_counter_c11 ), .B(\modulator_0/un6lto12 ), 
        .C(AND2_0_Y), .Y(\modulator_0/clock_counter_n12 ));
    NOR2B \data_source_0/tag_data_buf_2_RNO[2]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[1]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[2] ));
    DFN1C0 \data_source_0/data_index[2]  (.D(
        \data_source_0/data_index_3[2] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[2]_net_1 ));
    DFN1E1P0 \data_source_0/tag_data_buf_4[2]  (.D(
        \data_source_0/tag_data_buf_4_4[2] ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_4[2]_net_1 ));
    AOI1B \data_source_0/data_index_RNO[2]  (.A(\data_source_0/m115_3 )
        , .B(\data_source_0/N_2 ), .C(\data_source_0/I_7 ), .Y(
        \data_source_0/data_index_3[2] ));
    NOR2B \data_source_0/tag_data_buf_1_RNO[4]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_1[3]_net_1 ), .Y(
        \data_source_0/tag_data_buf_1_4[4] ));
    MX2A \data_source_0/tag_control_sig_1_RNO_3[3]  (.A(
        \data_source_0/tag_control_sig_1_RNO_8[3]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_9[3]_net_1 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(\data_source_0/N_77 ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_13[3]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/data_index_RNIDVP8[7]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_13[3]_net_1 ));
    MX2C \data_source_0/tag_control_sig_1_RNO_13[0]  (.A(
        \data_source_0/N_8 ), .B(\data_source_0/data_index[7]_net_1 ), 
        .S(\data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/N_46 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_0[2]  (.A(
        \data_source_0/N_13 ), .B(\data_source_0/N_25 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_0[2]_net_1 ));
    NOR3B \switching_circuit_0/un30_out_signal_switch  (.A(
        \data_source_0_tag_control_sig[3] ), .B(main_clock_0_clock_out)
        , .C(modulator_0_output_signal), .Y(
        \switching_circuit_0/un30_out_signal_switch_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[1]  (.D(
        \data_source_0/tag_data_buf_4_4[1] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_4[1]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_1[7]  (.D(
        \data_source_0/tag_data_buf_1_4[7] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[7]_net_1 ));
    NOR2B \data_source_0/data_index_RNIEP6D_0[3]  (.A(
        \data_source_0/data_index[3]_net_1 ), .B(
        \data_source_0/data_index_RNIBTP8_1[5]_net_1 ), .Y(
        \data_source_0/data_index_RNIEP6D_0[3]_net_1 ));
    OR2B \data_source_0/counter_RNO[0]  (.A(
        \data_source_0/counter_i_0[0] ), .B(modulator_0_output_signal), 
        .Y(\data_source_0/counter_n0 ));
    DFN1C0 \modulator_0/counter[2]  (.D(\modulator_0/counter_n2 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/counter[2]_net_1 ));
    NOR3C \data_source_0/data_index_0_RNI19NT[4]  (.A(
        \data_source_0/m115_1 ), .B(
        \data_source_0/data_index_0[4]_net_1 ), .C(
        \data_source_0/N_5_0 ), .Y(\data_source_0/m115_3 ));
    OR3 \modulator_0/output_signal_RNO_5  (.A(\modulator_0/un5lto15_2 )
        , .B(\modulator_0/un5lto15_1 ), .C(\modulator_0/un5lto15_3 ), 
        .Y(\modulator_0/un5lto15_6 ));
    NOR2B \modulator_0/clock_counter_RNIPAG7[5]  (.A(
        \modulator_0/clock_counter_c4 ), .B(
        \modulator_0/clock_counter[5]_net_1 ), .Y(
        \modulator_0/clock_counter_c5 ));
    AND3 \data_source_0/un3_data_index_I_13  (.A(
        \data_source_0/DWACT_FINC_E[0] ), .B(
        \data_source_0/data_index_0[3]_net_1 ), .C(
        \data_source_0/data_index_0[4]_net_1 ), .Y(\data_source_0/N_4 )
        );
    IOTRI_OB_EB \output_signal_pad[1]/U0/U1  (.D(\output_signal_c[1] ), 
        .E(VCC), .DOUT(\output_signal_pad[1]/U0/NET1 ), .EOUT(
        \output_signal_pad[1]/U0/NET2 ));
    NOR3B \data_source_0/data_index_0_RNITPGG[3]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index[5]_net_1 ), .C(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/data_index_0_RNITPGG[3]_net_1 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_4[1]  (.A(
        \data_source_0/N_101 ), .B(\data_source_0/N_103 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/N_104_0 ));
    XA1A \data_source_0/counter_RNO[11]  (.A(\data_source_0/N_40 ), .B(
        \data_source_0/counter[11]_net_1 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/counter_n11 ));
    OR2A \data_source_0/counter_RNI4GC23[11]  (.A(
        \data_source_0/counter[11]_net_1 ), .B(\data_source_0/N_40 ), 
        .Y(\data_source_0/N_41 ));
    IOPAD_TRI \output_signal_pad[15]/U0/U0  (.D(
        \output_signal_pad[15]/U0/NET1 ), .E(
        \output_signal_pad[15]/U0/NET2 ), .PAD(output_signal[15]));
    XA1 \modulator_0/counter_RNO[1]  (.A(
        \modulator_0/counter[0]_net_1 ), .B(
        \modulator_0/counter[1]_net_1 ), .C(
        \modulator_0/counter_0_sqmuxa ), .Y(\modulator_0/counter_n1 ));
    NOR2A \data_source_0/data_index_RNIBTP8_1[5]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .Y(
        \data_source_0/data_index_RNIBTP8_1[5]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_11[1]  (.A(
        \data_source_0/N_54_0 ), .B(\data_source_0/N_102 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/N_103 ));
    DFN1C0 \modulator_0/counter[4]  (.D(\modulator_0/counter_n4 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/counter[4]_net_1 ));
    DFN1C0 \modulator_0/counter[5]  (.D(\modulator_0/counter_n5 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/counter[5]_net_1 ));
    AND3 \data_source_0/un3_data_index_I_18  (.A(
        \data_source_0/data_index_0[3]_net_1 ), .B(
        \data_source_0/data_index_0[4]_net_1 ), .C(
        \data_source_0/data_index[5]_net_1 ), .Y(
        \data_source_0/DWACT_FINC_E[2] ));
    NOR2B \modulator_0/counter_RNISLOV[4]  (.A(
        \modulator_0/counter[4]_net_1 ), .B(
        \modulator_0/counter[0]_net_1 ), .Y(\modulator_0/counter19_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_4[5]  (.D(
        \data_source_0/tag_data_buf_4_4[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_4[5]_net_1 ));
    DFN1C0 \main_clock_0/counter[3]  (.D(\main_clock_0/I_9_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[3]_net_1 ));
    IOPAD_TRI \output_signal_pad[6]/U0/U0  (.D(
        \output_signal_pad[6]/U0/NET1 ), .E(
        \output_signal_pad[6]/U0/NET2 ), .PAD(output_signal[6]));
    NOR3C \modulator_0/counter_RNO_0[5]  (.A(
        \modulator_0/counter[3]_net_1 ), .B(\modulator_0/counter_c2 ), 
        .C(\modulator_0/counter[4]_net_1 ), .Y(
        \modulator_0/counter_45_0 ));
    NOR2A \data_source_0/tag_control_sig_1_RNO_7[0]  (.A(
        \data_source_0/N_2 ), .B(\data_source_0/data_index[4]_net_1 ), 
        .Y(\data_source_0/tag_control_sig_1_RNO_7[0]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_1[3]  (.A(
        \data_source_0/tag_control_sig_1_RNO_4[3]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_5[3]_net_1 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_1[3]_net_1 ));
    DFN1C0 \modulator_0/counter[3]  (.D(\modulator_0/counter_n3 ), 
        .CLK(main_clock_0_clock_out), .CLR(reset_c), .Q(
        \modulator_0/counter[3]_net_1 ));
    IOPAD_IN \mac_control_signal_pad/U0/U0  (.PAD(mac_control_signal), 
        .Y(\mac_control_signal_pad/U0/NET1 ));
    NOR2A \modulator_0/counter_RNO[0]  (.A(
        \modulator_0/counter_0_sqmuxa ), .B(
        \modulator_0/counter[0]_net_1 ), .Y(\modulator_0/counter_n0 ));
    DFN1E1C0 \modulator_0/clock_counter[15]  (.D(
        \modulator_0/clock_counter_n15 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[15]_net_1 ));
    DFN1E1C0 \data_source_0/tag_data_buf_3[4]  (.D(
        \data_source_0/tag_data_buf_3_4[4] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(
        \data_source_0/tag_data_buf_3[4]_net_1 ));
    XNOR2 \baseband_signal_0/tag_data_output_1[1]  (.A(
        main_clock_0_clock_out), .B(\data_source_0_output_data_0[1] ), 
        .Y(\baseband_signal_0_tag_data_output[1] ));
    MX2 \data_source_0/tag_control_sig_1_RNO[2]  (.A(
        \data_source_0/tag_control_sig_1_RNO_0[2]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_1[2]_net_1 ), .S(
        \data_source_0/data_index[0]_net_1 ), .Y(
        \data_source_0/tag_control_sig_2[2] ));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    AOI1 \main_clock_0/counter_RNO[0]  (.A(\main_clock_0/counter14_4 ), 
        .B(\main_clock_0/counter14_3 ), .C(
        \main_clock_0/counter[0]_net_1 ), .Y(
        \main_clock_0/counter_3[0] ));
    OR2A \data_source_0/tag_data_buf_3_RNO[0]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_3[7]_net_1 ), .Y(
        \data_source_0/tag_data_buf_3_4[0] ));
    NOR2 \data_source_0/data_index_RNIDVP8[7]  (.A(
        \data_source_0/data_index[7]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .Y(
        \data_source_0/data_index_RNIDVP8[7]_net_1 ));
    MX2A \data_source_0/tag_control_sig_1_RNO_14[2]  (.A(
        \data_source_0/data_index_RNIBTP8_1[5]_net_1 ), .B(
        \data_source_0/tag_control_sig_1_RNO_18[2]_net_1 ), .S(
        \data_source_0/data_index_0[3]_net_1 ), .Y(
        \data_source_0/N_17 ));
    AOI1 \data_source_0/data_index_RNIIT6D_0[7]  (.A(
        \data_source_0/data_index[5]_net_1 ), .B(
        \data_source_0/data_index[6]_net_1 ), .C(
        \data_source_0/data_index[7]_net_1 ), .Y(\data_source_0/N_19 ));
    XA1 \modulator_0/clock_counter_RNO[2]  (.A(
        \modulator_0/clock_counter[2]_net_1 ), .B(
        \modulator_0/clock_counter_c1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n2 ));
    XOR2 \main_clock_0/un5_counter_1_I_20  (.A(\main_clock_0/N_2 ), .B(
        \main_clock_0/counter[7]_net_1 ), .Y(\main_clock_0/I_20_0 ));
    MX2B \data_source_0/tag_control_sig_1_RNO_10[2]  (.A(
        \data_source_0/N_27 ), .B(
        \data_source_0/tag_control_sig_1_RNO_17[2]_net_1 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/N_30 ));
    DFN1C0 \data_source_0/data_index[5]  (.D(\data_source_0/I_14 ), 
        .CLK(modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index[5]_net_1 ));
    XA1 \modulator_0/clock_counter_RNO[8]  (.A(
        \modulator_0/clock_counter_c7 ), .B(
        \modulator_0/clock_counter[8]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n8 ));
    XOR2 \main_clock_0/un5_counter_1_I_9  (.A(\main_clock_0/N_6 ), .B(
        \main_clock_0/counter[3]_net_1 ), .Y(\main_clock_0/I_9_0 ));
    AX1C \modulator_0/counter_RNO_0[4]  (.A(
        \modulator_0/counter[3]_net_1 ), .B(\modulator_0/counter_c2 ), 
        .C(\modulator_0/counter[4]_net_1 ), .Y(
        \modulator_0/counter_n4_tz ));
    AND3 \main_clock_0/un5_counter_1_I_8  (.A(
        \main_clock_0/counter[0]_net_1 ), .B(
        \main_clock_0/counter[1]_net_1 ), .C(
        \main_clock_0/counter[2]_net_1 ), .Y(\main_clock_0/N_6 ));
    AX1C \data_source_0/un3_data_index_I_7  (.A(
        \data_source_0/data_index[1]_net_1 ), .B(
        \data_source_0/data_index[0]_net_1 ), .C(
        \data_source_0/data_index[2]_net_1 ), .Y(\data_source_0/I_7 ));
    XA1 \modulator_0/clock_counter_RNO[7]  (.A(
        \modulator_0/clock_counter_c6 ), .B(
        \modulator_0/clock_counter[7]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n7 ));
    DFN1P0 \data_source_0/counter[4]  (.D(\data_source_0/N_20 ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[4] ));
    AO1 \switching_circuit_0/out_signal_switch_1[1]  (.A(
        \switching_circuit_0/un13_out_signal_switch_0_net_1 ), .B(
        \baseband_signal_0_tag_data_output[1] ), .C(
        \switching_circuit_0/un10_out_signal_switch_net_1 ), .Y(
        \output_signal_c[1] ));
    IOIN_IB \clock_pad/U0/U1  (.YIN(\clock_pad/U0/NET1 ), .Y(clock_c));
    AO1 \switching_circuit_0/out_signal_switch_1[2]  (.A(
        \switching_circuit_0/un23_out_signal_switch_0_net_1 ), .B(
        \baseband_signal_0_tag_data_output[2] ), .C(
        \switching_circuit_0/un20_out_signal_switch_net_1 ), .Y(
        \output_signal_c[2] ));
    IOPAD_TRI \output_signal_pad[4]/U0/U0  (.D(
        \output_signal_pad[4]/U0/NET1 ), .E(
        \output_signal_pad[4]/U0/NET2 ), .PAD(output_signal[4]));
    DFN1E1C0 \data_source_0/tag_data_buf_1[5]  (.D(
        \data_source_0/tag_data_buf_1_4[5] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29 ), .Q(
        \data_source_0/tag_data_buf_1[5]_net_1 ));
    NOR2A \modulator_0/clock_counter_RNO[0]  (.A(AND2_0_Y), .B(
        \modulator_0/clock_counter[0]_net_1 ), .Y(\modulator_0/N_121 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_5[3]  (.A(
        \data_source_0/tag_control_sig_1_RNO_12[3]_net_1 ), .B(
        \data_source_0/data_index_RNIEP6D_0[3]_net_1 ), .S(
        \data_source_0/data_index[1]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_5[3]_net_1 ));
    DFN1E1C0 \modulator_0/clock_counter[13]  (.D(
        \modulator_0/clock_counter_n13 ), .CLK(main_clock_0_clock_out), 
        .CLR(reset_c), .E(\modulator_0/clock_countere ), .Q(
        \modulator_0/clock_counter[13]_net_1 ));
    NOR3A \modulator_0/counter_RNIUHHV1[5]  (.A(
        \modulator_0/counter19_3 ), .B(\modulator_0/counter[4]_net_1 ), 
        .C(\modulator_0/counter[5]_net_1 ), .Y(
        \modulator_0/counter23_2 ));
    OA1C \data_source_0/tag_control_sig_1_RNO_17[1]  (.A(
        \data_source_0/N_8 ), .B(\data_source_0/data_index_0[3]_net_1 )
        , .C(\data_source_0/data_index[7]_net_1 ), .Y(
        \data_source_0/N_102 ));
    DFN1C0 \data_source_0/data_index_0[4]  (.D(
        \data_source_0/data_index_3[4] ), .CLK(
        modulator_0_output_signal), .CLR(reset_c), .Q(
        \data_source_0/data_index_0[4]_net_1 ));
    OR2A \data_source_0/counter_RNI3B613[9]  (.A(
        \data_source_0/counter[9]_net_1 ), .B(\data_source_0/N_38 ), 
        .Y(\data_source_0/N_39 ));
    IOPAD_IN \clock_pad/U0/U0  (.PAD(clock), .Y(\clock_pad/U0/NET1 ));
    IOPAD_TRI \output_signal_pad[8]/U0/U0  (.D(
        \output_signal_pad[8]/U0/NET1 ), .E(
        \output_signal_pad[8]/U0/NET2 ), .PAD(output_signal[8]));
    XA1 \modulator_0/clock_counter_RNO[5]  (.A(
        \modulator_0/clock_counter_c4 ), .B(
        \modulator_0/clock_counter[5]_net_1 ), .C(AND2_0_Y), .Y(
        \modulator_0/clock_counter_n5 ));
    AND3 \data_source_0/un3_data_index_I_8  (.A(
        \data_source_0/data_index[0]_net_1 ), .B(
        \data_source_0/data_index[1]_net_1 ), .C(
        \data_source_0/data_index[2]_net_1 ), .Y(\data_source_0/N_6 ));
    AND3 \main_clock_0/un5_counter_1_I_19  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/DWACT_FINC_E[2] ), .C(
        \main_clock_0/counter[6]_net_1 ), .Y(\main_clock_0/N_2 ));
    DFN1P0 \data_source_0/counter[3]  (.D(\data_source_0/N_22 ), .CLK(
        main_clock_0_clock_out), .PRE(reset_c), .Q(
        \data_source_0/counter_i_0[3] ));
    NOR3 \data_source_0/tag_control_sig_1_RNO_12[2]  (.A(
        \data_source_0/data_index[4]_net_1 ), .B(
        \data_source_0/data_index[3]_net_1 ), .C(
        \data_source_0/data_index_RNIIT6D[7]_net_1 ), .Y(
        \data_source_0/N_118_mux_0 ));
    DFN1E1C0 \data_source_0/output_data[0]  (.D(
        \data_source_0/output_data_23[0] ), .CLK(
        main_clock_0_clock_out), .CLR(reset_c), .E(
        \data_source_0/N_29_0 ), .Q(\data_source_0_output_data_0[0] ));
    IOTRI_OB_EB \output_signal_pad[6]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \output_signal_pad[6]/U0/NET1 ), .EOUT(
        \output_signal_pad[6]/U0/NET2 ));
    NOR2A \data_source_0/data_index_RNIBTP8_0[5]  (.A(
        \data_source_0/data_index[6]_net_1 ), .B(
        \data_source_0/data_index[5]_net_1 ), .Y(\data_source_0/N_8 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_0[0]  (.A(
        \data_source_0/N_45 ), .B(\data_source_0/N_51_0 ), .S(
        \data_source_0/data_index[2]_net_1 ), .Y(\data_source_0/N_52 ));
    NOR2B \data_source_0/tag_data_buf_2_RNO[3]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[2]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[3] ));
    NOR2B \data_source_0/tag_data_buf_2_RNO[6]  (.A(
        modulator_0_output_signal), .B(
        \data_source_0/tag_data_buf_2[5]_net_1 ), .Y(
        \data_source_0/tag_data_buf_2_4[6] ));
    OR2A \data_source_0/counter_RNO_0[15]  (.A(
        \data_source_0/counter[14]_net_1 ), .B(\data_source_0/N_43 ), 
        .Y(\data_source_0/N_44 ));
    NOR2A \modulator_0/counter_RNIBT613[4]  (.A(AND2_0_Y), .B(
        \modulator_0/counter19 ), .Y(\modulator_0/counter_0_sqmuxa ));
    DFN1C0 \main_clock_0/counter[1]  (.D(\main_clock_0/I_5_0 ), .CLK(
        GLA), .CLR(reset_c), .Q(\main_clock_0/counter[1]_net_1 ));
    IOIN_IB \mac_control_signal_pad/U0/U1  (.YIN(
        \mac_control_signal_pad/U0/NET1 ), .Y(mac_control_signal_c));
    AND3 \data_source_0/un3_data_index_I_16  (.A(
        \data_source_0/DWACT_FINC_E[0] ), .B(
        \data_source_0/DWACT_FINC_E[1] ), .C(
        \data_source_0/data_index[5]_net_1 ), .Y(\data_source_0/N_3 ));
    XA1A \data_source_0/counter_RNO[15]  (.A(\data_source_0/N_44 ), .B(
        \data_source_0/counter[15]_net_1 ), .C(
        modulator_0_output_signal), .Y(\data_source_0/counter_n15 ));
    NOR3C \modulator_0/output_signal_RNO_0  (.A(
        \modulator_0/clock_counter[13]_net_1 ), .B(
        \modulator_0/clock_counter[15]_net_1 ), .C(
        \modulator_0/clock_counter[14]_net_1 ), .Y(
        \modulator_0/un6lto15_1 ));
    AND3 \main_clock_0/un5_counter_1_I_16  (.A(
        \main_clock_0/DWACT_FINC_E[0] ), .B(
        \main_clock_0/DWACT_FINC_E[1] ), .C(
        \main_clock_0/counter[5]_net_1 ), .Y(\main_clock_0/N_3 ));
    MX2 \data_source_0/tag_control_sig_1_RNO_7[2]  (.A(
        \data_source_0/N_9 ), .B(\data_source_0/N_11 ), .S(
        \data_source_0/data_index_0[4]_net_1 ), .Y(
        \data_source_0/tag_control_sig_1_RNO_7[2]_net_1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
