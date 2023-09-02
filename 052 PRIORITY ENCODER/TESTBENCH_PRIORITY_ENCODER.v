`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 8 TO 3 ENCODER
//Module  Name : TESTBENCH_PRIORITY_ENCODER
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TESTBENCH_PRIORITY_ENCODER();
reg [7:0]D;
wire A,B,C;
PRIORITY_ENCODER p_en(D,A,B,C);
initial begin
    $monitor("input = %b ---> output = %b ",D,{A,B,C});
        D=8'b00000000;
    #5  D=8'b10101010;
    #5  D=8'b01011000;
    #5  D=8'b00101010;
    #5  D=8'b00010100;
    #5  D=8'b00001110;
    #5  D=8'b00000101;
    #5  D=8'b00000011;
    #5  D=8'b00000001;
    #5 $finish;
end
endmodule
