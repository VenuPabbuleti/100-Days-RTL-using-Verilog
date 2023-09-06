`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Serial In Parallel Out Shift Register--->Behavioral
//Module  Name : sipo
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module sipo(reset,clk,di,do);
input clk,reset,di;
output reg[3:0] do;

reg [3:0]temp ;

always @(posedge clk)
begin
	if(reset)
	begin
		do = 0;
		temp = 0;
	end
	else
	begin
		temp = {di,temp[3:1]};
		do = temp;
	end
		
end
endmodule