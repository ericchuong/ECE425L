`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2016 05:05:17 PM
// Design Name: 
// Module Name: sim_Decoder3_8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sim_Decoder3_8();
    reg [2:0] in;
    reg en;
    wire [7:0] out;
    
    Decoder3_8 uut(en, in[2:0], out[7:0]);
    initial
    begin
    en = 1;
    #1 in = 0;
    #1 in = 1;
    #1 in = 2;
    #1 in = 3;
    #1 in = 4;
    #1 in = 5;
    #1 in = 6;
    #1 in = 7;
    #1 in = 0; en = 0;
    #1 in = 1;
    #1 in = 2;
    #1 in = 3;
    #1 in = 4;
    #1 in = 5;
    #1 in = 6;
    #1 in = 7;
    end
endmodule
