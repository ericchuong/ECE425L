`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2016 03:48:24 PM
// Design Name: 
// Module Name: MUX2_1
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


module MUX2_1(
    input sel,
    input in0,
    input in1,
    input out
    );
    wire n_sel, temp1, temp2;
    
    not N1(n_sel, sel);
    and A1(temp1, n_sel, in0);
    and A2(temp2, sel, in1);
    or O1(out, temp1, temp2);
endmodule
