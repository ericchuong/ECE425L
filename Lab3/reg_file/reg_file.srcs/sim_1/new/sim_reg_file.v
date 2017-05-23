`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2016 07:47:09 PM
// Design Name: 
// Module Name: sim_reg_file
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


module sim_reg_file();
    reg [3:0] Aaddr;
    reg [3:0] Baddr;
    reg [3:0] Caddr;
    reg Load;
    reg clk;
    reg Clear;
    reg [15:0] C;
    wire [15:0] A;
    wire [15:0] B;
    
    initial begin
    clk=0;
    repeat(1000)
    #1 clk=~clk;
    end
    
    reg_file uut(Aaddr[3:0], Baddr[3:0], Caddr[3:0], Load, clk, Clear, C[15:0], A[15:0], B[15:0]);
    initial
    begin
    #2 Clear=1; Load=0;
    #2 Aaddr=7; Baddr=1; Caddr=15; C=16'b1111111111111111; Clear=0;
    #2 Load=1;
    #2 Caddr=1;
    #2 C=16'b1010101010101010;
    #2 Caddr=7;
    #2 C=16'b0000000000000011;
    end
endmodule