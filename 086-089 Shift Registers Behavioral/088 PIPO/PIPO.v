`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Parallel In Parallel Out Shift Register--->Behavioral
//Module  Name : pipo
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module pipo(reset,clk,di,do);
input clk,reset;
input [3:0] di;
output reg[3:0] do;


always @(posedge clk)
begin
	if(reset)
	begin
		do = 0;
	end
	
	else
	begin
		do = di;
	end
		
end
endmodule