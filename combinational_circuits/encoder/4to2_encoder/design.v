module encoder_4to2(
  input d0,d1,d2,d3,
  output y0,y1
);
  or g1(y0,d1,d3);
  or g2(y1,d2,d3);
endmodule
