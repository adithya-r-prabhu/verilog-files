module HA(output sum,carry,input A,B,C);
assign sum=A^B^C;
assign carry =(A&B)| (C&(A^B));
endmodule