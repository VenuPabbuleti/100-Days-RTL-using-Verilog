`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  :Half Adder using Behavioral Model
//Module  :Testbench Module
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module testbench();
wire carry,sum;
reg ip1,ip2;

half_Adder_bl h(ip1,ip2,sum,carry);

initial begin
$monitor("ip1=%b    |    ip2=%b    |    carry=%b   |  sum=%b  ",ip1,ip2,carry,sum);
end
initial begin
ip1=0;  ip2=0;
#2 ip1=0;   ip2=1;
#2 ip1=1;   ip2=0;
#2 ip1=1;   ip2=1;
#2 $finish;
end
endmodule