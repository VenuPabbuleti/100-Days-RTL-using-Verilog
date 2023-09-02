`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 1 TO 2 DECODER
//Module  Name : 1 TO 2 DECODER DESIGN TESTBENCH MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TESTBENCH_1X2_DECODER();
reg ip;
wire [1:0]out;
DECODER_1X2 decode(ip,out[0],out[1]);
initial begin
    $monitor("input=%b output=%b",ip,out);
        ip=0;
    #5  ip=1;
    #5 $finish;
end
endmodule
