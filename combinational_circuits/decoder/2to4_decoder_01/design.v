module decoder_2to4(
  input a,b,
  output y1,y2,y3,y4
);
  assign y1=~a&~b;
  assign y2=~a&b;
  assign y3=a&~b;
  assign y4=a&b;
endmodule
