`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Hierarchial Design
//Module  : Hierarchial_Design_mux4x1
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Hierarchial_Design_mux4x1(x,s,f);
input [3:0]x;
input [1:0]s;
output f;

wire w1,w2;

mux_2x1 m1(x[0],x[1],s[0],w1);
mux_2x1 m2(x[2],x[3],s[0],w2);
mux_2x1 m3(w1,w2,s[1],f);
endmodule



 