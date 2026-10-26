module demux(
  input d,
  input s,
  output y0,y1
);
  assign y0=d&~s;
  assign y1=d&s;
endmodule
