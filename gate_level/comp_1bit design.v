module comp_1bit(input a,b,output x,y,z);
  wire s,m,u;
  and g1(x,s,b);
  xor g2(y,b,m);
  and g3(z,a,u);
  not g4(s,a);
  not g5(u,b);
endmodule
