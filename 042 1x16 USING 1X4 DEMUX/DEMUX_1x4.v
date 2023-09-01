`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : 1 TO 16 DEMUX
//Module  Name : 1 TO 4 DEMUX MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module DEMUX_1x4(en,select,data_in,out);
input en,data_in;
input [1:0]select;
output reg [3:0]out;

always@(en,data_in,select)begin
    if(en)
        case(select)
        2'b00   : out={2'b00,1'b0,data_in};  
        2'b01   : out={2'b00,data_in,1'b0};
        2'b10   : out={1'b0,data_in,2'b00};
        2'b11   : out={data_in,3'b000};
        default : out=4'bxxxx;
    endcase
    else
        out=4'b0000;
end
endmodule
