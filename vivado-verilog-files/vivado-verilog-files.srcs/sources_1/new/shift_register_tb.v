`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 03:42:17 PM
// Design Name: 
// Module Name: shift_register_tb
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
module shift_register_tb;

    // Testbench signals
    reg rst, Sin, clk, Load;
    wire O;

    // Instantiate the DUT (Device Under Test)
    shift_register uut (
        .rst(rst),
        .Sin(Sin),
        .clk(clk),
        .Load(Load),
        .O(O)
    );

    // Clock generation (50% duty cycle, period = 10 time units)
    initial clk = 0;
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        // Initialize signals
        rst = 1; Sin = 0; Load = 0;
        #10 rst = 0; // Release reset

        // Test 1: Load data into the shift register
        Load = 1; Sin = 1; #10; // Shift in 1
        Sin = 0; #10; // Shift in 0
        Sin = 1; #10; // Shift in 1
        Sin = 1; #10; // Shift in 1

        // Test 2: Observe output and shifting behavior
        Load = 0; #10; // Hold state, no shifting should occur
        Load = 1; Sin = 0; #10; // Shift in 0
        Sin = 1; #10; // Shift in 1

        // Test 3: Reset during active operation
        rst = 1; #10; // Assert reset, Q should clear
        rst = 0; #10; // Release reset

        // Final test: Random data patterns
        repeat (5) begin
            Sin = $random % 2; // Randomize input
            Load = 1; #10;
        end

        // End simulation
        $finish;
    end

    // Monitor output for better visualization
    initial begin
        $monitor("Time = %0t | rst = %b | Sin = %b | Load = %b | O = %b | Q = %b", $time, rst, Sin, Load, O, uut.Q);
    end

endmodule