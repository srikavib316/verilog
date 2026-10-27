module encoder_16to4(
  input [15:0]a,
  output [3:0]y
);
  assign y=a[15]?4'd15 :
    a[14]?4'd14 :
    a[13]?4'd13 :
    a[12]?4'd12 :
    a[11]?4'd11 :
    a[10]?4'd10 :
    a[9]?4'd9  :
    a[8]?4'd8  :
    a[7]?4'd7  :
    a[6]?4'd6  :
    a[5]?4'd5  :
    a[4]?4'd4  :
    a[3]?4'd3  :
    a[2]?4'd2  :
    a[1]?4'd1  :
    a[0]?4'd0  :4'bxxxx;
endmodule
