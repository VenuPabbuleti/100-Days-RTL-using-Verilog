`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Parallel In Serial Out Shift Register--->Behavioral
//Module  Name : piso
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module piso(reset,clk,load,di,do);
input clk,reset,load;
input [3:0]di;
output reg do;

reg [3:0]temp ;

always @(posedge clk)
begin
	if(reset)
	begin
		do = 0;
		temp = 0;
	end
	else if (load)
		temp <= di;
	else
	begin
	    do = temp[0];
		temp = {1'b0,temp[3:1]};
		
	end
		
end
endmodule