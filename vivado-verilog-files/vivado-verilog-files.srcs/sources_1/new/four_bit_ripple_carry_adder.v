`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 02:29:25 PM
// Design Name: 
// Module Name: mod_4_ripple_carry_adder
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
module ripple_up_counter(clk, rst, q);
    input clk, rst;
    output [3:0] q;

    dff df1(q[0], ~q[0], clk, rst);   
    dff df2(q[1], ~q[1], ~q[0], rst);  
    dff df3(q[2], ~q[2], ~q[1], rst); 
    dff df4(q[3], ~q[3], ~q[2], rst);  
endmodule

// D Flip-Flop with Asynchronous Reset
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

