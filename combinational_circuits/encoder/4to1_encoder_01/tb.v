module encoder_4to2_tb;
  reg [3:0]I;
  wire A,B;
  encoder_4to2 dut(
    .I(I),.A(A),.B(B)
  );
  initial begin
    $monitor("I=%b|A=%b,B=%b",I,A,B);
    I=4'b0001;#10;
    I=4'b0010;#10;
    I=4'b0100;#10;
    I=4'b1000;#10;
  end
endmodule
