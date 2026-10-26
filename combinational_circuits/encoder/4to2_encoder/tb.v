module encoder_4to2_tb;
  reg d0,d1,d2,d3;
  wire y0,y1;
  encoder_4to2 dut(
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .y0(y0),
    .y1(y1)
  );
  initial begin
    $monitor("Time=%t,d0=%b,d1=%b,d2=%b,d3=%b,y0=%b,y1=%b",$time,d0,d1,d2,d3,y0,y1);
    d3=0;d2=0;d1=0;d0=1;#1;
    d3=0;d2=0;d1=1;d0=0;#1;
    d3=0;d2=1;d1=0;d0=0;#1;
    d3=1;d2=0;d1=0;d0=0;#1;
  end 
endmodule
