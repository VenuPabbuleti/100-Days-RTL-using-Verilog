`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Blocking and Non Blocking Design
//Module  Name : Block_NonBlock_TB
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Block_NonBlock_TB();
reg clk,D;
wire Q0_block,Q1_block,Q0_N_block,Q1_N_Block;

Block_NonBlock dut(clk,D,Q0_block,Q1_block,Q0_N_block,Q1_N_Block);

initial begin
	$monitor("D=%b | Q0_block=%b | Q1_block=%b | Q0_N_block=%b | Q1_N_Block=%b",D,Q0_block,Q1_block,Q0_N_block,Q1_N_Block);
end

initial begin
clk = 0;
forever #5 clk = ~ clk; end

initial begin
	D = 1'b1;
	#6  D = 1'b0;
	#7  D = 1'b1;
	#9  D = 1'b0;
	#8  D = 1'b1;
	#6  D=1'b0;
	#16 $finish;
end

endmodule











