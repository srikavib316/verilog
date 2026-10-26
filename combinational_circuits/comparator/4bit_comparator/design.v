module comparator_4bit(
  input [3:0]a,b,
  output G,L,Eq
);
  assign G=(a>b);
  assign L=(a<b);
  assign Eq=(a==b);
endmodule
  
