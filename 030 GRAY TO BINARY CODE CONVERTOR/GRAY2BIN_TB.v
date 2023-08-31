`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : GRAY To BINARY CODE CONVERTOR
//Module  Nmae : TESTBENCH
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module GRAY2BIN_TB();
wire [3:0]B_OUT;
reg [3:0]G_IN;
reg [4:0]count;
GRAY_TO_BINARY g2b(G_IN,B_OUT);
initial $monitor("Gray code = %b   --> Binary Code = %b ",G_IN,B_OUT);

initial begin
for (count=0 ; count<16 ; count=count+1) begin
        G_IN = count;
        #5 ;
    end
#5 $finish;
end
endmodule
