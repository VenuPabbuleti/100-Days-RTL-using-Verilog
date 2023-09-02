`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : NxM ENCODER
//Module  Name : NxM_ENCODER_TB
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module NxM_ENCODER_TB();
localparam N = 8;
reg [N-1:0]IN;
wire [$clog2(N)-1:0]Y;
NxM_ENCODER #(N)encoder (IN,Y);
initial begin
    $monitor("input = %b ---> output = %b",IN,Y);
end
initial begin
    #5  IN = 8'b00000000;
    #5  IN = 8'b00000001;
    #5  IN = 8'b00000100;
    #5  IN = 8'b00001000;
    #5  IN = 8'b00000010;
    #5  IN = 8'b00010000;
    #5  IN = 8'b01000000;
    #5  IN = 8'b10000000;
    #5 $finish;
end

endmodule
