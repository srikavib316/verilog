odule mux_2to1(
  input I0,I1,
  input s,
  output y
);
  wire a,b,c;
  and g1(a,I0,c);
  and g2(b,I1,s);
  or g3(y,a,b);
  not g4(c,s);
endmodule
