`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Adder and Subtractor
//Module  : rca_nbit
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module rca_nbit #(parameter N=4)(X,Y,C_in,Sum,Carry);

input [N-1:0]X,Y;
input C_in;
output [N-1:0]Sum;
output Carry;

genvar k;

wire[N:0]C;
assign C[0] = C_in;

generate
	for(k=0; k<N; k=k+1)
	begin:stage
		FA fa(X[k],Y[k],C[k],Sum[k],C[k+1]);
	end
endgenerate

assign Carry = C[N] ;
endmodule