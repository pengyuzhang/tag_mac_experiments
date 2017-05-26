///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tag_ant_control.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::IGLOO> <Die::AGLN250V2> <Package::100 VQFP>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
//`timescale <time_units> / <precision>

module tag_ant_control(input_signal, control_signal, output_signal );
input input_signal;
input[19:0] control_signal;

output[19:0] output_signal;

assign output_signal[0] = input_signal & control_signal[0];
assign output_signal[1] = input_signal & control_signal[1];
assign output_signal[2] = input_signal & control_signal[2];
assign output_signal[3] = input_signal & control_signal[3];
assign output_signal[4] = input_signal & control_signal[4];
assign output_signal[5] = input_signal & control_signal[5];
assign output_signal[6] = input_signal & control_signal[6];
assign output_signal[7] = input_signal & control_signal[7];
assign output_signal[8] = input_signal & control_signal[8];
assign output_signal[9] = input_signal & control_signal[9];
assign output_signal[10] = input_signal & control_signal[10];
assign output_signal[11] = input_signal & control_signal[11];
assign output_signal[12] = input_signal & control_signal[12];
assign output_signal[13] = input_signal & control_signal[13];
assign output_signal[14] = input_signal & control_signal[14];
assign output_signal[15] = input_signal & control_signal[15];
assign output_signal[16] = input_signal & control_signal[16];
assign output_signal[17] = input_signal & control_signal[17];
assign output_signal[18] = input_signal & control_signal[18];
assign output_signal[19] = input_signal & control_signal[19];

endmodule

