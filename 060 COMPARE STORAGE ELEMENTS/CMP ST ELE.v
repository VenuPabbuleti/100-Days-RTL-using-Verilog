`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Comparing Storage Elements (D Latch ,Positive Edge D Flip Flop and Negative Edge Flip Flop)
//Module  Name : CMP_ST_ELE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module CMP_ST_ELE(D,CLK,QL,QFF_PC,QFF_NC);
input D,CLK;
output QL,QFF_PC,QFF_NC;

D_Latch  dl (D,CLK,QL);
D_FF_PEC dfp(D,CLK,QFF_PC);
D_FF_NEC dfn(D,CLK,QFF_NC);
endmodule