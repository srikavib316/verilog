module mux_4to1_tb;
  reg a,b,c,d;
  reg s1,s2;
  wire y;
  mux_4to1 dut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .s1(s1),
    .s2(s2),
    .y(y)
  );
  initial begin
    $monitor("a=%b,b=%b,c=%b,d=%b,s1=%b,s2=%b|y=%b",a,b,c,d,s1,s2,y);
    a=0;b=1;c=0;d=1;
    s1=0;s2=0;#6;
    s1=0;s2=1;#6;
    s1=1;s2=0;#6;
    s1=1;s2=1;#6;
  end
endmodule
