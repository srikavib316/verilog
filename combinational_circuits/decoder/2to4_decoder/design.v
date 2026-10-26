module decoder_2to4(
  input a,b,
  output y0,y1,y2,y3
);
  wire c,d;
  not g1(c,a);
  not g2(d,b);
  and g3(y0,c,d);
  and g4(y1,c,b);
  and g5(y2,a,d);
  and g6(y3,a,b);
endmodule
