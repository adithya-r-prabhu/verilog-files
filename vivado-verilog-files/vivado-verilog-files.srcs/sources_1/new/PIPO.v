`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 03:24:27 PM
// Design Name: 
// Module Name: PIPO
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


module PIPO(output reg [3:0]Q ,input [3:0]Sin,input clk,clr,load);

    reg [3:0] Q = 4'b0000;

    always @(posedge clk) begin
        if (clr) begin
            Q <= 4'b0000;
        end 
        else if (load) begin
            Q <= Sin; 
        end
    end




endmodule
