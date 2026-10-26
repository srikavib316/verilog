module bcd_to_binary(
  input [7:0]bcd,
  output [3:0]binary
);
  assign binary=(bcd>10)?{4'b0001,(bcd+4'd10)}:{4'd0000,bcd};
endmodule
  
