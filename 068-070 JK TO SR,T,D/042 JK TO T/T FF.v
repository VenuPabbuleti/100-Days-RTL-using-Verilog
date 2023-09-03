`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : T FLIP FLOP USING JK FLIP FLOP --> JK TO T FF CONVERSION
//Module  Name : JK_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module T_FF(clk,t,q);
input clk,t;
output q;
JK_FF ff(clk,t,t,q);
endmodule
