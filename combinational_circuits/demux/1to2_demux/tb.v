module demux_tb;
  reg d,s;
  wire y0,y1;
  demux dut(
    .d(d),
    .s(s),
    .y0(y0),
    .y1(y1)
  );
  initial begin
    $monitor("d=%b,s=%b|y0=%b,y1=%b",d,s,y0,y1);
    d=0;s=0;#3;
    d=0;s=1;#3;
    d=1;s=0;#3;
    d=1;s=1;#3;
  end
endmodule
