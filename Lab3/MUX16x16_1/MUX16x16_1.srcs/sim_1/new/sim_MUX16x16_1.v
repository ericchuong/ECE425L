`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2016 11:45:42 PM
// Design Name: 
// Module Name: sim_MUX16x16_1
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


module sim_MUX16x16_1();
reg [15:0]sel;
reg [15:0]in0; 
reg [15:0]in1;
reg [15:0]in2;
reg [15:0]in3;
reg [15:0]in4;
reg [15:0]in5;
reg [15:0]in6;
reg [15:0]in7;
reg [15:0]in8;
reg [15:0]in9;
reg [15:0]in10;
reg [15:0]in11;
reg [15:0]in12;
reg [15:0]in13;
reg [15:0]in14;
reg [15:0]in15;
wire [15:0]out;

    MUX16x16_1 uut(sel[3:0], in0[15:0], in1[15:0], in2[15:0], in3[15:0], in4[15:0], in5[15:0], in6[15:0], in7[15:0], in8[15:0], in9[15:0], in10[15:0], in11[15:0], in12[15:0], in13[15:0], in14[15:0], in15[15:0], out[15:0]);
    initial
    begin
    #1 in0=0; in1=1; in2=2; in3=3; in4=4; in5=5; in6=6; in7=7; in8=8; in9=9; in10=10; in11=11; in12=12; in13=13; in14=14; in15=15; 
    #1 sel=0;
    #1 sel=1;
    #1 sel=2;
    #1 sel=3;
    #1 sel=4;
    #1 sel=5;
    #1 sel=6;
    #1 sel=7;
    #1 sel=13;
    #1 sel=15;
    end
endmodule
