`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 03:45:16 PM
// Design Name: 
// Module Name: mod4_synchronous
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


module mod4_synchronous(input clk,clr,output [1:0]Q);
    dff d1(Q[1],Q[1]^Q[0], clk, clr);
    dff d0(Q[0],~Q[0], clk, clr);   
endmodule



module dff(q, d, clk, rst);
    input d, clk, rst;
    output reg q;

    always @(posedge clk or posedge rst) begin
        if (rst) 
            q <= 1'b0;
        else 
            q <= d;
    end
    
endmodule