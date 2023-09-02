`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 1 TO 2 DECODER
//Module  Name : 1 TO 2 DECODER DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module DECODER_1X2(I,O1,O2);
input I;
output reg O1,O2;

always@(I) begin
case(I)
1'b0    :   begin O1=1'b1;O2=1'b0; end
1'b1    :   begin O1=1'b0;O2=1'b1; end
default :   begin O1=1'bx;O2=1'bx; end
endcase
end 

endmodule
