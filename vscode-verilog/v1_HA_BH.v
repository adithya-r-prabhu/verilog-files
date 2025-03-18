module HA(output reg s, output reg c, input a, input b);
    always @(*) begin
        s = a ^ b;
        c = a & b;
    end
endmodule