`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2016 08:17:10 PM
// Design Name: 
// Module Name: SLT
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


module SLT(
    input Cin,
    input [15:0]X,
    input [15:0]Y,
    output [15:0]slt_output,
    output Cout,
    output lt,
    output eq,
    output V
    );
    wire [15:0]d;
    wire temp;
    wire [15:0]zero;
    wire [15:0]one;
    wire or_eq;
    wire or_lt;
        
    not n1 [15:0](zero, Cin);                                             //Cin=1, zero=0;
    or  o1 [15:0](one, Cin);                                              //one=11111111111111111;
    Adder_2comp sub1 (Cin, X[15:0], Y[15:0], d[15:0], Cout, V);           //diff
    
    or or2 (or_eq, d[15],d[14],d[13],d[12],d[11],d[10],d[9],d[8],d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0]);
    not n2 (eq, or_eq);                                                   //eq
    
    or or3 (or_lt, eq, Cout);
    not n3 (lt, or_lt);                                                   //lt
    
    MUX2_1 slt_res (lt, zero[15:0], one[15:0], slt_output[15:0]);
endmodule