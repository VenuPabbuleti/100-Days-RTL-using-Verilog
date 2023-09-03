`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Comparing Storage Elements (D Latch ,Positive Edge D Flip Flop and Negative Edge Flip Flop)
//Module  Name : Compare_Storage_Elements_TB
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Compare_Storage_Elements_TB();
reg clk,D;
wire Q_Latch,QFF_Pos,QFF_Neg;

CMP_ST_ELE dut(D,clk,Q_Latch,QFF_Pos,QFF_Neg);

localparam T = 20;
always begin
	clk = 1'b0;
	#(T/2);
	clk = 1'b1;
	#(T/2);
end

initial begin
	D = 1'b1;
	#(2*T);
	D = 1'b0;
	@(posedge clk)
		D = 1'b1;
	#2 D = 1'b0;
	#3 D = 1'b1;
	#4 D = 1'b0;
	repeat (2) @( negedge clk)
		D = 1'b1;
	#20 $finish;
end
endmodule