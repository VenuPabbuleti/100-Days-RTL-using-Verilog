`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Comparing Storage Elements (D Latch ,Positive Edge D Flip Flop and Negative Edge Flip Flop)
//Module  Name : D_Latch
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////
module D_Latch(D,clk,Q);
input D,clk;
output reg Q;

always@(D,clk)
begin
	Q = Q;
	if(clk)
		Q = D;
	else
		Q = Q;
end

endmodule