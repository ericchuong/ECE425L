`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2016 06:08:09 PM
// Design Name: 
// Module Name: sim_Dec4_16
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


module sim_Dec4_16();
    reg [3:0]in;
    wire [15:0]out;
    
    Decoder4_16 uut(in[3:0], out[15:0]);
    initial
    begin
    #1 in=1;
    #1 in=2;
    #1 in=7;
    #1 in=8;
    #1 in=15;
    #1 in=0;
    end
endmodule
