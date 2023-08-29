`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : 8bit RCA
//Module  : 8bit RCA Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module tb();
reg [7:0] a,b;
wire [7:0] sum;
wire cout;
wire [8:0] out;
RCA_8BIT dut(a,b,sum,cout,out);

initial begin
$monitor( "A=%d, B=%d, Sum=%d, Cout=%d ,out=%d", a,b,sum,cout,out); end
  
initial begin
  a=0; b=0; 
#10 a=8'd10; b=8'd20;
#10 a=8'd14; b=8'd1; 
#10 a=8'd5; b=8'd0; 
#10 a=8'd99; b=8'd23;
#10 a=8'd127; b=8'd127;
#10 a=8'd255; b=8'd255; 
#10 $finish;
end

endmodule