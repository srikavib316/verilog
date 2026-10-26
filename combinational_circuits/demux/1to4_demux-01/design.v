module demux_1to4(
  input e,s0,s1,
  output y0,y1,y2,y3
);
  wire w0,w1;
  not g1(w0,s0);
  not g2(w1,s1);
  and g3(y0,e,w0,w1);
  and g4(y1,e,w0,s1);
  and g5(y2,e,s0,w1);
  and g6(y3,e,s0,s1);
endmodule
