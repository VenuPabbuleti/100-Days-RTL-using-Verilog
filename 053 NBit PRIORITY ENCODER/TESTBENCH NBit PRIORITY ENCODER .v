`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : N BIT PRIORITY ENCODER
//Module  Name : priority_encoder_Nbit_tb
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module priority_encoder_Nbit_tb();
localparam N = 8;
reg [N-1:0]IN;
wire [$clog2(N)-1:0]Y;
priority_encoder_Nbit #(N)pri_enco (IN,Y);
initial begin
    $monitor("input = %b ---> output = %b",IN,Y);
end
initial begin
    #5  IN = 8'b00000000;
    #5  IN = 8'b00000001;
    #5  IN = 8'b00100101;
    #5  IN = 8'b01010110;
    #5  IN = 8'b00010111;
    #5  IN = 8'b11111111;
    #5 $finish;
end
endmodule
