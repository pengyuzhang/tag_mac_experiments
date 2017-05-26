///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: modulator.v
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

module modulator( clock, reset, trigger_signal, output_signal );
input clock, reset, trigger_signal;
output reg output_signal;

reg[15:0] clock_counter;
reg[5:0] counter;

always @(negedge reset or posedge clock)
begin
    if (~reset)
    begin
        clock_counter <= 0;
        output_signal <= 1'b0;
        counter <= 0;
    end
    else if (trigger_signal)
    begin
        if (counter==0)
        begin
            counter <= counter+1;
            clock_counter <= clock_counter+1;
            if (clock_counter<=16'd79)
                output_signal <= 1'b0;
            else if (clock_counter<=16'd60000)
                output_signal <= 1'b1;
            else
                output_signal <= 1'b0;
        end
        else
        begin
            counter <= counter+1;
            if (counter==6'd49)
                counter <= 0;
        end
    end
    else
    begin
        clock_counter <= 16'd0;
        output_signal <= 1'b0;
        counter <= 0;
    end
end

endmodule

