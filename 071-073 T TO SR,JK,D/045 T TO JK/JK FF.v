`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : JK FLIP FLOP USING T FLIP FLOP --> T FF TO JK FF CONVERSION
//Module  Name : JK_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module JK_FF(J,K,clk,Q);
input J,K,clk;
output  Q;

wire T,q,y1,y;
not n1(q,Q);
and a1(y1,J,q);
and a(y,K,Q);
or o1(T,y,y1);

T_FF TFF(clk,T,Q);
endmodule
