`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : JK FLIP FLOP USING SR FLIP FLOP --> SR TO JK FF CONVERSION
//Module       : TESTBENCH FOR JK FLIP FLOP USING SR FLIP FLOP
//Module  Name : TB_SR_TO_JK
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB_SR_TO_JK();
reg clk,J,K;
wire Q;

JK_FF ff(clk,J,K,Q);

initial clk=0;
always #5 clk=~clk;

initial begin
    $monitor("J=%b , K=%b --> Q=%b",J,K,Q);
        J=0;K=0;
    #15 J=0;K=1;
    #10 J=1;K=0;
    #10 J=1;K=1;
    #10 J=0;K=0;
    #10 J=0;K=1;
    #10 J=1;K=0;
    #10 J=0;K=1;
    #10 J=1;K=1;
    #15 $finish;
end
endmodule