module mux_4to1(
  input a,b,c,d,s0,s1,
  output y
);
  wire w1,w2,w3,w4,i,j;
  not g1(i,s1);
  not g2(j,s0);
  and g3(w1,i,j,a);
  and g4(w2,i,s0,b);
  and g5(w3,s1,j,c);
  and g6(w4,s1,s0,d);
  or g7(y,w1,w2,w3,w4);
endmodule
