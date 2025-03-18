`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 02:00:16 PM
// Design Name: 
// Module Name: siso_tb
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
`timescale 1ns/1ps
module siso_tb;

    // Testbench signals
    reg clk, rst, Sin, Load;
    wire O;

    // Instantiate the shift register
    siso uut (
        .rst(rst),
        .Sin(Sin),
        .clk(clk),
        .Load(Load),
        .O(O)
    );

    // Clock Generation
    always #5 clk = ~clk; // 10ns clock period (100MHz)

    // Test sequence
    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        Sin = 0;
        Load = 0;

        // Apply reset
        #10 rst = 0; 

        // Load first bit
        #10 Load = 1; Sin = 1; // Shift in '1'
        #10 Load = 1; Sin = 0; // Shift in '0'
        #10 Load = 1; Sin = 1; // Shift in '1'
        #10 Load = 1; Sin = 1; // Shift in '1'
        
        // Continue shifting
        #10 Load = 1; Sin = 0; 
        #10 Load = 1; Sin = 1; 
        #10 Load = 1; Sin = 0; 
        #10 Load = 1; Sin = 1; 

        // Stop loading
        #10 Load = 0; 

        // Hold simulation for observation
        #50 $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time = %0t | rst = %b | Sin = %b | Load = %b | O = %b", 
                 $time, rst, Sin, Load, O);
    end

endmodule

