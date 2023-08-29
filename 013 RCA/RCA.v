`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : RCA
//Module  : RCA Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module RCA(A,B,sum,cout,out);
input [3:0]A;
input [3:0]B;
output [3:0]sum;
output cout;
output [4:0]out;

wire c1,c2,c3;
FA F1(A[0],B[0],0,sum[0],c1);
FA F2(A[1],B[1],c1,sum[1],c2);
FA F3(A[2],B[2],c2,sum[2],c3);
FA F4(A[3],B[3],c3,sum[3],cout);

assign out = {cout,sum};
endmodule
