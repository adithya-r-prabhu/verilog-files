module HA(output sum,carry,input A,B);
    wire S1,C1,C2;
    xor xor1(S1,A,B);
    xor xor2(sum,S1,C);


    and and1(C1,A,B);
    and and2(C2,S1,C);
    or or1(carry,C1,C2);

    
endmodule