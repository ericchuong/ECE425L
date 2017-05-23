`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2016 08:12:35 PM
// Design Name: 
// Module Name: shiftreg
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


module shiftreg(
    input sel0,
    input sel1,
    input [3:0]load,
    input shiftinput,
    input en,
    input clk,
    output [3:0]out
    );
    wire [3:0]temp;
    
    MUX4_to_1 M0(sel0, sel1, out[0], load[0], shiftinput, out[1], temp[0]);
    DFF dff0(clk,en,temp[0],out[0]);   
    MUX4_to_1 M1(sel0, sel1, out[1], load[1], out[0], out[2], temp[1]);
    DFF dff1(clk,en,temp[1],out[1]);   
    MUX4_to_1 M2(sel0, sel1, out[2], load[2], out[1], out[3], temp[2]);
    DFF dff2(clk,en,temp[2],out[2]);   
    MUX4_to_1 M3(sel0, sel1, out[3], load[3], out[2], shiftinput, temp[3]);
    DFF dff3(clk,en,temp[3],out[3]);   
    endmodule

