`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2016 05:48:29 PM
// Design Name: 
// Module Name: sim_MUX2_1
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


module sim_MUX2_1();
    reg sel;
    reg [15:0]in1;
    reg [15:0]in2;
    wire [15:0]out;
    
    MUX2_1 uut(sel, in1[15:0], in2[15:0], out[15:0]);
    initial
    begin
    #1 sel=0; in1=16'b1111111111111111; in2=0;
    #1 sel=1;
    #1 sel=0; in1=16'b1010101010101010; in2=0000000011111111;
    #1 sel=1; 
    #1 in1=0; in2=0;
    end
endmodule
