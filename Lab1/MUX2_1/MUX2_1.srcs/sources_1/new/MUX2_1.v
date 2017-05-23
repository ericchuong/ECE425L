`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2016 05:46:41 PM
// Design Name: 
// Module Name: MUX2_1
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


module MUX2_1(
    input sel,
    input [15:0]in1,
    input [15:0]in2,
    output [15:0]out
    );
    wire n_sel;
    wire [15:0]temp1;
    wire [15:0]temp2;
    
    not N1 (n_sel, sel);
    and A1 [15:0](temp1, n_sel, in1);
    and A2 [15:0](temp2, sel, in2);
    or  O1 [15:0](out, temp1, temp2);
    endmodule
