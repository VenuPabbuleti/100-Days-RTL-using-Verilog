`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SERIAL IN PARALLEL OUT[SIPO] SHIFT REGISTER
//Module  Name : SIPO
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module SIPO(d,clk,q);
input d,clk;
output [3:0]q;
D_FF ff1(d, clk, q[3]);
D_FF ff2(q[3], clk, q[2]);
D_FF ff3(q[2], clk, q[1]);
D_FF ff4(q[1], clk, q[0]);
endmodule
