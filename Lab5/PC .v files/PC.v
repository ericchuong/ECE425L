`timescale 1ns / 1ps

module PC(
    input clk,
    input CE,
    input [4:0] nextAddress,
    output [4:0] address
    );
   
   DFF dff04[4:0](clk,CE,nextAddress,address);
   
//   DFF dff0(clk,CE,nextAddress[0],address[0]);
//   DFF dff1(clk,CE,nextAddress[1],address[1]);
//   DFF dff2(clk,CE,nextAddress[2],address[2]);
//   DFF dff3(clk,CE,nextAddress[3],address[3]);
//   DFF dff4(clk,CE,nextAddress[4],address[4]);
    
endmodule
