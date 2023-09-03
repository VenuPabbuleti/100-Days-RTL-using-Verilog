`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : JK FLIP FLOP USING D FLIP FLOP --> D TO JK FF CONVERSION
//Module  Name : SR_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module JK_FF(J,K,clk,Q);
input J,K,clk;
output Q;

wire k,q,y1,y2,D;
not n1(k,K);
not n2(q,Q);
and a1(y1,J,q);
and a2(y2,k,Q);
or o1(D,y2,y1);

D_FF dff(clk,D,Q);
endmodule
