`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 4 TO 16 DECODER
//Module  Name : TESTBENCH_DECODER_4x16
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TESTBENCH_DECODER_4x16();
reg [3:0]IN;
reg En;
wire [0:15]Y;
decoder_4x16 decoder (En,IN,Y);
initial begin
    $monitor("Enable = %b | input = %b ---> output = %b",En,IN,Y);
end
initial begin
		En = 0;
	#5  En = 1; IN = 0;
    #5  IN = 2;
    #5  IN = 4;
    #5  IN = 7;
    #5  IN = 10;
    #5  IN = 13;
    #5  IN = 15;
    #5 $finish;
end
endmodule
