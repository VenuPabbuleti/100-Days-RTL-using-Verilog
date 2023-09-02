`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 2 TO 4 DECODER
//Module  Name : 2 TO 4 DECODER DESIGN TESTBENCH MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TESTBENCH_DECODER_2x4();
reg A,B;
wire O1,O2,O3,O4;
DECODER_2x4 decoder(A,B,O1,O2,O3,O4);
initial begin
    $monitor("input=%b -->output=%b",{A,B},{O4,O3,O2,O1});
        A=1'b0;B=1'b0;
    #5  A=1'b0;B=1'b1;
    #5  A=1'b1;B=1'b0;
    #5  A=1'b1;B=1'b1;
    #5 $finish;
end
endmodule
