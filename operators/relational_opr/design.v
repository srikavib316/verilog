module relational_opr(
  input [3:0]a,b,
  output G,L,Eq,LE,GE,Neq
);
  assign G=a>b;
  assign L=a<b;
  assign Eq=a==b;
  assign LE=a<=b;
  assign GE=a>=b;
  assign Neq=a!=b;
endmodule
