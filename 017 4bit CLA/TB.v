`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : 4Bit CLA
//Module  : Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
wire [4:0] out;
carry_look_ahead_4bit dut(a,b, cin, sum,cout,out);

initial begin
$monitor( "A=%d, B=%d, Cin= %d, Sum=%d, Cout=%d out=%d", a,b,cin,sum,cout,out); end
  
initial begin
  a=4'd0; b=4'd0; cin=1'b0;
  #10 a=4'd0; b=4'd0; cin=1'd1;
  #10 a=4'd14; b=4'd1; cin=1'd1;
  #10 a=4'd5; b=4'd7; cin=1'd0;
  #10 a=4'd9; b=4'd9; cin=1'd1;
  #10 $finish;
end

endmodule