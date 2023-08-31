`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : 2 Bit Multiplier
//Module  Nmae : Half Adder
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module HA(in1,in2,sum,carry);
input in1,in2;
output sum,carry;
assign sum=in1^in2;
assign carry=in1&in2;
endmodule
