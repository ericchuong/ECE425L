`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2016 08:46:51 PM
// Design Name: 
// Module Name: shiftreg_sim
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


module shiftreg_sim();
    reg sel0;
    reg sel1;
    reg [3:0]load;
    reg shiftinput;
    reg en;
    reg clk;
    wire [3:0]out;
    shiftreg uut(sel0, sel1, load[3:0], shiftinput, en, clk, out[3:0]);
    
    initial
    begin
    clk=0;
    repeat(100)
    #1 clk = ~clk;
    end
    
    initial
    begin
    #2 sel0=0; sel1=0; load=0; shiftinput=0; en=1;
    #2 sel0=0; sel1=0; load=0; shiftinput=1; 
    #2 sel0=0; sel1=0; load=1; shiftinput=0; 
    #2 sel0=0; sel1=0; load=1; shiftinput=1;                // hold

    #2 sel0=1; sel1=0; load=0; shiftinput=0; 
    #2 sel0=1; sel1=0; load=0; shiftinput=1; 
    #2 sel0=1; sel1=0; load=1; shiftinput=0; 
    #2 sel0=1; sel1=0; load=1; shiftinput=1;                // load
    
    #2 sel0=0; sel1=1; load=0; shiftinput=0; 
    #2 sel0=0; sel1=1; load=0; shiftinput=1; 
    #2 sel0=0; sel1=1; load=1; shiftinput=0; 
    #2 sel0=0; sel1=1; load=1; shiftinput=1;                // shift left
    
    #2 sel0=1; sel1=1; load=0; shiftinput=0; 
    #2 sel0=1; sel1=1; load=0; shiftinput=1; 
    #2 sel0=1; sel1=1; load=1; shiftinput=0; 
    #2 sel0=1; sel1=1; load=1; shiftinput=1;                // shift right

    end
endmodule
