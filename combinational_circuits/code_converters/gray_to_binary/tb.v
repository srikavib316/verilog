module gray_binary_tb;
  reg [3:0]g;
  wire [3:0]b;
  gray_binary dut(
    .g(g),.b(b)
  );
  initial begin
    $monitor("g=%b|b=%b",g,b);
    g=4'b0000;#5;
    g=4'b0001;#5;
    g=4'b0011;#5;
    g=4'b0010;#5;
    g=4'b0110;#5;
    g=4'b0111;#5;
    g=4'b0101;#5;
    g=4'b0100;#5;
  end
endmodule
