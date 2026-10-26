module half_2adder(input a,b,c,output sum,carry);
  wire d,e,f;
  xor g1(d,a,b);
  xor g2(sum,d,c);
  and g3(e,a,b);
  and g4(f,c,d);
  or g5(carry,f,d);
endmodule
