`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 03:21:17 PM
// Design Name: 
// Module Name: up_down_counter_behaviour_tb
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

module up_down_counter_tb;

    // Testbench Signals
    reg [3:0] d_in;
    reg clk, rst, ld, ud;
    wire [3:0] Q;

    // Instantiate the Up/Down Counter Module
    up_down_counter_behaviour_model uut (
        .d_in(d_in),
        .clk(clk),
        .rst(rst),
        .ld(ld),
        .ud(ud),
        .Q(Q)
    );

    // Clock Generation: 10ns clock period
    always #5 clk = ~clk;

    // Stimulus Block
    initial begin
        // Initialize Signals
        clk = 0;
        rst = 1;     // Apply reset
        ld = 0; ud = 0; d_in = 4'b0000;
        #10 rst = 0; // Release reset
        
        // Test Case 1: Load data
        #10 ld = 1; d_in = 4'b0101;   // Load 5
        #10 ld = 0;

        // Test Case 2: Increment Counter
        #10 ud = 1;  // Enable Up-count
        #40;         // Observe 4 increments

        // Test Case 3: Decrement Counter
        #10 ud = 0;  // Enable Down-count
        #40;         // Observe 4 decrements

        // Test Case 4: Reset Mid-Simulation
        #10 rst = 1;  // Apply reset
        #10 rst = 0;

        // Test Case 5: Load New Data After Reset
        #10 ld = 1; d_in = 4'b1010;  // Load 10
        #10 ld = 0;

        // End Simulation
        #20;
        $finish;
    end

    // Monitor for Debugging
    initial begin
        $monitor("Time = %0t | Reset = %b | Load = %b | Up = %b | Q = %b", 
                 $time, rst, ld, ud, Q);
    end

endmodule


