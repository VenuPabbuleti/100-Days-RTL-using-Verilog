`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D FLIP FLOP USING JK FLIP FLOP --> JK TO D FF CONVERSION
//Module  Name : JK_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module D_FF(clk,d,q);
input clk,d;
output q;
JK_FF FF(clk,d,~d,q);
endmodule
