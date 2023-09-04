`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SERIAL IN SERIAL OUT[SISO] SHIFT REGISTER
//Module  Name : SISO
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module SISO(d,clk,q);
input d,clk;
output q;
wire q1,q2,q3;
DFF ff1(d, clk, q1);
DFF ff2(q1, clk, q2);
DFF ff3(q2, clk, q3);
DFF ff4(q3, clk, q);
endmodule

