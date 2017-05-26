///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tag_data_output.v
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

module baseband_signal( input_clock, tag_data_input, tag_data_output );
input input_clock;
input[19:0] tag_data_input;
output[19:0] tag_data_output;

assign tag_data_output[0] = (input_clock & tag_data_input[0]) | ((!input_clock) & (!tag_data_input[0]));
assign tag_data_output[1] = (input_clock & tag_data_input[1]) | ((!input_clock) & (!tag_data_input[1]));
assign tag_data_output[2] = (input_clock & tag_data_input[2]) | ((!input_clock) & (!tag_data_input[2]));
assign tag_data_output[3] = (input_clock & tag_data_input[3]) | ((!input_clock) & (!tag_data_input[3]));
assign tag_data_output[4] = (input_clock & tag_data_input[4]) | ((!input_clock) & (!tag_data_input[4]));
assign tag_data_output[5] = (input_clock & tag_data_input[5]) | ((!input_clock) & (!tag_data_input[5]));
assign tag_data_output[6] = (input_clock & tag_data_input[6]) | ((!input_clock) & (!tag_data_input[6]));
assign tag_data_output[7] = (input_clock & tag_data_input[7]) | ((!input_clock) & (!tag_data_input[7]));
assign tag_data_output[8] = (input_clock & tag_data_input[8]) | ((!input_clock) & (!tag_data_input[8]));
assign tag_data_output[9] = (input_clock & tag_data_input[9]) | ((!input_clock) & (!tag_data_input[9]));
assign tag_data_output[10] = (input_clock & tag_data_input[10]) | ((!input_clock) & (!tag_data_input[10]));
assign tag_data_output[11] = (input_clock & tag_data_input[11]) | ((!input_clock) & (!tag_data_input[11]));
assign tag_data_output[12] = (input_clock & tag_data_input[12]) | ((!input_clock) & (!tag_data_input[12]));
assign tag_data_output[13] = (input_clock & tag_data_input[13]) | ((!input_clock) & (!tag_data_input[13]));
assign tag_data_output[14] = (input_clock & tag_data_input[14]) | ((!input_clock) & (!tag_data_input[14]));
assign tag_data_output[15] = (input_clock & tag_data_input[15]) | ((!input_clock) & (!tag_data_input[15]));
assign tag_data_output[16] = (input_clock & tag_data_input[16]) | ((!input_clock) & (!tag_data_input[16]));
assign tag_data_output[17] = (input_clock & tag_data_input[17]) | ((!input_clock) & (!tag_data_input[17]));
assign tag_data_output[18] = (input_clock & tag_data_input[18]) | ((!input_clock) & (!tag_data_input[18]));
assign tag_data_output[19] = (input_clock & tag_data_input[19]) | ((!input_clock) & (!tag_data_input[19]));


endmodule

