module comparator_4bit(
  input [3:0]a,
  input [3:0]b,
  output G,L,E
);
  assign G=a>b;
  assign L=a<b;
  assign E=a==b;
endmodule
