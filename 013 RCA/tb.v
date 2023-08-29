`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : RCA
//Module  : RCA Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module tb();
reg [3:0] a,b;
wire [3:0] sum;
wire cout;
wire [4:0] out;
RCA dut(a,b,sum,cout,out);

initial begin
$monitor( "A=%d, B=%d, Sum=%d, Cout=%d ,out=%d", a,b,sum,cout,out); end
  
initial begin
  a=4'd0; b=4'd0;
  #10 a=4'd6; b=4'd4; 
  #10 a=4'd14; b=4'd10;
  #10 a=4'd5; b=4'd7;  
  #10 a=4'd9; b=4'd9;  
  #10 $finish;
end

endmodule