module encoder_4to2(
  input d0,d1,d2,d3,
  output y0,y1
);
  wire w0,w1;
  not g1(w0,d2);
  and g2(w1,d1,w0);
  or g3(y0,d3,w1);
  or g4(y1,d2,d3);
endmodule
