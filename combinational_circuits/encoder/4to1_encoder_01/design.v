module encoder_4to2(
  input [3:0]I,
  output A,B
);
  assign A=I[2]|I[3];
  assign B=I[1]|I[3];
endmodule
