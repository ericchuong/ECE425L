`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2016 07:58:36 PM
// Design Name: 
// Module Name: Control
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


module Control(
    input [3:0]opcod,
    output RegDest,
    output ALUSrc,
    output MemToReg,
    output RegWrite,
    output MemRead,
    output MemWrite,
    output Branch,
    output ALUop1,
    output ALUop0,
    output Jump
    );
    wire temp1;
    
    not N1(RegDest, opcod[3]);
    and A1(ALUSrc, opcod[3], ~opcod[2]);
    not N2(MemToReg, ~opcod[3]);
    or  O1(RegWrite, ~opcod[3], ~opcod[1]);
    and A2(MemRead, opcod[3], ~opcod[1]);
    and A3(temp1, opcod[3], ~opcod[2]);
    and A4(MemWrite, temp1, opcod[1]);
    and A5(Branch, opcod[3], opcod[2]);
    not N3(ALUop1, opcod[3]);
    and A6(ALUop0, opcod[3], opcod[2]);
    and A7(Jump, opcod[3], opcod[0]);
endmodule
