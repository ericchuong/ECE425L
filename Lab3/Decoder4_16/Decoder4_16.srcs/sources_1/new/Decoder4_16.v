`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2016 06:01:52 PM
// Design Name: 
// Module Name: Decoder4_16
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


module Decoder4_16(
    input [3:0] in,
    output [15:0] out
    );
    wire n_en;
    
    not N1(n_en, in[3]);
    Decoder3_8 Dec1(n_en, in[2:0], out[7:0]);
    Decoder3_8 Dec2(in[3], in[2:0], out[15:8]);
endmodule
