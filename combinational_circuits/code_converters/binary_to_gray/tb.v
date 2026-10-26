module binary_gray_tb;
  reg [3:0]b;
  wire [3:0]g;
  binary_gray dut(
    .b(b),.g(g)
  );
  initial begin
    $monitor("b=%b|g=%b",b,g);
    b=4'b0000;#5;
    b=4'b0001;#5;
    b=4'b0010;#5;
    b=4'b0011;#5;
    b=4'b0100;#5;
    b=4'b0101;#5;
    b=4'b0110;#5;
    b=4'b0111;#5;
  end
endmodule
