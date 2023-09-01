`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 4 TO 1 MUX
//Module  Name : MUX TESTBENCH MODULE
//RGUKT NUZVID 
///////////////////////////////////////////////////////////////////////////////////


module MUX_TB();
reg [3:0]I;
reg [1:0]S;
wire O;
MUX_4x1 mux(S,I,O);
initial begin
    $monitor("S1=%b|S0=%b|I3=%b|I2=%b|I1=%b|I0=%b|O=%b",S[1],S[0],I[3],I[2],I[1],I[0],O);
       I=4'b1011;
    #5 S=2'b00;
    #5 S=2'b10;
    #5 I=4'b0100;
    #5 S=2'b11;
    #5 S=2'b01;
    #5 $finish;
end
endmodule
