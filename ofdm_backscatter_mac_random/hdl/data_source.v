///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: data_source.v
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

module data_source( clock, reset, trigger, output_data, tag_control_sig );
input clock, reset;
input trigger;
output reg[19:0] output_data;
output reg[19:0] tag_control_sig;

reg[7:0] tag_data_buf_1;
reg[7:0] tag_data_buf_2;
reg[7:0] tag_data_buf_3;
reg[7:0] tag_data_buf_4;
reg[7:0] tag_data_buf_5;
reg[7:0] tag_data_buf_6;
reg[7:0] tag_data_buf_7;
reg[7:0] tag_data_buf_8;
reg[7:0] tag_data_buf_9;
reg[7:0] tag_data_buf_10;
reg[7:0] tag_data_buf_11;
reg[7:0] tag_data_buf_12;
reg[7:0] tag_data_buf_13;
reg[7:0] tag_data_buf_14;
reg[7:0] tag_data_buf_15;
reg[7:0] tag_data_buf_16;
reg[7:0] tag_data_buf_17;
reg[7:0] tag_data_buf_18;
reg[7:0] tag_data_buf_19;
reg[7:0] tag_data_buf_20;

reg [19:0] tag_order_mem [0:149];

reg[15:0] counter;

always @(posedge clock or negedge reset)
begin
    if (!reset)
    begin
        output_data <= 0;

        tag_data_buf_1 <= 8'd1;
        tag_data_buf_2 <= 8'd2;
        tag_data_buf_3 <= 8'd3;
        tag_data_buf_4 <= 8'd4;
        tag_data_buf_5 <= 8'd5;
        tag_data_buf_6 <= 8'd6;
        tag_data_buf_7 <= 8'd7;
        tag_data_buf_8 <= 8'd8;
        tag_data_buf_9 <= 8'd9;
        tag_data_buf_10 <= 8'd10;
        tag_data_buf_11 <= 8'd11;
        tag_data_buf_12 <= 8'd12;
        tag_data_buf_13 <= 8'd13;
        tag_data_buf_14 <= 8'd14;
        tag_data_buf_15 <= 8'd15;
        tag_data_buf_16 <= 8'd16;
        tag_data_buf_17 <= 8'd17;
        tag_data_buf_18 <= 8'd18;
        tag_data_buf_19 <= 8'd19;
        tag_data_buf_20 <= 8'd20;

        tag_order_mem[0]<=20'd1;
