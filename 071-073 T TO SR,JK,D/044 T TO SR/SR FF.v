`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SR FLIP FLOP USING TFF FLIP FLOP --> TFF TO SR FF CONVERSION
//Module  Name : SR_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module SR_FF(S,R,clk,Q);
input S,R,clk;
output  Q;

wire T,q,y1,y;
not n1(q,Q);
and a1(y1,S,q);
and a2(y,R,Q);
or o1(T,y,y1);

T_FF TFF(clk,T,Q);
endmodule

