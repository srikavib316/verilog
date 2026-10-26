module equality_comparator_tb;
  reg [3:0]a;
  reg [3:0]b;
  wire eq;
  equality_comparator dut(
    .a(a),
    .b(b),
    .eq(eq)
  );
  initial begin
    $dumpfile("equality_comparator.vcd");
    $dumpvars(0,equality_comparator_tb);
  end
  initial begin
    $monitor("a=%b,b=%b|eq=%b",a,b,eq);
    a=4'b0101;b=4'b0101;#4;
    a=4'b1010;b=4'b0110;#4;
    a=4'b1111;b=4'b1111;#4;
    a=4'b0101;b=4'b1110;#4;
  end
endmodule
