`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2016 05:59:18 PM
// Design Name: 
// Module Name: reg_file
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


module reg_file(
    input [3:0] Aaddr,
    input [3:0] Baddr,
    input [3:0] Caddr,
    input Load,
    input clk,
    input Clear,
    input [15:0] C,
    output [15:0] A,
    output [15:0] B
    );
        wire [15:0]regis0;
        wire [15:0]regis1;
        wire [15:0]regis2;
        wire [15:0]regis3;
        wire [15:0]regis4;
        wire [15:0]regis5;
        wire [15:0]regis6;
        wire [15:0]regis7;
        wire [15:0]regis8;
        wire [15:0]regis9;
        wire [15:0]regis10;
        wire [15:0]regis11;
        wire [15:0]regis12;
        wire [15:0]regis13;
        wire [15:0]regis14;
        wire [15:0]regis15;
        
        wire [15:0]Wregis0;
        wire [15:0]Wregis1;
        wire [15:0]Wregis2;
        wire [15:0]Wregis3;
        wire [15:0]Wregis4;
        wire [15:0]Wregis5;
        wire [15:0]Wregis6;
        wire [15:0]Wregis7;
        wire [15:0]Wregis8;
        wire [15:0]Wregis9;
        wire [15:0]Wregis10;
        wire [15:0]Wregis11;
        wire [15:0]Wregis12;
        wire [15:0]Wregis13;
        wire [15:0]Wregis14;
        wire [15:0]Wregis15;
        
        wire [15:0]tempC;
        wire [15:0]selC;
        
        
        Decoder4_16 C_Dec(Caddr[3:0], tempC[15:0]);
        and A1[15:0](selC, tempC, Load);
        
        MUX_16bit CM0[15:0](selC[0], regis0, C, Wregis0);
        DFF D0[15:0](clk, Load, Wregis0, regis0);
        
        MUX_16bit CM1[15:0](selC[1], regis1, C, Wregis1);
        DFF D1[15:0](clk, Load, Wregis1, regis1);
        
        MUX_16bit CM2[15:0](selC[2], regis2, C, Wregis2);
        DFF D2[15:0](clk, Load, Wregis2, regis2);
        
        MUX_16bit CM3[15:0](selC[3], regis3, C, Wregis3);
        DFF D3[15:0](clk, Load, Wregis3, regis3);
        
        MUX_16bit CM4[15:0](selC[4], regis4, C, Wregis4);
        DFF D4[15:0](clk, Load, Wregis4, regis4);
        
        MUX_16bit CM5[15:0](selC[5], regis5, C, Wregis5);
        DFF D5[15:0](clk, Load, Wregis5, regis5);
        
        MUX_16bit CM6[15:0](selC[6], regis6, C, Wregis6);
        DFF D6[15:0](clk, Load, Wregis6, regis6);
        
        MUX_16bit CM7[15:0](selC[7], regis7, C, Wregis7);
        DFF D7[15:0](clk, Load, Wregis7, regis7);
        
        MUX_16bit CM8[15:0](selC[8], regis8, C, Wregis8);
        DFF D8[15:0](clk, Load, Wregis8, regis8);
        
        MUX_16bit CM9[15:0](selC[9], regis9, C, Wregis9);
        DFF D9[15:0](clk, Load, Wregis9, regis9);
        
        MUX_16bit CM10[15:0](selC[10], regis10, C, Wregis10);
        DFF D10[15:0](clk, Load, Wregis10, regis10);
        
        MUX_16bit CM11[15:0](selC[11], regis11, C, Wregis11);
        DFF D11[15:0](clk, Load, Wregis11, regis11);
        
        MUX_16bit CM12[15:0](selC[12], regis12, C, Wregis12);
        DFF D12[15:0](clk, Load, Wregis12, regis12);
        
        MUX_16bit CM13[15:0](selC[13], regis13, C, Wregis13);
        DFF D13[15:0](clk, Load, Wregis13, regis13);
        
        MUX_16bit CM14[15:0](selC[14], regis14, C, Wregis14);
        DFF D14[15:0](clk, Load, Wregis14, regis14);
        
        MUX_16bit CM15[15:0](selC[15], regis15, C, Wregis15);
        DFF D15[15:0](clk, Load, Wregis15, regis15);
        
        MUX16x16_1 A_MUX(Aaddr[3:0], regis0[15:0], regis1[15:0], regis2[15:0], regis3[15:0], regis4[15:0], regis5[15:0], regis6[15:0], 
            regis7[15:0], regis8[15:0], regis9[15:0], regis10[15:0], regis11[15:0], regis12[15:0], regis13[15:0], regis14[15:0], regis15[15:0], A[15:0]);
                                                                                    //output what is in Aaddr to A
                                                                            
        MUX16x16_1 B_MUX(Baddr[3:0], regis0[15:0], regis1[15:0], regis2[15:0], regis3[15:0], regis4[15:0], regis5[15:0], regis6[15:0], 
            regis7[15:0], regis8[15:0], regis9[15:0], regis10[15:0], regis11[15:0], regis12[15:0], regis13[15:0], regis14[15:0], regis15[15:0], B[15:0]);
                                                                                    //output what is in Baddr to B
endmodule
