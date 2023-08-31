`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project Name : RTL design using Verilog
//Design  Nmae : 2 Bit Multiplier
//Module  Nmae : Testbench
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module multiplierr_tb();
reg [1:0]A,B;
wire [3:0]P;

Multipler_2bit m1(A,B,P);
reg [4:0]count;

initial begin
$monitor("A=%d | B=%d | Product=%d",A,B,P);
end

initial begin
for(count=0;count<16;count=count+1) begin
    A = count[3:2];
    B = count[1:0];
    #10;
    end
#10 $finish;
end
endmodule
