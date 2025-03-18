module HA(output sum,carry,input A,B);

    xor xor1(sum,A,B);
    and and1(carry,A,B);

    
endmodule