`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : N bit magnitude comparator
//Module  : Main design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module n_bit_magnitude_comparator#(parameter N=4)(A,B,L_T,G_T,E);
input [N-1:0]A,B;
output L_T,G_T,E;

assign L_T = (A < B);
assign G_T = (A > B);
assign E   = (A == B);
endmodule