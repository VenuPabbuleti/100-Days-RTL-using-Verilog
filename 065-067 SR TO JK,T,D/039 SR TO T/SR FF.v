`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : T FLIP FLOP USING SR FLIP FLOP --> SR TO T FF CONVERSION
//Module  Name : SR_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module SR_FF(clk,S,R,Q);
input clk,S,R;
output reg Q=0;
always@(posedge clk) begin
     case({S,R})
        2'b00   :   Q<=Q;
        2'b01   :   Q<=1'b0;
        2'b10   :   Q<=1'b1;
        2'b11   :   Q<=1'bx;
    endcase
 end
endmodule
