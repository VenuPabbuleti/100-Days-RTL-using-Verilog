`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Simple Register
//Module  Name : simple_register_TB
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////




module simple_register_TB();
localparam N = 3;
reg clk;
reg [N-1:0]D;
wire [N-1:0] Q;

integer value;

simple_register #(N)dut(clk,D,Q);

initial begin
 clk = 0;
forever #5 clk = ~ clk; end

initial begin
	$monitor("D=%b ---> Q=%b",D,Q);
end

initial begin
	for(value = 0; value < 8; value = value + 1)
	begin
		D = value;
		#10;
	end
	#10 $finish;
end
endmodule

