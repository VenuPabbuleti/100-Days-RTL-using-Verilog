`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : Half Subtractor using Behavioral Model
//Module  : Main Design Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module HS_BL(ip1,ip2,borrow,difference);
input ip1,ip2;
output reg borrow,difference;

always@(ip1,ip2) begin
    case({ip1,ip2})
        2'b00   :   begin   borrow=0;   difference=0;   end
        2'b01   :   begin   borrow=1;   difference=1;   end
        2'b10   :   begin   borrow=0;   difference=1;   end
        2'b11   :   begin   borrow=0;   difference=0;   end
        default :   begin   borrow=0;   difference=0;   end
    endcase
end
endmodule
