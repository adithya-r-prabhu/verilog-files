`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 03:38:12 PM
// Design Name: 
// Module Name: tb_up_down_counter_4bit_structural
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

module tb_up_down_counter_4bit;
    // Inputs
    reg clk, rst, sel;
    wire [3:0] q; // Output
    
    // Instantiate the up/down counter
    up_down_counter_4bit_structural dut(clk, rst, sel, q);

    // Clock Generation: Toggle every 5ns (Period = 10ns)
    initial clk = 0;
    always #5 clk = ~clk;

    // Test Sequence
    initial begin
        $monitor("Time=%0t | clk=%b | rst=%b | sel=%b | q=%b", $time, clk, rst, sel, q);

        rst = 1; sel = 1; // Reset the counter
        #10 rst = 0; // Release reset

        // UP COUNTING (sel=1)
        sel = 1;
        #100; // Run for a few clock cycles

        // DOWN COUNTING (sel=0)
        sel = 0;
        #100; // Run for a few clock cycles

        // Reset and test again
        rst = 1;
        #10 rst = 0;
        sel = 1; // Set to up counting again
        #100;

        $finish;
    end
endmodule
