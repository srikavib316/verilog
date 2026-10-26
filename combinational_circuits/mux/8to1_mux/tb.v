module mux_8to1_tb;
  reg [7:0]d;
  reg s2,s1,s0;
  wire y;
  mux_8to1 dut(
    .d(d),
    .s2(s2),
    .s1(s1),
    .s0(s0),
    .y(y)
  );
  initial begin
    $monitor("d=%b,s2=%b,s1=%b,s0=%b|y=%b",d,s2,s1,s0,y);
    d=8'b0101010;
    s2=0;s1=0;s0=0;#2;
    s2=0;s2=0;s0=1;#2;
    s2=0;s1=1;s0=0;#2;
    s2=0;s1=1;s0=1;#2;
    s2=1;s1=0;s0=0;#2;
    s2=1;s1=0;s0=1;#2;
    s2=1;s1=1;s0=0;#2;
    s2=1;s1=1;s0=1;#2;
  end
endmodule
    
