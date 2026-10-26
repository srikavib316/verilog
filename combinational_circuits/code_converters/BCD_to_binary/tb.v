module bcd_to_binary_tb;
  reg [7:0]bcd;
  wire [3:0]binary;
  bcd_to_binary dut(
    .bcd(bcd),
    .binary(binary)
  );
  initial begin
    $dumpfile("bcd_to_binary.vcd");
    $dumpvars(0,bcd_to_binary_tb);
  end
  initial begin
    $monitor("Time=%0t,bcd=%b|binary=%b",$time,bcd,binary);
    bcd=8'b00000110;#10;
    bcd=8'b00000101;#10;
    bcd=8'b00000001;#10;
    bcd=8'b00010011;#10;
    bcd=8'b00010101;#10;
  end
endmodule
