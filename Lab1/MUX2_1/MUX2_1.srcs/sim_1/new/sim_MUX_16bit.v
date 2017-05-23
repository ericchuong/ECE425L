`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2016 10:57:48 PM
// Design Name: 
// Module Name: sim_MUX_16bit
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


module sim_MUX_16bit();
    reg [15:0] sel;
    reg [31:0] in;
    wire [15:0] out;

    MUX_16bit uut(sel[15:0], in[31:0], out[15:0]);

    initial
    begin
    #10 in=0; sel=0;
    #10 in=1;
    #10 in=2;
    #10 in=3;    
    #10 in=0; sel=1;
    #10 in=1;
    #10 in=2;
    #10 in=3;
    #10 in=0; sel=2;
    #10 in=0; sel=8;
    end
endmodule
