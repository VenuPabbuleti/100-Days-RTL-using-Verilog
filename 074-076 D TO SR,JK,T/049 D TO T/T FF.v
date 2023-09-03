`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : T FLIP FLOP USING D FLIP FLOP --> D TO T FF CONVERSION
//Module  Name : T_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module T_FF(T,clk,Q);
input T,clk;
output Q;

wire q,t,y1,y;
not n1(q,Q);
not n2(t,T);
and a1(y1,T,q);
and a3(y,t,Q);
or o1(D,y,y1);

D_FF TFF(clk,D,Q);
endmodule
