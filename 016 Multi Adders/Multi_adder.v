`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : MultiAdders
//Module  : multi_adder
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Multi_adder(a,b,s_ab,c_out_ab,x,y,s_xy,c_out_xy);
input [5:0]a,b;
output [5:0]s_ab;
output c_out_ab;
input [6:0]x,y;
output [6:0]s_xy;
output c_out_xy;

rca_nbit #(6) md1(a,b,0,s_ab,c_out_ab);
rca_nbit #(7) md2(x,y,0,s_xy,c_out_xy);

endmodule
