`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : BINARY TO GRAY CODE CONVERTOR
//Module  Nmae : BINARY_TO_GRAY
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module BINARY_TO_GRAY(B,G);
input [3:0]B;
output [3:0]G;
assign G[3] = B[3];
assign G[2] = B[3]^B[2];
assign G[1] = B[2]^B[1];
assign G[0] = B[1]^B[0];
endmodule
