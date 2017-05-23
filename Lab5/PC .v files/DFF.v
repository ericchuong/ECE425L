`timescale 1ns / 1ps

// 425L D flip-flop
module DFF (CLK,CE,D,Q);
    input CLK;
    input CE;
    input D;
    output reg Q = 0;
    always @(posedge CLK)
    if (CE) Q <= D;
endmodule
