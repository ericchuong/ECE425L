`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2016 08:43:12 PM
// Design Name: 
// Module Name: sim_alu
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


module sim_alu();
    reg [2:0]opcod;
    reg [15:0]X;
    reg [15:0]Y;
    reg Cin;
    wire [15:0]out;
    wire Cout;
    wire lt;
    wire eq;
    wire V;
    
    alu uut(opcod[2:0], X[15:0], Y[15:0], Cin, out[15:0], Cout, lt, eq, V);
    initial
    begin
    
    #1 opcod=0; Cin=opcod[0]; X=16'b0111; Y=16'b1000;       // OR
    #1 opcod=1; Cin=opcod[0];                               // AND
    #1 opcod=2; Cin=opcod[0]; X=7; Y=8;                     // ADD
    #1 X=16'b0111111111111111; Y=16'b0000000000000001;
    #1 opcod=3; Cin=opcod[0]; X=16; Y=15;                   // SUB
    #1 X=-4; Y=-5;
    
    #1 opcod=7; Cin=opcod[0]; X=10; Y=16;                   // SLT
    #1 X=20; Y=35;
    #1 X=10; Y=3;
    #1 X=8; Y=8;
    
    
    end
endmodule