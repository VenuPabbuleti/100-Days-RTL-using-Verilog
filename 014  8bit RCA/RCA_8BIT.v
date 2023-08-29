`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : 8BIT RCA
//Module  : 8BIT RCA Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module RCA_8BIT(A,B,sum,cout,out);
input [7:0]A;
input [7:0]B;
output [7:0]sum;
output cout;
output [8:0]out;

wire c1;
RCA_4BIT R1(A[3:0],B[3:0],sum[3:0],c1);
RCA_4BIT R2(A[7:4],B[7:4],sum[7:4],cout);
assign out={cout,sum};
endmodule
