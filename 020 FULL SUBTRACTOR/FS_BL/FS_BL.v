`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  :Full substractor using Behavioral model
//Module  :Main Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////

module FS_BL(a,b,c,ba,d);
input a,b,c;
output reg ba,d;

always @(a,b,c) begin
      //ba=((~a)&b)|(b&c)|((~a)&c);
      //d=a^b^c;
case({a,b,c})
3'b000:begin ba=0; d=0; end
3'b001:begin ba=1; d=1; end
3'b010:begin ba=1; d=1; end
3'b011:begin ba=1; d=0; end
3'b100:begin ba=0; d=1; end
3'b101:begin ba=0; d=0; end
3'b110:begin ba=0; d=0; end
3'b111:begin ba=1; d=1; end
endcase
end
endmodule
