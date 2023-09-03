`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : JK FLIP FLOP USING D FLIP FLOP --> D TO JK FF CONVERSION
//Module  Name : D_FF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module D_FF(clk,D,Q);
input clk,D;
output reg Q=0;

always@(posedge clk) begin
     case({D})
   1'b0      :   Q<=1'b0;
   1'b1      :   Q<=1'b1;
   default   :   Q<=1'b0;
    endcase
end
endmodule
