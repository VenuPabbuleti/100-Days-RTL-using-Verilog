`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D FLIP FLOP USING T FLIP FLOP --> T FF TO D FF CONVERSION
//Module  Name : D_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module D_FF(D,clk,Q);
input D,clk;
output Q;

wire T,q,d,y1,y;
not n1(q,Q);
not n2(d,D);

and a1(y1,D,q);
and a3(y,d,Q);
or o1(T,y,y1);

T_FF TFF(clk,T,Q);
endmodule
