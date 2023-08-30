`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : N bit RCA
//Module  : rca_nbit_testbench
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module rca_nbit_testbench();
localparam n=8;
reg [n-1:0] a,b;
wire [n-1:0] sum;
wire cout;
wire [n-1:0] out;
rca_nbit #(n) dut(a,b,sum,cout,out);

initial begin
$monitor( "A=%d, B=%d, Sum=%d, Cout=%d ,out=%d", a,b,sum,cout,out); end
  
initial begin
  a=0; b=0; 
#10 a='d10;  b='d20;
#10 a='d14;  b='d1; 
#10 a='d5;   b='d0; 
#10 a='d99;  b='d23;
#10 a='d127; b='d127;
#10 a='d255; b='d255; 
#10 $finish;
end

endmodule