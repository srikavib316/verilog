module arithmetic_comp_tb;
  reg [2:0]a;
  reg [2:0]b;
  wire [3:0]y;
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
    a=3'b000;b=3'b000;#10;
    a=3'b010;b=3'b001;#10;
    a=3'b111;b=3'b001;#10;
  end
endmodule
