`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SR FLIPFLOP
//Module       : TESTBENCH FOR SR FLIP FLOP
//Module  Name : TB_SR_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB_SR_FF();
reg clk,rst,S,R;
wire Q;

SR_FF ff(clk,rst,S,R,Q);

initial clk=0;
always #5 clk=~clk;

initial begin
    $monitor("reset=%b S=%b , R=%b --> Q=%b",rst,S,R,Q);
    end
initial begin
        rst=1;
    #15 rst=0;S=0;R=0;
    #10 S=0;R=1;
    #10 S=1;R=0;
    #10 S=1;R=1;
    #10 S=1;R=0;
    #10 S=0;R=1;
    #10 S=0;R=0;
    /*10 S=0;R=0;
    #10 S=1;R=1;
    #10 S=0;R=0;*/
    #15 $finish;
end
endmodule
