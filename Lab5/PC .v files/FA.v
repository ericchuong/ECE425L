`timescale 1ns / 1ps

module FA(
    input x,
    input y,
    input Cin,
    output s,
    output Cout
    );
    wire temp1, temp2, temp3;
    
    xor xor1 (s, x, y, Cin);
    and A1(temp1, x, y);
    and A2(temp2, x, Cin);
    and A3(temp3, y, Cin);
    or O1(Cout, temp1, temp2, temp3);
endmodule
