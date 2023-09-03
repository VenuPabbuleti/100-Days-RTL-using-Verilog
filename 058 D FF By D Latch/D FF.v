`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D FF Using D LATCH
//Module  Name : DFF_DL
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module DFF_DL(D,CLK,Q);
input CLK,D;
output Q;

wire q;
D_LATCH L1(~CLK,D,q);
D_LATCH L2(CLK,q,Q);
endmodule