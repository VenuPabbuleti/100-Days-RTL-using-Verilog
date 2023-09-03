`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : JK FLIP FLOP USING D FLIP FLOP --> D TO JK FF CONVERSION
//Module       : TESTBENCH FOR JK FLIP FLOP USING D FLIP FLOP
//Module  Name : TB_DFF_TO_JK_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB_DFF_TO_JK_FF();
reg J,K,clk;
wire Q;
JK_FF jkff(J,K,clk,Q);

initial clk=0;
always #5 clk=~clk;

initial begin
    $monitor("J=%b , K=%b --> Q=%b",J,K,Q);
    end
initial begin
            J=0;K=0;
        #10 J=0;K=1;
        #10 J=1;K=0;
        #10 J=1;K=1;
        #10 J=1;K=0;
        #10 J=0;K=1;
        #10 J=0;K=0;
        #10 J=0;K=0;
        #10 J=1;K=1;
        #10 J=0;K=0;
        #15 $finish;
    end
endmodule
