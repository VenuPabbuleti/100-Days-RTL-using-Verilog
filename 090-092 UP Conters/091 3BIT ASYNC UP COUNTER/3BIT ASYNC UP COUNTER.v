`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 3 Bit Synchronous Up Counter
//Module  Name : DownCounter_3Bit
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module ASYNC_UP_COUNTER(clk,Q2,Q1,Q0);
input clk;
output Q2,Q1,Q0;

wire q0,q1;
not n1(q0,Q0);
not n(q1,Q1);

JK_FF FF0(clk,1,1,Q0);
JK_FF FF1(q0,1,1,Q1);
JK_FF FF2(q1,1,1,Q2);
endmodule
