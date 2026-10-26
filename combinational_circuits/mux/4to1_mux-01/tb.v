module mux_4to1_tb;
  reg a,b,c,d,s0,s1;
  wire y;
  mux_4to1 dut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .s0(s0),
    .s1(s1),
    .y(y)
  );
  initial begin
    $monitor("time=%t,a=%b,b=%b,c=%b,d=%b,s0=%b,s1=%b,y=%b",$time,a,b,c,d,s0,s1,y);
    a=0;b=1;c=0;d=1;
    s1=0;s0=0;#2;
    s1=0;s0=1;#2;
    s1=1;s0=0;#2;
    s1=1;s0=1;#2;
  end 
endmodule
