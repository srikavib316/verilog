module half_2adder_tb;
  reg a,b,c;
  wire sum,caryy;
  half_2adder dut(
    .a(a),
    .b(b),
    .c(c),
    .sum(sum),
    .carry(carry)
  );
  initial begin
    $monitor("Time=%t|a=%b,b=%b,c=%b|sum=%b,carry=%b",$time,a,b,c,sum,carry);
    a=0;b=0;c=0;#10;
    a=0;b=0;c=1;#10;
    a=0;b=1;c=0;#10;
    a=0;b=1;c=1;#10;
    a=1;b=0;c=0;#10;
    a=1;b=0;c=1;#10;
    a=1;b=1;c=0;#10;
    a=1;b=1;c=1;#10;
  end
endmodule
