`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SR FLIP FLOP USING D FLIP FLOP --> D TO SR FF CONVERSION
//Module  Name : SR_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module SR_FF(S,R,clk,Q);
input S,R,clk;
output Q;

wire r,y1,D;
not n1(r,R);
and a1(y1,r,Q);
or o1(D,S,y1);

D_FF dff(clk,D,Q);
endmodule
