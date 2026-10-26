module decrementerr_tb;
  reg [2:0]a;
  wire [2:0]y;
  decrementerr dut(
    .a(a),.y(y));
  initial begin
    $monitor("a=%b|y=%b",a,y);
    a=3'b101;#2;
    a=3'b011;#2;
    a=3'b010;#2;
    a=3'b110;#2;
  end
endmodule
