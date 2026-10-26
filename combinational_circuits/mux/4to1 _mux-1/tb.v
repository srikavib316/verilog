module mux4to1_tb;
  reg [3:0]d;
  reg [1:0]s;
  wire y;
  mux4to1 dut(
    .d(d),
    .s(s),
    .y(y)
  );
  initial begin
    $monitor("d=%b,s=%b,y=%b",d,s,y);
    d=4'b1010;
    s=2'b00;#2;
    s=2'b01;#2;
    s=2'b10;#2;
    s=2'b11;#2;
  end
endmodule
