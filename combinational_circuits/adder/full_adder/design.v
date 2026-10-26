module full_adder(input a,b,c,output sum,carry);
  wire x,y,z;
  xor g1(x,a,b);
  and g2(y,a,b);
  xor g3(sum,x,c);
  and g4(z,x,c);
  or g5(carry,x,y);
endmodule
