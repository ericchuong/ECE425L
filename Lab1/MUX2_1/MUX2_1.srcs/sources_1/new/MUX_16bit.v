`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2016 10:52:28 PM
// Design Name: 
// Module Name: MUX_16bit
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


module MUX_16bit(
    input [15:0]sel,
    input [31:0]in,
    output [15:0]out
    );
    
    MUX2_1 mux0(sel[0], in[1:0], out[0]);
    MUX2_1 mux1(sel[1], in[3:2], out[1]);
    MUX2_1 mux2(sel[2], in[5:4], out[2]);
    MUX2_1 mux3(sel[3], in[7:6], out[3]);
    MUX2_1 mux4(sel[4], in[9:8], out[4]);
    MUX2_1 mux5(sel[5], in[11:10], out[5]);
    MUX2_1 mux6(sel[6], in[13:12], out[6]);
    MUX2_1 mux7(sel[7], in[15:14], out[7]);
    MUX2_1 mux8(sel[8], in[17:16], out[8]);
    MUX2_1 mux9(sel[9], in[19:18], out[9]);
    MUX2_1 mux10(sel[10], in[21:20], out[10]);
    MUX2_1 mux11(sel[11], in[23:22], out[11]);
    MUX2_1 mux12(sel[12], in[25:24], out[12]);
    MUX2_1 mux13(sel[13], in[27:26], out[13]);
    MUX2_1 mux14(sel[14], in[29:28], out[14]);
    MUX2_1 mux15(sel[15], in[31:30], out[15]);
endmodule
