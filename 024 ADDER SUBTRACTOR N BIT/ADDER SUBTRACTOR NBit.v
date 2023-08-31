`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Adder and Subtractor N bit
//Module  : adder_subtractor_Nbit
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module adder_subtractor_Nbit#(parameter N=4)(x,y,add_sub,sum,c_out);
input [N-1:0]x,y;
input add_sub;
output [N-1:0]sum;
output c_out;

wire  [N-1:0]xored_y;

genvar k;
generate
	for(k=0; k<N; k=k+1)
	begin
		assign xored_y[k] = y[k] ^ add_sub;
	end
endgenerate

rca_nbit #(N) addsub1 (x,y,add_sub,sum,c_out);

endmodule