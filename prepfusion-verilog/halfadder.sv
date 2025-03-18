module halfadder1(a,b,y,z);
output y,z;
input a,b;
assign y = a ^ b;
assign z = a & b;
endmodule