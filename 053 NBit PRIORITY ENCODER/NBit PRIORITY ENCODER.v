`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : N BIT PRIORITY ENCODER
//Module  Name : priority_encoder_Nbit
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module priority_encoder_Nbit #(parameter N = 4 )(IN,Y);
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