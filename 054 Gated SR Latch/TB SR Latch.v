`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : Gated SR Latch
//Module  Name : TB_SR_Latch
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module TB_SR_Latch();
reg clk,S,R;
wire Q,QB;

SR_Latch Latch(clk,S,R,Q,QB);

initial clk=0;
always #5 clk=~clk;

initial begin
    $monitor("clk=%b | S=%b , R=%b --> Q=%b | QB=%b ",clk,S,R,Q,QB);
    end
initial begin
     
    S=0;R=0;
    #10 S=0;R=1;
    #10 S=1;R=0;
    #10 S=1;R=1;
    #10 S=1;R=0;
    #10 S=0;R=1;
    #10 S=0;R=0;
    #5 $finish;
end
endmodule
