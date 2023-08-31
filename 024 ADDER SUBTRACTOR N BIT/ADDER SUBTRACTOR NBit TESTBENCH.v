`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Adder and Subtractor N bit
//Module  : Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module adder_subtractor_nbit_tb();
localparam n=4;
reg[n-1:0]A,B;
reg add_sub;
wire [n-1:0]Sum;
wire Ca;

adder_subtractor_Nbit #(n) ACS(A,B,add_sub,Sum,Ca);

initial  begin
$monitor("A=%d,B=%d,add/sub=%b,Carry/sign=%b,Sum=%b",A,B,add_sub,Ca,Sum); end
initial begin
   
    A='b1100;    B='b0111;  add_sub='b0;
#10 add_sub ='b1;
#10 A='b0101;    B='b1001;
#10 add_sub = 1'b0;
#10 A='b1000;    B='b1100;
#10 add_sub = 1'b1;

#10 A='b0111;    B='b0101;
#10 add_sub = 1'b0;
#10 A='b0111;    B='b1000; 
#10 add_sub = 1'b1;
#10 A='b1001;    B='b1000;
#10 add_sub = 1'b0;
#10 $finish;
end
endmodule
