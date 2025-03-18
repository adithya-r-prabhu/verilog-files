`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 02:06:15 PM
// Design Name: 
// Module Name: SIPO
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




module SIPO(
    input rst, 
    input Sin, 
    input clk, 
    input Load, 
    output reg [3:0]Q);
    
    initial begin
    Q = 4'b0000;
    end 
    always @(posedge clk) begin
        if (rst) begin
            Q <= 4'b0000;
        end 
        else if (Load) begin
            Q <= {Sin, Q[3:1]};        
        end
    end
endmodule