`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 03:08:41 PM
// Design Name: 
// Module Name: ring_counter_tb
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

`timescale 1ns / 1ps

module ring_counter_tb;

    // Testbench Signals
    reg clk, rst;
    wire [3:0] Q;

    // Instantiate the Ring Counter Module
    ring_counter uut (
        .clk(clk),
        .rst(rst),
        .Q(Q)
    );

    // Clock Generation: 10ns clock period
    always #5 clk = ~clk;

    // Stimulus Block
    initial begin
        // Initialize Signals
        clk = 0;
        rst = 1;           // Apply reset
        #10 rst = 0;       // Release reset
        
        // Observe the output for several clock cycles
        #50;

        // Apply reset mid-way
        rst = 1;
        #10 rst = 0;

        // Continue observing output
        #50;

        $finish;           // End simulation
    end

    // Monitor for Debugging
    initial begin
        $monitor("Time = %0t | Reset = %b | Q = %b", $time, rst, Q);
    end

endmodule
