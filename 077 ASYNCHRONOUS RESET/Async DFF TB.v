`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Asynchronous D FLIP FLOP
//Module  Name : Async DFF TB
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Async_DFF_TB();
reg clk,D;
reg reset_n; 
reg clear_n; 
wire Q;

Async_DFF dut(clk,D,reset_n,clear_n,Q);

initial begin
	$monitor("reset_n=%b | clear_n=%b | D=%b ---> Q=%b",reset_n,clear_n,D,Q);
end
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
		reset_n = 1'b0;D = 1'b1;
	#3  reset_n = 1'b1;
	#3  clear_n = 1'b0;
	#4  clear_n = 1'b1;
	#5  D = 1'b0;
	#2  clear_n = 1'b0;
	#3  clear_n = 1'b0;
	#5  D = 1'b1;
	#2  reset_n = 1'b0;
	#6  D = 1'b1;
	#5  clear_n = 1'b1; reset_n = 1'b1;
	#3  D = 1'b0;
	#10 D = 1'b1;
	#5  $finish;
end
endmodule