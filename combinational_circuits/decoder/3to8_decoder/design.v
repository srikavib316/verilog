module decoder_3to8(
  input a,b,c,
  input e,
  output y0,y1,y2,y3,y4,y5,y6,y7
);
  wire w0,w1,w2;
  not g1(w0,a);
  not g2(w1,b);
  not g3(w2,c);
  and g4(y0,w0,w1,w2,e);
  and g5(y1,w0,w1,c,e);
  and g6(y2,w0,b,w2,e);
  and g7(y3,w0,b,c,e);
  and g8(y4,a,w0,w1,e);
  and g9(y5,a,w1,c,e);
  and g10(y6,a,b,w1,e);
  and g11(y7,a,b,c,e);
endmodule
