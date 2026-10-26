module mux_2to1_tb;
  reg a,b,s;
  wire y;
  mux_2to1 dut(
    .a(a),
    .b(b),
    .s(s),
    .y(y)
  );
  initial begin
    $monitor("Time=%t|a=%b,b=%b|s=%b|y=%b",$time,a,b,s,y);
    s=0;a=0;b=1;#2;
    s=1;a=1;b=0;#2;

  end
endmodule
