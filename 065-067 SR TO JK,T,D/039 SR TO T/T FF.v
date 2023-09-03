`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : T FLIP FLOP USING SR FLIP FLOP --> SR TO T FF CONVERSION
//Module  Name : T_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module T_FF(clk,t,q);
input clk,t;
output q;

wire s,r,Q;
not n1(Q,q);
and a1(s,t,Q);
and a2(r,t,q);
SR_FF ff(clk,s,r,q);
endmodule
