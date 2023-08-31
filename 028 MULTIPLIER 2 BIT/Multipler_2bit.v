`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : 2 Bit Multiplier
//Module  Nmae : Main Design
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module Multipler_2bit(A,B,P);
input [1:0]A,B;
output [3:0]P;

wire [3:0]m;
and a2(m[0],A[1],B[0]);
and a3(m[1],A[0],B[1]);
and a4(m[2],A[1],B[1]);

and a1(P[0],A[0],B[0]);
HA H1(m[0],m[1],P[1],m[3]);
HA H2(m[2],m[3],P[2],P[3]);
endmodule
