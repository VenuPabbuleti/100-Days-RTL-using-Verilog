`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : N bit input of 2x1 mux
//Module  : mux_Nx1_testbench
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module mux_Nx1_testbench();
localparam N=4;
reg [N-1:0]w0;
reg [N-1:0]w1;
reg s;
wire [N-1:0]O;

mux_2x1_Nbit #(N) mux(w0,w1,s,O);

initial begin
    $monitor("S = %b | w0 = %b | w1 = %b | O = %b",s,w0,w1,O);
end

initial begin
	   w0=9;w1=7;s=0;
	#5 s=1;
	#5 s=0;
	#5 w0=8;
	#5 w1=11;
	#5 s=1;
	#5 $finish;
end
endmodule
