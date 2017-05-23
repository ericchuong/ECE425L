`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2016 12:00:58 AM
// Design Name: 
// Module Name: sim_Control
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


module sim_Control();
    reg [3:0]opcod;
    wire RegDest;
    wire ALUSrc;
    wire MemToReg;
    wire RegWrite;
    wire MemRead;
    wire MemWrite;
    wire Branch;
    wire ALUop1;
    wire ALUop0;
    wire Jump;
    
    Control uut(opcod[3:0], RegDest, ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch, ALUop1, ALUop0, Jump);
    initial
    begin
    #1 opcod = 0;
    #1 opcod = 1;
    #1 opcod = 2;
    #1 opcod = 6;
    #1 opcod = 7;
    #1 opcod = 8;
    #1 opcod = 10;
    #1 opcod = 14;
    #1 opcod = 15;
    #1 opcod = 0;
    end
endmodule
