`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SR FLIP FLOP USING JK FLIP FLOP --> JK TO SR FF CONVERSION
//Module  Name : SR_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module SR_FF(clk,s,r,q);
input clk,s,r;
output q;
JK_FF ff(clk,s,r,q);
endmodule
