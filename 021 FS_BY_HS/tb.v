`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Full substractor using Half subtractor
//Module  : Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module tb();
reg a,b,c;
wire ba,d;

 Fs_By_Hs fs(.A(a),.B(b),.C(c),.BA(ba),.D(d));

initial begin
$monitor("a=%b,b=%b,c=%b,ba=%b,d=%b",a,b,c,ba,d);
end
initial begin
a=0;b=0;c=0;
#10 a=0;b=0;c=1;
#10 a=0;b=1;c=0;
#10 a=0;b=1;c=1;
#10 a=1;b=0;c=0;
#10 a=1;b=0;c=1;
#10 a=1;b=1;c=0;
#10 a=1;b=1;c=1;
#10 $stop;
end
endmodule