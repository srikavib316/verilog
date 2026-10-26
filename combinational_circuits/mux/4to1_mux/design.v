module mux_4to1(
  input a,b,c,d,
  input s1,s2,
  output y
);
  assign y=s1?(s2?d:c):(s2?b:a);
  
endmodule
