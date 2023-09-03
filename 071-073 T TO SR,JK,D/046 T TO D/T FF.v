`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2023 11:51:19 AM
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D FLIP FLOP USING T FLIP FLOP --> T TO D FF CONVERSION
//Module  Name : T_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module T_FF(clk,T,Q);
input clk,T;
output reg Q=0;

always@(posedge clk) begin
     case({T})
   2'b0      :   Q<=Q;
   2'b1      :   Q<=~Q;
   default   :   Q<=1'b0;
    endcase
end
endmodule