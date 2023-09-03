`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Gated SR Latch
//Module  Name : SR_Latch
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module SR_Latch(CLK,S,R,Q,QB);
input CLK,S,R;
output Q,QB;

wire w1,w2;
nand n0(w1,S,CLK);
nand n1(w2,R,CLK);
nand n3(Q,w1,QB);
nand n4(QB,w2,Q);
endmodule