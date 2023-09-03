`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : D FF By 2x1 Mux
//Module  : D_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module D_FF(D,CLK,Q);
input D,CLK;
output Q;

wire f,O;

Mux_2x1 MUX0(f,D,~CLK,f);
Mux_2x1 MUX1(Q,D,CLK,O);
assign Q=O;
endmodule