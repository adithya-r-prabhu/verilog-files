

module vectordef_tb;
    vectors uut();  // Instantiate the module

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, vectordef_tb);  // Capture signals inside `vectors`
        $finish;
    end
endmodule
