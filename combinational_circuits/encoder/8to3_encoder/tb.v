module encoder_8to3_tb;
  reg [7:0]I;
  wire [2:0]y;
  encoder_8to3 dut(
    .I(I),.y(y)
  );
  initial begin
    $monitor("I=%b|y=%b",I,y);
    I=8'b00000000;#5;
    I=8'b00000001;#5;
    I=8'b00000010;#5;
    I=8'b00000100;#5;
    I=8'b00001000;#5;
    I=8'b00010000;#5;
    I=8'b00100000;#5;
    I=8'b01000000;#5;
    I=8'b10000000;#5;
  end
endmodule
    
