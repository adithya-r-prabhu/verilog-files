`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 03:57:38 PM
// Design Name: 
// Module Name: mod4_synchronous_tb
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

module mod4_synchronous_tb();
    reg clk, clr;
    wire [1:0] Q;

    // Instantiate the mod-4 counter
    mod4_synchronous uut (.clk(clk), .clr(clr), .Q(Q));

    // Clock generation (50MHz -> 20ns period)
    always #10 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        clr = 1;
        #15;
        clr = 0;  // Release reset
    
        // Run simulation for a few cycles
        #100;
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | Q=%b", $time, Q);
    end
endmodule