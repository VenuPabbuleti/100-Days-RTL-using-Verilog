`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Adder and Subtractor
//Module  : Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module adder_subtractor_4bit_tb();
reg[3:0]A,B;
reg add_sub;
wire [3:0]Sum;
wire Ca;

adder_subtractor_4bit ACS(A,B,add_sub,Sum,Ca);

initial  begin
$monitor("A=%d,B=%d,add/sub=%b,Carry/sign=%b,Sum=%b",A,B,add_sub,Ca,Sum); end
initial begin
   
    A=4'b1100;    B=4'b0111;  add_sub=1'b0;
#10 add_sub =1'b1;
#10 A=4'b0101;    B=4'b1001;
#10 add_sub = 1'b0;
#10 A=4'b1000;    B=4'b1100;
#10 add_sub = 1'b1;

#10 A=4'b0111;    B=4'b0101;
#10 add_sub = 1'b0;
#10 A=4'b0111;    B=4'b1000; 
#10 add_sub = 1'b1;
#10 A=4'b1001;    B=4'b1000;
#10 add_sub = 1'b0;
#10 $finish;
end
endmodule
