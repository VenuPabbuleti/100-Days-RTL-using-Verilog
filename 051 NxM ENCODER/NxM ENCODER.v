`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : NxM ENCODER
//Module  Name : NxM_ENCODER
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module NxM_ENCODER #(parameter N = 4 )(IN,Y);
input [N-1:0] IN;
output reg [$clog2(N)-1:0] Y;

integer k;
always @(IN)
begin
	Y='bx;
	for(k=0; k<N; k=k+1)
	begin
		if(IN[k])
			Y = k;
	end
end
endmodule
