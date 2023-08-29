`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : 8BIT RCA
//Module  : Full Adder
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module FA(in1,in2,in3,sum,carry);
input in1,in2,in3;
output sum,carry;
assign sum = in1^in2^in3;
assign carry = (in1&in2)|(in2&in3)|(in3&in1);
endmodule
