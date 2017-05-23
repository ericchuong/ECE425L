`timescale 1ns / 1ps

module InstrMemory(
    input [4:0] addr,
    output [15:0] ins
    );
        //arbitrary values
        reg [15:0]regis0 = 16'b0000000000000000;
        reg [15:0]regis1 = 16'b1010000000000000;
        reg [15:0]regis2 = 16'b0000001110000000;
        reg [15:0]regis3 = 16'b0000100000001100;
        reg [15:0]regis4 = 16'b0000011100000000;
        reg [15:0]regis5 = 16'b0001111000000000;
        reg [15:0]regis6 = 16'b0000000111111000;
        reg [15:0]regis7 = 16'b0000011111100000;
        reg [15:0]regis8 = 16'b0011100000000000;
        reg [15:0]regis9 = 16'b0000000000000000;
        reg [15:0]regis10 = 16'b0000001100000000;
        reg [15:0]regis11 = 16'b0011110000000000;
        reg [15:0]regis12 = 16'b1100000000000000;
        reg [15:0]regis13 = 16'b0000000111000000;
        reg [15:0]regis14 = 16'b0011111000000000;
        reg [15:0]regis15 = 16'b0000000000111110;
        reg [15:0]regis16 = 16'b0111111111000000;
        reg [15:0]regis17 = 16'b0000000111111110;
        reg [15:0]regis18 = 16'b0000000000000011;
        reg [15:0]regis19 = 16'b0000000111111111;
        reg [15:0]regis20 = 16'b0000000000111000;
        reg [15:0]regis21 = 16'b1111111100000000;
        reg [15:0]regis22 = 16'b0000000000000001;
        reg [15:0]regis23 = 16'b0000000000000010;
        reg [15:0]regis24 = 16'b0000000000011110;
        reg [15:0]regis25 = 16'b0000000000001110;
        reg [15:0]regis26 = 16'b0000000000000110;
        reg [15:0]regis27 = 16'b0000000101000110;
        reg [15:0]regis28 = 16'b0101010111100011;
        reg [15:0]regis29 = 16'b1010101010101010;
        reg [15:0]regis30 = 16'b0000000010001110;
        reg [15:0]regis31 = 16'b0111111111111111;     
        
        MUX32x16_1 MUX32to16(addr[4:0], 
            regis0[15:0], regis1[15:0], regis2[15:0], regis3[15:0],
            regis4[15:0], regis5[15:0], regis6[15:0], regis7[15:0],
            regis8[15:0], regis9[15:0], regis10[15:0], regis11[15:0],
            regis12[15:0], regis13[15:0], regis14[15:0], regis15[15:0],
            regis16[15:0], regis17[15:0], regis18[15:0], regis19[15:0],
            regis20[15:0], regis21[15:0], regis22[15:0], regis23[15:0],
            regis24[15:0], regis25[15:0], regis26[15:0], regis27[15:0],
            regis28[15:0], regis29[15:0], regis30[15:0], regis31[15:0], 
            ins[15:0]);
endmodule
