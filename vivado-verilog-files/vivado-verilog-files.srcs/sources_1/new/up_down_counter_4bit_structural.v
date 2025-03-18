`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 03:18:03 PM
// Design Name: 
// Module Name: up_down_counter_4bit_structural
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


//sel=0 down counter sel=1 up counter
module up_down_counter_4bit_structural(clk, rst, sel, q);
    input clk, rst, sel;
    output [3:0] q;

    wire clk1, clk2, clk3; 

    dff df1(q[0], ~q[0], clk, rst);  

    assign clk1 = sel ? ~q[0] : q[0];
    assign clk2 = sel ? ~q[1] : q[1];
    assign clk3 = sel ? ~q[2] : q[2];

    dff df2(q[1], ~q[1], clk1, rst);  
    dff df3(q[2], ~q[2], clk2, rst); 
    dff df4(q[3], ~q[3], clk3, rst);  
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


