`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 3 Bit Synchronous Up Counter
//Module  Name : ASYNC_DOWN_COUNTER
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module ASYNC_DOWN_COUNTER(clk,Q2,Q1,Q0);
input clk;
output Q2,Q1,Q0;

JK_FF FF0(clk,1,1,Q0);
JK_FF FF1(Q0,1,1,Q1);
JK_FF FF2(Q1,1,1,Q2);
endmodule