`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : 1 bit magnitude comparator
//Module  : 1 bit magnitude comparator Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Mag_comp_1bit(A,B,L,G,E);
input A,B;
output L,G,E;
assign L = ((~A)&B);
assign G = (A&(~B));
assign E = (A^~B);
endmodule
