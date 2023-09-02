`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 4 TO 2 ENCODER
//Module  Name : TESTBENCH_4x2_ENCODER
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TESTBENCH_4x2_ENCODER();
reg D3,D2,D1,D0;
wire O2,O1;
ENCODER_4x2 encoder(D3,D2,D1,D0,O2,O1);
initial begin
    $monitor("input = %b ---> output = %b",{D3,D2,D1,D0},{O2,O1});
        {D3,D2,D1,D0}=4'b0001;
    #5  {D3,D2,D1,D0}=4'b0010;
    #5  {D3,D2,D1,D0}=4'b0100;
    #5  {D3,D2,D1,D0}=4'b1000;
    #5 $finish;
end
endmodule
