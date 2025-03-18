`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 02:16:24 PM
// Design Name: 
// Module Name: SIPO_tb
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
module SIPO_tb;

    reg clk, rst, Sin, Load;
    wire [3:0] Q;

    // Instantiate the SIPO shift register
    SIPO uut (
        .rst(rst),
        .Sin(Sin),
        .clk(clk),
        .Load(Load),
        .Q(Q)
    );

    // Clock Generation
    always #5 clk = ~clk; // 10ns clock period

    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        Sin = 0;
        Load = 0;

        // Apply reset
        #10 rst = 0;

        // Load serial data
        #10 Load = 1; Sin = 1; // Shift in '1'
        #10 Load = 1; Sin = 0; // Shift in '0'
        #10 Load = 1; Sin = 1; // Shift in '1'
        #10 Load = 1; Sin = 1; // Shift in '1'
        
        // Stop loading
        #10 Load = 0;

        // Hold simulation for observation
        #50 $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time = %0t | rst = %b | Sin = %b | Load = %b | Q = %b", 
                 $time, rst, Sin, Load, Q);
    end

endmodule
