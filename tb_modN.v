`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2023 12:25:41 PM
// Design Name: 
// Module Name: tb_modN
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


module tb_mod;

        parameter N = 10;
        parameter WIDTH = 4;
        
        reg clk,reset;
        wire [WIDTH-1:0] out;
        
        modN_counter dut(.clk(clk),.reset(reset),.out(out));
        
        initial
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        
        initial
        begin
            reset = 0;
            #20;
            reset = 1;    
        end
endmodule
