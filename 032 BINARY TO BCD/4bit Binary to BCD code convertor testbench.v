`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : 4 BIT BINARY TO BCD CODE CONVERTOR
//Module  Nmae : BINARY TO BCD CODE CONVERTER TESTBENCH MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Binary_BCD_testbench();
reg [3:0]BINARY;
wire[7:0]BCD;
reg [4:0]temp;
BINARY_TO_BCD dut(BINARY,BCD);

initial begin
$monitor("Binary input = %b --> BCD output = %b ",BINARY,BCD);
for(temp=0 ; temp<16 ; temp = temp+1) begin
    BINARY = temp;
    #5;
    end
$finish;
end

endmodule
