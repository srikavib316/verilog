module demux_1to8(
  input d,
  input s2,s1,s0,
  output [7:0]y
);
  assign y= d? (8'b00000001 << {s2,s1,s0}) : 8'b00000000;
endmodule
