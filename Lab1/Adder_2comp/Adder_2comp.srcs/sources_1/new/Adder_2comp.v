`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2016 10:53:42 PM
// Design Name: 
// Module Name: Adder_2comp
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

module Adder_2comp(
    input Cin,
    input [15:0] a,
    input [15:0] b,
    output [15:0] s,
    output Cout
    );
    wire [15:0]temp;
    wire [15:0]carry;
    
    xor X1 [15:0](temp, b, Cin);
    FA FA1 [15:0](temp, a, {carry[14:0], Cin}, s, {Cout, carry[14:0]});
endmodule
