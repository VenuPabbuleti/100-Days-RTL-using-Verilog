`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : D Latch By 2x1 Mux
//Module  : D_LATCH
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module D_LATCH(D,CLK,Q);
input D,CLK;
output Q;

wire f;
Mux_2x1 MUX(Q,D,CLK,f);
assign Q=f;
endmodule

 
