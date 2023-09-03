`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SR FLIP FLOP USING T FLIP FLOP --> T TO SR FF CONVERSION
//Module       : TESTBENCH FOR SR FLIP FLOP USING T FLIP FLOP
//Module  Name : TB_T_SR_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB_T_SR_FF();
reg clk,S,R;
wire Q;

SR_FF ff(S,R,clk,Q);

initial clk=0;
always #5 clk=~clk;

initial begin
    $monitor("S=%b , R=%b --> Q=%b",S,R,Q);
    end
initial begin
        S=0;R=0;
    #10 S=0;R=1;
    #10 S=1;//R=0;
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

