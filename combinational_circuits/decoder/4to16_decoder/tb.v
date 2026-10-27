module decoder_4to16_tb;
  reg [3:0]a;
  wire [15:0]y;
  decoder_4to16 dut(
    .a(a),
    .y(y)
  );
  initial begin
    $dumpfile("decoder_4to16.vcd");
    $dumpvars(0,decoder_4to16_tb);
  end
  initial begin
    $monitor("a=%b,|y=%b",a,y);
    a=4'b0000;#10;
    a=4'b0101;#10;
    a=4'b1010;#10;
    a=4'b0001;#10;
    a=4'b1111;#10;
  end
endmodule
