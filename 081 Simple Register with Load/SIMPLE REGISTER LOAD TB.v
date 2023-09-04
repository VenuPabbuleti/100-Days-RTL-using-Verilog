`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Simple Register
//Module  Name : simple_register_load_TB
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module simple_register_load_TB ();
localparam N = 3;
reg clk;
reg load;
reg [N-1:0]D;
wire [N-1:0] Q;

simple_register_load #(N) dut(clk,load,D,Q);

initial begin
 clk = 0;
forever #5 clk = ~ clk; end

initial begin
	$monitor("Load=%b | D=%b ---> Q=%b",load,D,Q);
end

initial begin
	D = 1'b1;
	#8  D = 1'b0;
	#2  load = 1'b0;
	#6  load = 1'b1;
	#6  D = 1'b1;
	#5  D = 1'b0;
	#3  load = 1'b0;
	#3  D = 1'b1;
	#6  load = 1'b1;
	#8  D = 6;
	#8  D = 3;
	#8  D = 5 ;
	#11 $finish;
end
endmodule