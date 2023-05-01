`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2023 12:19:11 PM
// Design Name: 
// Module Name: modN_counter
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


module modN_counter
        #(parameter N = 10,
        parameter WIDTH = 4)
        
        (input clk,reset,
        output reg [WIDTH-1:0] out);
        
        always@(posedge clk)
        begin
            if(!reset)
            out <= 0;
            else
                if(out == N-1)
                out <= 0;
                else
                out <= out + 1;
         end              
endmodule
