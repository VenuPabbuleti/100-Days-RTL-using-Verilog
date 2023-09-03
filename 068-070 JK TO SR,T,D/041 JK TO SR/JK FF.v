`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SR FLIP FLOP USING JK FLIP FLOP --> JK TO SR FF CONVERSION
//Module  Name : JK_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module JK_FF(clk,J,K,Q);
input clk,J,K;
output reg Q=0;

always@(posedge clk) begin
     case({J,K})
   2'b00   :   Q<=Q;
   2'b01   :   Q<=1'b0;
   2'b10   :   Q<=1'b1;
   2'b11   :   Q<=~Q;
    endcase
end
endmodule

