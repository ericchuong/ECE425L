`timescale 1ns / 1ps

module MUX_16bit(
    input sel,
    input [15:0] in1,
    input [15:0] in2,
    output [15:0] out
    );
        
        MUX2_1 mux0(sel, in1[0],in2[0], out[0]);
        MUX2_1 mux1(sel, in1[1],in2[1], out[1]);
        MUX2_1 mux2(sel, in1[2],in2[2], out[2]);
        MUX2_1 mux3(sel, in1[3],in2[3], out[3]);
        MUX2_1 mux4(sel, in1[4],in2[4], out[4]);
        MUX2_1 mux5(sel, in1[5],in2[5], out[5]);
        MUX2_1 mux6(sel, in1[6],in2[6], out[6]);
        MUX2_1 mux7(sel, in1[7],in2[7], out[7]);
        MUX2_1 mux8(sel, in1[8],in2[8], out[8]);
        MUX2_1 mux9(sel, in1[9],in2[9], out[9]);
        MUX2_1 mux10(sel, in1[10],in2[10], out[10]);
        MUX2_1 mux11(sel, in1[11],in2[11], out[11]);
        MUX2_1 mux12(sel, in1[12],in2[12], out[12]);
        MUX2_1 mux13(sel, in1[13],in2[13], out[13]);
        MUX2_1 mux14(sel, in1[14],in2[14], out[14]);
        MUX2_1 mux15(sel, in1[15],in2[15], out[15]);
    
endmodule


