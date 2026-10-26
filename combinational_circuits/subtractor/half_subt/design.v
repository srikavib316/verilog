module half_subt(input a,b,output diff,borr);
  wire c;
  xor g1(diff,a,b);
  not g2(c,a);
  and g3(borr,c,b);
endmodule
