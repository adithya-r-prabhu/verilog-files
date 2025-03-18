module exp_tb;
reg i1,i2;
wire o,p;
halfadder1 dut(.a(i1),.b(i2),.y(o),.z(p));
initial begin
$dumpvars;
$dumpfile("dump.vcd");
i1=0;
i2=0;

#5
i1 = 0;
i2 = 0;

#5
i1 = 0;
i2 = 1;

#5
i1 = 0;
i2 = 1;

#5
i1 = 1;
i2 = 0;

#5
i1 = 1;
i2 = 0;

#5
i1 = 1;
i2 = 1;

#5
i1 = 1;
i2 = 1;

#5
i1 = 1;
i2 = 1;


end
endmodule