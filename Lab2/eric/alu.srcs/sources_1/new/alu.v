`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2016 11:33:20 PM
// Design Name: 
// Module Name: alu
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
// 0: OR
// 1: AND
// 2: ADD
// 3: SUB
// 7: SLT

module alu(
    input [2:0]opcod,       //select bit
    input [15:0]X,          //16 bit input1
    input [15:0]Y,          //16 bit input2
    input Cin,              //carry in
    output [15:0]out,       //output
    output Cout,            //carry out
    output lt,              //less than flag
    output eq,              //equal to flag
    output V                //overflow flag
    );
    
    wire [15:0]SumDiff;
    wire [15:0]andres;
    wire [15:0]orres;
    wire [15:0]AndOr_res;
    wire [15:0]slt_res;
    wire [15:0]temp_res;
    
    Adder_2comp AddSub1(Cin, X[15:0], Y[15:0], SumDiff[15:0], Cout, V);
    and AND1[15:0](andres, X, Y);
    or OR1[15:0](orres, X, Y);
    SLT set1 (Cin, X[15:0], Y[15:0], slt_res[15:0], Cout, lt, eq, V);

    MUX2_1 AndOr_sel (opcod[0], orres[15:0], andres[15:0], AndOr_res[15:0]);
    MUX2_1 test (opcod[2], SumDiff[15:0], slt_res[15:0], temp_res[15:0]);
    MUX2_1 finally (opcod[1], AndOr_res[15:0], temp_res[15:0], out[15:0]);
    
endmodule