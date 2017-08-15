//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue May 30 17:26:08 2017
// Version: v11.8 11.8.0.26
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// top
module top(
    // Inputs
    clock,
    mac_control_signal,
    reset,
    trigger_signal,
    // Outputs
    output_signal,
    signal_into_switch
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         clock;
input         mac_control_signal;
input         reset;
input         trigger_signal;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [19:0] output_signal;
output        signal_into_switch;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          AND2_0_Y;
wire   [19:0] baseband_signal_0_tag_data_output;
wire          clock;
wire   [19:0] data_source_0_output_data_0;
wire   [19:0] data_source_0_tag_control_sig;
wire          mac_control_signal;
wire          main_clock_0_clock_out;
wire          modulator_0_output_signal;
wire   [19:0] output_signal_net_0;
wire          pll_core_0_GLA;
wire          reset;
wire          trigger_signal;
wire   [19:0] output_signal_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// TieOff assignments
//--------------------------------------------------------------------
assign signal_into_switch  = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign output_signal_net_1 = output_signal_net_0;
assign output_signal[19:0] = output_signal_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( trigger_signal ),
        .B ( mac_control_signal ),
        // Outputs
        .Y ( AND2_0_Y ) 
        );

//--------baseband_signal
baseband_signal baseband_signal_0(
        // Inputs
        .input_clock     ( main_clock_0_clock_out ),
        .tag_data_input  ( data_source_0_output_data_0 ),
        // Outputs
        .tag_data_output ( baseband_signal_0_tag_data_output ) 
        );

//--------data_source
data_source data_source_0(
        // Inputs
        .clock           ( main_clock_0_clock_out ),
        .reset           ( reset ),
        .trigger         ( modulator_0_output_signal ),
        // Outputs
        .output_data     ( data_source_0_output_data_0 ),
        .tag_control_sig ( data_source_0_tag_control_sig ) 
        );

//--------main_clock
main_clock main_clock_0(
        // Inputs
        .clock     ( pll_core_0_GLA ),
        .reset     ( reset ),
        // Outputs
        .clock_out ( main_clock_0_clock_out ) 
        );

//--------modulator
modulator modulator_0(
        // Inputs
        .clock          ( main_clock_0_clock_out ),
        .reset          ( reset ),
        .trigger_signal ( AND2_0_Y ),
        // Outputs
        .output_signal  ( modulator_0_output_signal ) 
        );

//--------pll_core
pll_core pll_core_0(
        // Inputs
        .POWERDOWN ( VCC_net ),
        .CLKA      ( clock ),
        // Outputs
        .LOCK      (  ),
        .GLA       ( pll_core_0_GLA ) 
        );

//--------switching_circuit
switching_circuit switching_circuit_0(
        // Inputs
        .input_clock       ( main_clock_0_clock_out ),
        .trigger_signal    ( modulator_0_output_signal ),
        .control_signal    ( data_source_0_tag_control_sig ),
        .input_data        ( baseband_signal_0_tag_data_output ),
        // Outputs
        .out_signal_switch ( output_signal_net_0 ) 
        );


endmodule
