`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Full substractor using Half substractor
//Module  : Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module Fs_By_Hs(A,B,C,BA,D);
input A,B,C;
output BA,D;

wire b1,d1,b2;
hs h1(A,B,d1,b1);
hs h2(C,d1,D,b2);
or o1(BA,b1,b2);

endmodule
