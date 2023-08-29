`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Full Adder using Half Adder
//Module  : Half Adder Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module HA(in1,in2,sum,carry);
input in1,in2;
output sum,carry;
assign sum = in1^in2 ;
assign carry = in1&in2;
endmodule
