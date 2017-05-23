`timescale 1ns / 1ps

//temporary file to demonstrate the relationship
module top(
    input clk,//clock
    input CE, //enable
    input [4:0] nextAddress
     );


    //take in the next address and set it equal to the current address
    wire [4:0] address;
    PC pcAddr(clk,CE,nextAddress,address);
    
    //send address to PCplusOne
    //uses 2's compliment from Lab 2
    wire [4:0] addressPlusOne;
    wire cinP1;     //initialized at 0, unused
    wire coutP1;    //unused
    wire VP1;       //unused
    PCplusOne PCp1(cinP1,address,addressPlusOne,coutP1,VP1);

    //send address to INS Memory
    //INS Memeory is from Lab 4, part 2
    wire [15:0]ins;
    InstrMemory INSMemory (address,ins);
    //!!!!!FIND OUT THE PROPER INSTRUCTIONS!!!!!
    
    //send ins to mux1 
    
    //send ins and mux1 result to Reg
    
    //send ins to control
    
    //send ins and addressPlusOne to Addr5bit.v
    
    
endmodule
