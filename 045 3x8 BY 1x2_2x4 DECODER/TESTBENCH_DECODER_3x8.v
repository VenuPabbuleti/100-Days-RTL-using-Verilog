`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 3 TO 8 DECODER USING 1 TO 2 DECODER AND 2 TO 4 DECODER
//Module  Name : 3 TO 8 DECODER DESIGN TESTBENCH MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TESTBENCH_DECODER_3x8();
reg [2:0]ip;
wire [7:0]op;
DECODER_3x8 decoder(ip,op);
initial begin
    $monitor("input = %b ---> output = %b",ip,op);
        ip=3'b000;
    #5  ip=3'b001;
    #5  ip=3'b010;
    #5  ip=3'b011;
    #5  ip=3'b100;
    #5  ip=3'b101;
    #5  ip=3'b110;
    #5  ip=3'b111;
    #5 $finish;
end
endmodule
