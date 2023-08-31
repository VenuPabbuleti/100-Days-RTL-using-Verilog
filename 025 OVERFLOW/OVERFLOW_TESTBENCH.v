`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : overflow in signed numbers
//Module  : Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module adder_subtractor_Overflow_tb();
reg[3:0]A,B;
reg add_sub;
wire overflow;
wire Ca;
wire [3:0]Sum;


adder_subtractor_Overflow ACS(A,B,add_sub,Sum,Ca,overflow);

initial  begin
$monitor("A=%d,B=%d,add/sub=%b,Overflow=%b,Carry/sign=%b,Sum=%b",A,B,add_sub,overflow,Ca,Sum); end
initial begin
    A=4'b0110;B=4'b0011;add_sub=1'b0;
#10 A=4'b1010;B=4'b0011;add_sub=1'b0;
#10 A=4'b0110;B=4'b1101;add_sub=1'b0; 
#10 A=4'b1010;B=4'b1101;add_sub=1'b0;  
#10 $finish;
end
endmodule
