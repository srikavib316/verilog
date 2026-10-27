module encoder_16to4_tb;
  reg [15:0]a;
  wire [3:0]y;
  encoder_16to4 dut(
    .a(a),
    .y(y)
  );
  initial begin
    $dumpfile("encoder_16to4.vcd");
    $dumpvars(0,encoder_16to4_tb);
  end
  initial begin
    $monitor("a=%b|y=%b",a,y);
    a=16'b0000000000000100;#10;
    a=16'b0000000000100000;#10;
    a=16'b0000000000000010;#10;
    a=16'b0000000000001000;#10;
  end
endmodule
