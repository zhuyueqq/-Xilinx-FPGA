`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/13 11:57:54
// Design Name: 
// Module Name: led_run_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_run_tb;
    reg clk;
    reg rstn;
    wire[7:0] led;
    
led_run led_run(
   . clk(clk),
    .rstn(rstn),
   . led(led)
    );
    
 initial clk = 1;
 always #10 clk = ~clk;
 
 initial begin 
 rstn = 0;
 #201
 rstn= 1;
 #40000000
 $stop;
 end
        
endmodule
