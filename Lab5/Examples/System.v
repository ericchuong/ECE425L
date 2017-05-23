`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:31 10/07/2014 
// Design Name: 
// Module Name:    System 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: //
//
//////////////////////////////////////////////////////////////////////////////////
module System(clk,sw,dataout,control,sevenseg);
	input clk;
	input [3:0]sw;
	output[3:0]dataout;
	output[2:0]control;
	output[0:6]sevenseg;
	
	LCDM display(clk,{1'b0,sw,35'hFFFFFFFFF},dataout,control);
	
	BinarySevenSeg B27(sw[3],sw[2],sw[1],sw[0],sevenseg);
	

endmodule
