`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : N TO M DECODER
//Module  Name : decoder_NxM
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module decoder_NxM #(parameter N = 3 )(En,IN,Y);
input En;
input [N-1:0] IN;
output reg [0:2**N-1] Y;

always @(IN,En)
begin
	Y='b0;
	if(En)
		Y[IN] = 1'b1;
	else
		Y = 'b0;

end
 
endmodule