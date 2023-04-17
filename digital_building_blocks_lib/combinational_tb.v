module combinational_tb;

parameter n = 2;
parameter m = 4;
reg [n-1:0] a;
wire [m-1:0] b;

Dec #(n,m) d1(a,b);

// Test each possible input of a 
initial begin
    $monitor("At time %t, a = %d, b = %d", $time, a, b);
    $dumpfile("combinational_tb.vcd");
    $dumpvars(0, combinational_tb);
    # 5 a = 0;
    # 5 a = 1;
    # 5 a = 2;
    # 5 a = 3;
end

endmodule

