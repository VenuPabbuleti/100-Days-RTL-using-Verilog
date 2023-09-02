`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 2 TO 1 ENCODER
//Module  Name : TESTBENCH_ENCODER_2x1
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TESTBENCH_ENCODER_2x1();
reg [1:0]IN;
wire OUT;
ENCODER_2X1 encoder(IN,OUT);
initial begin
    $monitor("input=%b ,Output=%b",IN,OUT);
        IN=2'b10;
    #5  IN=2'b01;
    #5 $finish;
end
endmodule
