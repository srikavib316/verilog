module arithmetic_comp_tb;
  reg [3:0]a;
  reg [3:0]b;
  wire [4:0]y;
  arithmetic_comp dut(
    .a(a),
    .b(b),
    .y(y)
  );
  initial begin
    $dumpfile("arithmetic_comp.vcd");
    $dumpvars(0,arithmetic_comp_tb);
  end
  initial begin
    $monitor("a=%b,b=%b|y=%b",a,b,y);
    a=4'b0110;b=4'b0100;#10;
    a=4'b0100;b=4'b0101;#10;
    a=4'b1011;b=4'b0011;#10;
  end
endmodule
