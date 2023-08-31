`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Adder cum Subtractor
//Module  : Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module add_and_sub_tb();
reg[3:0]Ain,B;
reg Cin;
wire [3:0]S;
wire Ca;

add_and_Sub ACS(.Ain(Ain),.B(B),.Cin(Cin),.S(S),.Ca(Ca));

initial  begin
$monitor("Ain=%d,Bin=%d,Cin=%b,Carry/sign=%b,Sum=%d",Ain,B,Cin,Ca,S); end
initial begin

 Ain=4'b1100;    B=4'b0111;  Cin=1'b1;
#10 Ain=4'b0101;    B=4'b1001;
#10 Ain=4'b1000;    B=4'b1100;

#10 Ain=4'b0111;    B=4'b0101;  Cin=1'b0;
#10 Ain=4'b0111;    B=4'b1000; 
#10 Ain=4'b1001;    B=4'b1000;

#10 $finish;
end
endmodule
