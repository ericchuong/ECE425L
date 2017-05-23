`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2016 04:58:18 PM
// Design Name: 
// Module Name: Decoder3_8
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


module Decoder3_8(
    input en,
    input [2:0] in,
    output [7:0] out
    );
    wire n_in[2:0];
    
    not N1 (n_in[0], in[0]);
    not N2 (n_in[1], in[1]);
    not N3 (n_in[2], in[2]);
    and A1 (out[0], n_in[2], n_in[1], n_in[0], en);
    and A2 (out[1], n_in[2], n_in[1], in[0], en);
    and A3 (out[2], n_in[2], in[1], n_in[0], en);
    and A4 (out[3], n_in[2], in[1], in[0], en);
    and A5 (out[4], in[2], n_in[1], n_in[0], en);
    and A6 (out[5], in[2], n_in[1], in[0], en);
    and A7 (out[6], in[2], in[1], n_in[0], en);
    and A8 (out[7], in[2], in[1], in[0], en);
endmodule
