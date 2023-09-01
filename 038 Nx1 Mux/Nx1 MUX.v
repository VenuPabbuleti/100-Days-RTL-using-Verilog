`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Nx1 MUX
//Module  : mux_Nx1
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module mux_Nx1 #(parameter N=5)(I,S,O);
input [N-1:0]I;
input [$clog2(N)-1:0]S;
output reg O;

integer k;
always @(I,S)
begin
	for(k=0; k<N; k=k+1)
	begin
	    if(S >=N)
	       O = 0;
		else if(k==S) 
			O = I[k]; 
	end
end
endmodule