module demux_1to4_tb;
  reg e,s0,s1;
  wire y0,y1,y2,y3;
  demux_1to4 dut(
    .e(e),
    .s0(s0),
    .s1(s1),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
  );
  initial begin
    $monitor("Time=%t,e=%b,s0=%b,s1=%b,y0=%b,y1=%b,y2=%b,y3=%b",$time,e,s0,s1,y0,y1,y2,y3);
    e=1;s0=0;s1=0;#2;
    e=1;s0=0;s1=1;#2;
    e=1;s0=1;s1=0;#2;
    e=1;s0=1;s1=1;#2;
  end
endmodule
