`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : 4 BIT BCD TO BINARY CODE CONVERTER
//Module  Nmae : BCD TO BINARY CODE CONVERTER TESTBENCH MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TESTBENCH();

reg[7:0]bcd;
wire [3:0]binary;
BCD_TO_BINARY uut(bcd,binary);
initial begin
    $monitor("BCD Code input = %b ---> Binary Code output = %b",bcd,binary);
       bcd=8'b0;
    #5 bcd=8'b1;
    #5 bcd=8'b10;
    #5 bcd=8'b11;
    #5 bcd=8'b100;
    #5 bcd=8'b101;
    #5 bcd=8'b110;
    #5 bcd=8'b111;
    #5 bcd=8'b1000;
    #5 bcd=8'b1001;
    #5 bcd=8'b10000;
    #5 bcd=8'b10001;
    #5 bcd=8'b10010;
    #5 bcd=8'b10011;
    #5 bcd=8'b10100;
    #5 bcd=8'b10101;
    $finish;
end
endmodule
