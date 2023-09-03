`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : JK FLIP FLOP USING SR FLIP FLOP --> SR TO JK FF CONVERSION
//Module  Name : JK_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module JK_FF(clk,j,k,q);
input clk,j,k;
output q;
wire w,s,r;
not n1(w,q);
and a1(s,w,j);
and a2(r,q,k);
SR_FF ff(clk,s,r,q);
endmodule
