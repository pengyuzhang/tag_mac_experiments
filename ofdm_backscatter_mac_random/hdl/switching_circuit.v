///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: switching_circuit.v
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

module switching_circuit( input_clock, trigger_signal, control_signal, input_data, out_signal_switch);
input input_clock, trigger_signal;
input[19:0] control_signal;
input[19:0] input_data;
output[19:0] out_signal_switch;

assign out_signal_switch[0] = ((!trigger_signal) & input_clock & control_signal[0]) | (trigger_signal & control_signal[0] & input_data[0]);
assign out_signal_switch[1] = ((!trigger_signal) & input_clock & control_signal[1]) | (trigger_signal & control_signal[1] & input_data[1]);
assign out_signal_switch[2] = ((!trigger_signal) & input_clock & control_signal[2]) | (trigger_signal & control_signal[2] & input_data[2]);
assign out_signal_switch[3] = ((!trigger_signal) & input_clock & control_signal[3]) | (trigger_signal & control_signal[3] & input_data[3]);
assign out_signal_switch[4] = ((!trigger_signal) & input_clock & control_signal[4]) | (trigger_signal & control_signal[4] & input_data[4]);
assign out_signal_switch[5] = ((!trigger_signal) & input_clock & control_signal[5]) | (trigger_signal & control_signal[5] & input_data[5]);
assign out_signal_switch[6] = ((!trigger_signal) & input_clock & control_signal[6]) | (trigger_signal & control_signal[6] & input_data[6]);
assign out_signal_switch[7] = ((!trigger_signal) & input_clock & control_signal[7]) | (trigger_signal & control_signal[7] & input_data[7]);
assign out_signal_switch[8] = ((!trigger_signal) & input_clock & control_signal[8]) | (trigger_signal & control_signal[8] & input_data[7]);
assign out_signal_switch[9] = ((!trigger_signal) & input_clock & control_signal[9]) | (trigger_signal & control_signal[9] & input_data[9]);
assign out_signal_switch[10] = ((!trigger_signal) & input_clock & control_signal[10]) | (trigger_signal & control_signal[10] & input_data[10]);
assign out_signal_switch[11] = ((!trigger_signal) & input_clock & control_signal[11]) | (trigger_signal & control_signal[11] & input_data[11]);
assign out_signal_switch[12] = ((!trigger_signal) & input_clock & control_signal[12]) | (trigger_signal & control_signal[12] & input_data[12]);
assign out_signal_switch[13] = ((!trigger_signal) & input_clock & control_signal[13]) | (trigger_signal & control_signal[13] & input_data[13]);
assign out_signal_switch[14] = ((!trigger_signal) & input_clock & control_signal[14]) | (trigger_signal & control_signal[14] & input_data[14]);
assign out_signal_switch[15] = ((!trigger_signal) & input_clock & control_signal[15]) | (trigger_signal & control_signal[15] & input_data[15]);
assign out_signal_switch[16] = ((!trigger_signal) & input_clock & control_signal[16]) | (trigger_signal & control_signal[16] & input_data[16]);
assign out_signal_switch[17] = ((!trigger_signal) & input_clock & control_signal[17]) | (trigger_signal & control_signal[17] & input_data[17]);
assign out_signal_switch[18] = ((!trigger_signal) & input_clock & control_signal[18]) | (trigger_signal & control_signal[18] & input_data[18]);
assign out_signal_switch[19] = ((!trigger_signal) & input_clock & control_signal[19]) | (trigger_signal & control_signal[19] & input_data[19]);

endmodule

