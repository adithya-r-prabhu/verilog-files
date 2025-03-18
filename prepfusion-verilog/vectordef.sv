


module vectors;
    reg [15:0] data1;  // Correct reg declaration

    initial begin
        data1 = 16'h1234;  // Correct assignment
        $display("Data1: %h", data1[0+:4]);  // Display the value
    end
endmodule

