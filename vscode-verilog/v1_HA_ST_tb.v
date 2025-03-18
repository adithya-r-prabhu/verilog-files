`timescale 1ns/1ns

module HA_TB;
    reg A, B;
    wire S, C;

    // Corrected instantiation using named port mapping
    HA uut (S,C,A,B);

    initial begin
        $display("Time\tA B | S C");
        $monitor("%g\t %b %b | %b %b", $time, A, B, S, C);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;  // Corrected placement of $finish
    end

    // Dump waveform for GTKWave
    initial begin
        $dumpvars;
        $dumpfile("dump.vcd");
    end
endmodule
