`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : BINARY TO GRAY CODE CONVERTOR
//Module  Nmae : TESTBENCH
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module BINARY2GRAY_TB();
reg [3:0]B_IN;
wire [3:0]G_OUT;
reg [4:0]count;
BINARY_TO_GRAY b2g(B_IN,G_OUT);
initial $monitor("Binary code = %b   --> Gray Code = %b ",B_IN,G_OUT);

initial begin
for (count=0 ; count<16 ; count=count+1) begin
        B_IN = count;
        #5 ;
    end
#5 $finish;
end
endmodule
