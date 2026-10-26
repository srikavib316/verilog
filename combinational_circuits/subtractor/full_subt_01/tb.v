module full_subtractor_tb;
  reg a,b,c;
  wire diff,borrow;
  full_subtractor dut(
    .a(a),
    .b(b),
    .c(c),
    .diff(diff),
    .borrow(borrow)
  );
  initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0,full_subtractor_tb);
  end
  initial begin
    $monitor("a=%b,b=%b,c=%b|diff=%b,borrow=%b",a,b,c,diff,borrow);
    a=0;b=0;c=0;#4;
    a=0;b=0;c=1;#4;
    a=0;b=1;c=0;#4;
    a=0;b=1;c=1;#4;
    a=1;b=0;c=0;#4;
    a=1;b=0;c=1;#4;
    a=1;b=1;c=0;#4;
    a=1;b=1;c=1;#4;
  end
endmodule
    
