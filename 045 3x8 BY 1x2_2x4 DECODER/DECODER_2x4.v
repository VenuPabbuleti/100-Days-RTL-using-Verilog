`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 3 TO 8 DECODER USING 1 TO 2 DECODER AND 2 TO 4 DECODER
//Module  Name : 2 TO 4 DECODER DESIGN MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module DECODER_2x4(EN,A,B,O1,O2,O3,O4);
input EN,A,B;
output reg  O1,O2,O3,O4;
always@(EN,A,B) begin
if(EN)begin
    case({A,B})
    2'b00   :   begin O4=1'b0;O3=1'b0;O2=1'b0;O1=1'b1;  end
    2'b01   :   begin O4=1'b0;O3=1'b0;O2=1'b1;O1=1'b0;  end
    2'b10   :   begin O4=1'b0;O3=1'b1;O2=1'b0;O1=1'b0;  end
    2'b11   :   begin O4=1'b1;O3=1'b0;O2=1'b0;O1=1'b0;  end
    endcase
    end
else
    {O4,O3,O2,O1}   =   4'b0000;
end
endmodule
