module demux_1to2(
  input d,s,
  output y0,y1
);
  wire a;
  not g1(a,s);
  and g2(y0,d,a);
  and g3(y1,d,s);
endmodule
