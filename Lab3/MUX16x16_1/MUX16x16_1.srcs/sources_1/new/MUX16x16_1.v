`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2016 11:14:29 PM
// Design Name: 
// Module Name: MUX16x16_1
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


module MUX16x16_1(
    input [3:0] sel,
    input [15:0] in0,
    input [15:0] in1,
    input [15:0] in2,
    input [15:0] in3,
    input [15:0] in4,
    input [15:0] in5,
    input [15:0] in6,
    input [15:0] in7,
    input [15:0] in8,
    input [15:0] in9,
    input [15:0] in10,
    input [15:0] in11,
    input [15:0] in12,
    input [15:0] in13,
    input [15:0] in14,
    input [15:0] in15,
    output [15:0] out
    );
        
        wire [15:0]temp1;
        wire [15:0]temp2;
        wire [15:0]temp3;
        wire [15:0]temp4;
        wire [15:0]temp5;
        wire [15:0]temp6;
        wire [15:0]temp7;
        wire [15:0]temp8;
        wire [15:0]temp9;
        wire [15:0]temp10;
        wire [15:0]temp11;
        wire [15:0]temp12;
        wire [15:0]temp13;
        wire [15:0]temp14;
    
        MUX_16bit M1(sel[0], in0[15:0], in1[15:0], temp1[15:0]);
        MUX_16bit M2(sel[0], in2[15:0], in3[15:0], temp2[15:0]);
        MUX_16bit M3(sel[0], in4[15:0], in5[15:0], temp3[15:0]);
        MUX_16bit M4(sel[0], in6[15:0], in7[15:0], temp4[15:0]);
        MUX_16bit M5(sel[0], in8[15:0], in9[15:0], temp5[15:0]);
        MUX_16bit M6(sel[0], in10[15:0], in11[15:0], temp6[15:0]);
        MUX_16bit M7(sel[0], in12[15:0], in13[15:0], temp7[15:0]);
        MUX_16bit M8(sel[0], in14[15:0], in15[15:0], temp8[15:0]);
        
        MUX_16bit M9(sel[1], temp1[15:0], temp2[15:0], temp9[15:0]);
        MUX_16bit M10(sel[1], temp3[15:0], temp4[15:0], temp10[15:0]);
        MUX_16bit M11(sel[1], temp5[15:0], temp6[15:0], temp11[15:0]);
        MUX_16bit M12(sel[1], temp7[15:0], temp8[15:0], temp12[15:0]);
        
        MUX_16bit M13(sel[2], temp9[15:0], temp10[15:0], temp13[15:0]);
        MUX_16bit M14(sel[2], temp11[15:0], temp12[15:0], temp14[15:0]);
        
        MUX_16bit M15(sel[3], temp13[15:0], temp14[15:0], out[15:0]);

endmodule