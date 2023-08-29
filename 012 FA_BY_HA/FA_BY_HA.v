`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Full Adder using Half Adder
//Module  : Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module FA_BY_HA(in1,in2,in3,sum,carry);
input in1,in2,in3;
output sum,carry;

wire sum1,carry1,carry2;
HA h1(in1,in2,sum1,carry1);
HA h2(sum1,in3,sum,carry2);
or o1(carry,carry1,carry2);
endmodule
