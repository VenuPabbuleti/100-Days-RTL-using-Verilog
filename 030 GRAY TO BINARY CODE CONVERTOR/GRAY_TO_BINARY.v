`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : GRAY BINARY CODE CONVERTOR
//Module  Nmae : GRAY_TO_BINARY CODE CONVERTOR DESIGN
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module GRAY_TO_BINARY(G_IN,B_OUT);
input [3:0]G_IN;
output [3:0]B_OUT;
assign B_OUT[3] = G_IN[3];
assign B_OUT[2] = B_OUT[3] ^ G_IN[2];
assign B_OUT[1] = B_OUT[2] ^ G_IN[1];
assign B_OUT[0] = B_OUT[1] ^ G_IN[0];
endmodule
