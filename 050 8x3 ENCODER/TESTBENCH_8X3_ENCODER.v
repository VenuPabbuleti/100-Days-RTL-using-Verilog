`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 8 TO 3 ENCODER
//Module  Name : TESTBENCH_8X3_ENCODER
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TESTBENCH_8X3_ENCODER();
reg [7:0]D;
wire A,B,C;
ENCODER_8x3 encoder(D,A,B,C);
initial begin
    $monitor("input = %b ---> output = %b",D,{A,B,C});
        D=8'b00000000;
    #5  D=8'b10000000;
    #5  D=8'b01000000;
    #5  D=8'b00100000;
    #5  D=8'b00010000;
    #5  D=8'b00001000;
    #5  D=8'b00000100;
    #5  D=8'b00000010;
    #5  D=8'b00000001;
    #5  $finish;
end
endmodule
