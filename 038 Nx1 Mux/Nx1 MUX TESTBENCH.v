`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Nx1 MUX
//Module  : mux_Nx1_testbench
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module mux_Nx1_testbench();
localparam N=6;
reg [N-1:0]I;
reg [$clog2(N)-1:0]S;
wire O;
mux_Nx1 #(N) mux(I,S,O);
initial begin
    $monitor("I=%b | S=%b | O=%b |",I,S,O);
       I=6'b101101;
    #5 S=0;
    #5 S=1;
    #5 S=2;
    #5 S=3;
    #5 S=4;
	#5 S=5;
	#5 S=6;
	#5 S=7;
    #5 $finish;
end
endmodule
