`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Gated D Latch
//Module  Name : D_Latch
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module D_Latch(CLK,D,Q,QB);
input CLK,D;
output Q,QB;

wire w1,w2,d;
not n(d,D);

nand n0(w1,D,CLK);
nand n1(w2,d,CLK);
nand n3(Q,w1,QB);
nand n4(QB,w2,Q);
endmodule