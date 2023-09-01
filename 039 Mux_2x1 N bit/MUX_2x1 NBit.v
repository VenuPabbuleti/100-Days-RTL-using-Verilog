`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : N bit input of 2x1 mux
//Module  : mux_2x1_Nbit
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module mux_2x1_Nbit #(parameter N=3)(w0,w1,s,o);
input [N-1:0]w0;
input [N-1:0]w1;
input s;
output [N-1:0]o;
assign o = s ? w1 : w0;
endmodule