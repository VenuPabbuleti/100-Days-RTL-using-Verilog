`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : 8Bit CLA
//Module  : Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module tb;
reg [7:0] a,b;
reg cin;
wire [7:0] sum;
wire cout;
wire [8:0]out;

CLA_8bit uut(.a(a), .b(b),.cin(cin),.sum(sum),.cout(cout),.out(out));
initial
    $monitor( "A=%d, B=%d, Cin= %d, Sum=%d, Cout=%d Out=%d", a,b,cin,sum,cout,out);
    
initial begin
  a=0; b=0; cin=0;
  #10 a=8'd0; b=8'd0; cin=1'd1;
  #10 a=8'd14; b=8'd1; cin=1'd1;
  #10 a=8'd5; b=8'd0; cin=1'd0;
  #10 a=8'd99; b=8'd23; cin=1'd1;
  #10 a=8'd120; b=8'd60; cin=1'd1;
  #10 a=8'd127; b=8'd126; cin=1'd1;
  #10 $finish;
end


endmodule