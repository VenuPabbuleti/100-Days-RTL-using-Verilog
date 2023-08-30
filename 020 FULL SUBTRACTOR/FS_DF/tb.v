`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Title   : Full substractor using Data Flow method
//Module  : Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module tb();
reg a,b,c;
wire ba,d;

fs_df luu(.a(a),.b(b),.c(c),.ba(ba),.d(d));

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
#10 $finish;
end
endmodule
