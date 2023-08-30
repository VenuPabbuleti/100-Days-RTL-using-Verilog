`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Multi Adders
//Module  : MultiAdder_Testbench
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module MultiAdder_Testbench();
reg [5:0]a,b;
wire[5:0]s_ab;
wire c_out_ab;
reg [6:0]x,y;
wire [6:0]s_xy;
wire c_out_xy;

Multi_adder dut(a,b,s_ab,c_out_ab,x,y,s_xy,c_out_xy);

initial begin
    $monitor( "a=%d, b=%d, Sum_ab=%d, Cout_ab=%d", a,b,s_ab,c_out_ab); 
    $monitor( "x=%d, y=%d, Sum_xy=%d, Cout_xy=%d", x,y,s_xy,c_out_xy);
end

initial begin
  a='d14;  b='d1;  x='d100; y='d25;
#10 a='d30;  b='d23; x='d55; y='d65; 
#10 $finish;
end
endmodule
