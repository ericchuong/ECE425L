`timescale 1ns / 1ps
module PCplusOne(
    input Cin,
    input [4:0] nextAddress,
    output [4:0] address,
    output Cout,
    output V
    );
    
    //a 2's compliment
    
    wire [4:0]temp;
    wire [3:0]carry;
    wire a;//initially 0
    
    xor X1 [4:0](temp, nextAddress, Cin);
    FA FA1 [4:0](temp, ~a, {carry[3:0], Cin}, address, {Cout,carry[3:0]});
    xor X2(V,Cout,carry[3]);
    
endmodule
