`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 3 Bit Synchronous Up Counter
//Module  Name : UpCounter_3Bit
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module UpCounter_3Bit(clk,Q);
input clk;
output [2:0]Q;
/*
output [1:0]Q;
JK_FF FF0(clk,1,1,Q[0]);
JK_FF FF1(clk,Q[0],Q[0],Q[1]);*/
wire q;
and a(q,Q[1],Q[0]);

JK_FF FF0(clk,1,1,Q[0]);
JK_FF FF1(clk,Q[0],Q[0],Q[1]);
JK_FF FF2(clk,q,q,Q[2]);
endmodule
