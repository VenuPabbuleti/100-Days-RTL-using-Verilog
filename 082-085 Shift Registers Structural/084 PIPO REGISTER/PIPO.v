`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : PARALLEL IN PARALLEL OUT[PIPO] SHIFT REGISTER
//Module  Name : PIPO
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module PIPO(clk,d,q);
input clk;
input [3:0]d;
output [3:0]q;
D_FF ff1(d[3], clk, q[3]);
D_FF ff2(d[2], clk, q[2]);
D_FF ff3(d[1], clk, q[1]);
D_FF ff4(d[0], clk, q[0]);
endmodule
