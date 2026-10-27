module ALU_tb;
  reg [3:0]a;
  reg [3:0]b;
  wire [7:0]y;
  ALU dut(
    .a(a),
    .b(b),
    .y(y)
  );
  initial begin
    $dumpfile("ALU.vcd");
    $dumpvars(0,ALU_tb);
  end
  initial begin
    $monitor("a=%d,b=%d|y=%d",a,b,y);
    a=3;b=4;#10;
  end
endmodule
