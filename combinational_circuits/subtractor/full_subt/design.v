module full_subt(input a,b,c,output diff,borr);
  wire x,y,z,w,t;
  xor g1(diff,a,x);
  xor g2(x,b,c);
  nor g3(y,x);
  not g4(z,x);
  and g5(w,z,c);
  and g6(t,y,a);
  or g7(borr,t,w);
endmodule
