 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : N BIT UP AND DOWN Counter
//Module  Name : Nbit_UpandDown_Counter
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Nbit_UpandDown_Counter#(parameter Bit=5)(clk,rst,uad,Count);

input clk,rst,uad;
output reg [Bit-1:0]Count;

always@(posedge clk) begin
    if(rst)
        Count <= 'b0;
    else if(uad)
        Count <= Count+1;
    else if(~uad)
        Count <= Count-1;
end

endmodule
