`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Blocking and Non Blocking Design
//Module  Name : Non_blocking
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Non_blocking(clk,D,Q0,Q1);
input clk,D;
output reg Q0,Q1;

always@(posedge clk)
begin
	Q0	<=	D;
	Q1	<=	Q0;
end
 
endmodule