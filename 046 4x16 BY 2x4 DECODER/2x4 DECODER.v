`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 2 TO 4 DECODER
//Module  Name : decoder_2x4
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module decoder_2x4(En,W,Y);
input En;
input [1:0]W;
output reg [0:3]Y;

always @(En,W)
begin
	if(En)
	begin
		Y = 4'b0000;
		case(W)
			0 :	Y = 4'b1000;
			1 : Y = 4'b0100;
			2 : Y = 4'b0010;
			3 : Y = 4'b0001;
			default :  Y= 4'b0000; 
		endcase
	end
	else
		Y = 4'b0000;
end
endmodule