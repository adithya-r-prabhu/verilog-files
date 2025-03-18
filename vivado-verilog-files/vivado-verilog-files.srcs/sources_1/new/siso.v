`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 01:49:34 PM
// Design Name: 
// Module Name: siso
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




module siso(
    input rst, 
    input Sin, 
    input clk, 
    input Load, 
    output reg O
);
    reg [3:0] Q = 4'b0000;

    always @(posedge clk) begin
        if (rst) begin
            Q <= 4'b0000;
            O <= 0;
        end 
        else if (Load) begin
            Q <= {Sin, Q[3:1]}; 
            O <= Q[0];         
        end
    end
endmodule
