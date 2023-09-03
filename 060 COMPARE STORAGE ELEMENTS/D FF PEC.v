`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Comparing Storage Elements (D Latch ,Positive Edge D Flip Flop and Negative Edge Flip Flop)
//Module  Name : D_FF_PEC
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////
module D_FF_PEC(D,clk,Q);
input D,clk;
output reg Q;

always@(posedge clk)
begin
	Q = D;
end

endmodule