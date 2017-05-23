`timescale 1ns / 1ps

module MUX32x16_1(
    input [4:0] sel,
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
    input [15:0] in16,
    input [15:0] in17,
    input [15:0] in18,
    input [15:0] in19,
    input [15:0] in20,
    input [15:0] in21,
    input [15:0] in22,
    input [15:0] in23,
    input [15:0] in24,
    input [15:0] in25,
    input [15:0] in26,
    input [15:0] in27,
    input [15:0] in28,
    input [15:0] in29,
    input [15:0] in30,
    input [15:0] in31,
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
    wire [15:0]temp15;
    wire [15:0]temp16;
    wire [15:0]temp17;
    wire [15:0]temp18;
    wire [15:0]temp19;
    wire [15:0]temp20;
    wire [15:0]temp21;
    wire [15:0]temp22;
    wire [15:0]temp23;
    wire [15:0]temp24;
    wire [15:0]temp25;
    wire [15:0]temp26;
    wire [15:0]temp27;
    wire [15:0]temp28;
    wire [15:0]temp29;
    wire [15:0]temp30;
    
    MUX_16bit M1(sel[0], in0[15:0], in1[15:0], temp1[15:0]);
    MUX_16bit M2(sel[0], in2[15:0], in3[15:0], temp2[15:0]);
    MUX_16bit M3(sel[0], in4[15:0], in5[15:0], temp3[15:0]);
    MUX_16bit M4(sel[0], in6[15:0], in7[15:0], temp4[15:0]);
    MUX_16bit M5(sel[0], in8[15:0], in9[15:0], temp5[15:0]);
    MUX_16bit M6(sel[0], in10[15:0], in11[15:0], temp6[15:0]);
    MUX_16bit M7(sel[0], in12[15:0], in13[15:0], temp7[15:0]);
    MUX_16bit M8(sel[0], in14[15:0], in15[15:0], temp8[15:0]);
    MUX_16bit M9(sel[0], in16[15:0], in17[15:0], temp9[15:0]);
    MUX_16bit M10(sel[0], in18[15:0], in19[15:0], temp10[15:0]);
    MUX_16bit M11(sel[0], in20[15:0], in21[15:0], temp11[15:0]);
    MUX_16bit M12(sel[0], in22[15:0], in23[15:0], temp12[15:0]);
    MUX_16bit M13(sel[0], in24[15:0], in25[15:0], temp13[15:0]);
    MUX_16bit M14(sel[0], in26[15:0], in27[15:0], temp14[15:0]);
    MUX_16bit M15(sel[0], in28[15:0], in29[15:0], temp15[15:0]);
    MUX_16bit M16(sel[0], in30[15:0], in31[15:0], temp16[15:0]);


    MUX_16bit M17(sel[1], temp1[15:0], temp2[15:0], temp17[15:0]);
    MUX_16bit M18(sel[1], temp3[15:0], temp4[15:0], temp18[15:0]);
    MUX_16bit M19(sel[1], temp5[15:0], temp6[15:0], temp19[15:0]);
    MUX_16bit M20(sel[1], temp7[15:0], temp8[15:0], temp20[15:0]);
    MUX_16bit M21(sel[1], temp9[15:0], temp10[15:0], temp21[15:0]);
    MUX_16bit M22(sel[1], temp11[15:0], temp12[15:0], temp22[15:0]);
    MUX_16bit M23(sel[1], temp13[15:0], temp14[15:0], temp23[15:0]);
    MUX_16bit M24(sel[1], temp15[15:0], temp16[15:0], temp24[15:0]);
    
    MUX_16bit M25(sel[2], temp17[15:0], temp18[15:0], temp25[15:0]);
    MUX_16bit M26(sel[2], temp19[15:0], temp20[15:0], temp26[15:0]);
    MUX_16bit M27(sel[2], temp21[15:0], temp22[15:0], temp27[15:0]);
    MUX_16bit M28(sel[2], temp23[15:0], temp24[15:0], temp28[15:0]);
    
    MUX_16bit M29(sel[3], temp25[15:0], temp26[15:0], temp29[15:0]);
    MUX_16bit M30(sel[3], temp27[15:0], temp28[15:0], temp30[15:0]);
    
    MUX_16bit M31(sel[4], temp29[15:0], temp30[15:0], out[15:0]);
    
endmodule