tag_order_mem[1]<=20'd4;
tag_order_mem[2]<=20'd0;
tag_order_mem[3]<=20'd8;
tag_order_mem[4]<=20'd2;
tag_order_mem[5]<=20'd0;
tag_order_mem[6]<=20'd1;
tag_order_mem[7]<=20'd4;
tag_order_mem[8]<=20'd0;
tag_order_mem[9]<=20'd10;
tag_order_mem[10]<=20'd0;
tag_order_mem[11]<=20'd0;
tag_order_mem[12]<=20'd8;
tag_order_mem[13]<=20'd0;
tag_order_mem[14]<=20'd4;
tag_order_mem[15]<=20'd0;
tag_order_mem[16]<=20'd3;
tag_order_mem[17]<=20'd0;
tag_order_mem[18]<=20'd4;
tag_order_mem[19]<=20'd1;
tag_order_mem[20]<=20'd0;
tag_order_mem[21]<=20'd0;
tag_order_mem[22]<=20'd8;
tag_order_mem[23]<=20'd2;
tag_order_mem[24]<=20'd4;
tag_order_mem[25]<=20'd0;
tag_order_mem[26]<=20'd8;
tag_order_mem[27]<=20'd1;
tag_order_mem[28]<=20'd0;
tag_order_mem[29]<=20'd2;
tag_order_mem[30]<=20'd5;
tag_order_mem[31]<=20'd0;
tag_order_mem[32]<=20'd0;
tag_order_mem[33]<=20'd0;
tag_order_mem[34]<=20'd8;
tag_order_mem[35]<=20'd2;
tag_order_mem[36]<=20'd4;
tag_order_mem[37]<=20'd0;
tag_order_mem[38]<=20'd8;
tag_order_mem[39]<=20'd0;
tag_order_mem[40]<=20'd1;
tag_order_mem[41]<=20'd2;
tag_order_mem[42]<=20'd0;
tag_order_mem[43]<=20'd1;
tag_order_mem[44]<=20'd4;
tag_order_mem[45]<=20'd0;
tag_order_mem[46]<=20'd2;
tag_order_mem[47]<=20'd8;
tag_order_mem[48]<=20'd12;
tag_order_mem[49]<=20'd3;
tag_order_mem[50]<=20'd0;
tag_order_mem[51]<=20'd0;
tag_order_mem[52]<=20'd0;
tag_order_mem[53]<=20'd0;
tag_order_mem[54]<=20'd8;
tag_order_mem[55]<=20'd0;
tag_order_mem[56]<=20'd0;
tag_order_mem[57]<=20'd6;
tag_order_mem[58]<=20'd0;
tag_order_mem[59]<=20'd1;
tag_order_mem[60]<=20'd0;
tag_order_mem[61]<=20'd0;
tag_order_mem[62]<=20'd4;
tag_order_mem[63]<=20'd10;
tag_order_mem[64]<=20'd0;
tag_order_mem[65]<=20'd1;
tag_order_mem[66]<=20'd10;
tag_order_mem[67]<=20'd4;
tag_order_mem[68]<=20'd1;
tag_order_mem[69]<=20'd0;
tag_order_mem[70]<=20'd0;
tag_order_mem[71]<=20'd0;
tag_order_mem[72]<=20'd8;
tag_order_mem[73]<=20'd3;
tag_order_mem[74]<=20'd4;
tag_order_mem[75]<=20'd0;
tag_order_mem[76]<=20'd0;
tag_order_mem[77]<=20'd0;
tag_order_mem[78]<=20'd0;
tag_order_mem[79]<=20'd0;
tag_order_mem[80]<=20'd12;
tag_order_mem[81]<=20'd0;
tag_order_mem[82]<=20'd0;
tag_order_mem[83]<=20'd3;
tag_order_mem[84]<=20'd8;
tag_order_mem[85]<=20'd0;
tag_order_mem[86]<=20'd5;
tag_order_mem[87]<=20'd0;
tag_order_mem[88]<=20'd0;
tag_order_mem[89]<=20'd2;
tag_order_mem[90]<=20'd0;
tag_order_mem[91]<=20'd4;
tag_order_mem[92]<=20'd10;
tag_order_mem[93]<=20'd0;
tag_order_mem[94]<=20'd1;
tag_order_mem[95]<=20'd0;
tag_order_mem[96]<=20'd3;
tag_order_mem[97]<=20'd0;
tag_order_mem[98]<=20'd0;
tag_order_mem[99]<=20'd0;
tag_order_mem[100]<=20'd0;
tag_order_mem[101]<=20'd12;
tag_order_mem[102]<=20'd2;
tag_order_mem[103]<=20'd4;
tag_order_mem[104]<=20'd8;
tag_order_mem[105]<=20'd1;
tag_order_mem[106]<=20'd0;
tag_order_mem[107]<=20'd0;
tag_order_mem[108]<=20'd6;
tag_order_mem[109]<=20'd8;
tag_order_mem[110]<=20'd0;
tag_order_mem[111]<=20'd0;
tag_order_mem[112]<=20'd1;
tag_order_mem[113]<=20'd0;
tag_order_mem[114]<=20'd0;
tag_order_mem[115]<=20'd0;
tag_order_mem[116]<=20'd8;
tag_order_mem[117]<=20'd5;
tag_order_mem[118]<=20'd2;
tag_order_mem[119]<=20'd0;
tag_order_mem[120]<=20'd0;
tag_order_mem[121]<=20'd10;
tag_order_mem[122]<=20'd0;
tag_order_mem[123]<=20'd1;
tag_order_mem[124]<=20'd4;
tag_order_mem[125]<=20'd0;
tag_order_mem[126]<=20'd0;
tag_order_mem[127]<=20'd2;
tag_order_mem[128]<=20'd4;
tag_order_mem[129]<=20'd8;
tag_order_mem[130]<=20'd1;
tag_order_mem[131]<=20'd0;
tag_order_mem[132]<=20'd2;
tag_order_mem[133]<=20'd0;
tag_order_mem[134]<=20'd0;
tag_order_mem[135]<=20'd0;
tag_order_mem[136]<=20'd9;
tag_order_mem[137]<=20'd4;
tag_order_mem[138]<=20'd0;
tag_order_mem[139]<=20'd8;
tag_order_mem[140]<=20'd7;
tag_order_mem[141]<=20'd0;
tag_order_mem[142]<=20'd0;
tag_order_mem[143]<=20'd0;
tag_order_mem[144]<=20'd0;
tag_order_mem[145]<=20'd0;
tag_order_mem[146]<=20'd0;
tag_order_mem[147]<=20'd3;
tag_order_mem[148]<=20'd12;
tag_order_mem[149]<=20'd0;

        counter <= 0;
    end
    else if (trigger)
    begin
        if (counter==16'd0)
        begin
            counter <= counter+1;
            tag_data_buf_1 <= {tag_data_buf_1[6:0],tag_data_buf_1[7]};
            tag_data_buf_2 <= {tag_data_buf_2[6:0],tag_data_buf_2[7]};
            tag_data_buf_3 <= {tag_data_buf_3[6:0],tag_data_buf_3[7]};
            tag_data_buf_4 <= {tag_data_buf_4[6:0],tag_data_buf_4[7]};
            tag_data_buf_5 <= {tag_data_buf_5[6:0],tag_data_buf_5[7]};
            tag_data_buf_6 <= {tag_data_buf_6[6:0],tag_data_buf_6[7]};
            tag_data_buf_7 <= {tag_data_buf_7[6:0],tag_data_buf_7[7]};
            tag_data_buf_8 <= {tag_data_buf_8[6:0],tag_data_buf_8[7]};
            tag_data_buf_9 <= {tag_data_buf_9[6:0],tag_data_buf_9[7]};
            tag_data_buf_10 <= {tag_data_buf_10[6:0],tag_data_buf_10[7]};
            tag_data_buf_11 <= {tag_data_buf_11[6:0],tag_data_buf_11[7]};
            tag_data_buf_12 <= {tag_data_buf_12[6:0],tag_data_buf_12[7]};
            tag_data_buf_13 <= {tag_data_buf_13[6:0],tag_data_buf_13[7]};
            tag_data_buf_14 <= {tag_data_buf_14[6:0],tag_data_buf_14[7]};
            tag_data_buf_15 <= {tag_data_buf_15[6:0],tag_data_buf_15[7]};
            tag_data_buf_16 <= {tag_data_buf_16[6:0],tag_data_buf_16[7]};
            tag_data_buf_17 <= {tag_data_buf_17[6:0],tag_data_buf_17[7]};
            tag_data_buf_18 <= {tag_data_buf_18[6:0],tag_data_buf_18[7]};
            tag_data_buf_19 <= {tag_data_buf_19[6:0],tag_data_buf_19[7]};
            tag_data_buf_20 <= {tag_data_buf_20[6:0],tag_data_buf_20[7]};

            output_data[0] <= tag_data_buf_1[7];
            output_data[1] <= tag_data_buf_2[7];
            output_data[2] <= tag_data_buf_3[7];
            output_data[3] <= tag_data_buf_4[7];
            output_data[4] <= tag_data_buf_5[7];
            output_data[5] <= tag_data_buf_6[7];
            output_data[6] <= tag_data_buf_7[7];
            output_data[7] <= tag_data_buf_8[7];
            output_data[8] <= tag_data_buf_9[7];
            output_data[9] <= tag_data_buf_10[7];
            output_data[10] <= tag_data_buf_11[7];
            output_data[11] <= tag_data_buf_12[7];
            output_data[12] <= tag_data_buf_13[7];
            output_data[13] <= tag_data_buf_14[7];
            output_data[14] <= tag_data_buf_15[7];
            output_data[15] <= tag_data_buf_16[7];
            output_data[16] <= tag_data_buf_17[7];
            output_data[17] <= tag_data_buf_18[7];
            output_data[18] <= tag_data_buf_19[7];
            output_data[19] <= tag_data_buf_20[7];
        end
        else
        begin
            counter <= counter + 1;
            if (counter==16'd799)
                counter <= 0;
        end
    end
    else
    begin
        output_data <= 0;

        tag_data_buf_1 <= 8'd1;
        tag_data_buf_2 <= 8'd2;
        tag_data_buf_3 <= 8'd3;
        tag_data_buf_4 <= 8'd4;
        tag_data_buf_5 <= 8'd5;
        tag_data_buf_6 <= 8'd6;
        tag_data_buf_7 <= 8'd7;
        tag_data_buf_8 <= 8'd8;
        tag_data_buf_9 <= 8'd9;
        tag_data_buf_10 <= 8'd10;
        tag_data_buf_11 <= 8'd11;
        tag_data_buf_12 <= 8'd12;
        tag_data_buf_13 <= 8'd13;
        tag_data_buf_14 <= 8'd14;
        tag_data_buf_15 <= 8'd15;
        tag_data_buf_16 <= 8'd16;
        tag_data_buf_17 <= 8'd17;
        tag_data_buf_18 <= 8'd18;
        tag_data_buf_19 <= 8'd19;
        tag_data_buf_20 <= 8'd20;

        tag_control_sig <= tag_order_mem[data_index];

        counter <= 0;
    end
end

reg[16:0] data_index;
reg[7:0] trigger_counter;

always @(posedge trigger or negedge reset)
begin
    if (!reset)
    begin
        data_index <= 1;
        trigger_counter <= 0;
    end
    else
    begin
        //trigger_counter <= trigger_counter+1;
        //if(trigger_counter==8'd9)
        begin
            //trigger_counter <= 0;
            if(data_index<=16'd148)
                data_index <= data_index + 1;
            else
                data_index <= 16'd0;
        end
    end
end

endmodule

