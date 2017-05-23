`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2016 11:01:44 PM
// Design Name: 
// Module Name: sim_Adder_2comp
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


module sim_Adder_2comp();
    reg Cin;
    reg [15:0] a;
    reg [15:0] b;
    wire [15:0] s;
    wire Cout;
    
    Adder_2comp uut(Cin, a[15:0], b[15:0], s[15:0], Cout);
    initial
    begin
    Cin=0;                      // Cin = 0 makes this a 2s complement adder
    #1 a=1; b=2;                // 1 + 2 = 3;       0001 + 0010 = 0011
    #1 a=4; b=4;                // 4 + 4 = 8;       0100 + 0100 = 0011
    #1 a=7; b=8;                // 7 + 8 = 15;      0111 + 1000 = 1111
    #1 a=-3; b=5;               // -3 + 5 = -2;     1101 + 0101 = 0010      cout = 1
    #1 a=2; b=-7;               // 2 + -7 = -5;     0010 + 1001 = 1011
    #1 a=-2; b=-2;               // -2 + -2 = -4;    1110 + 1110 = 1100      cout = 1
    #1 a=0; b=0;
    end
endmodule