module excess3_to_bcd_tb;
  reg [3:0]e;
  wire[3:0]BCD;
  excess3_to_bcd dut(
    .e(e),.BCD(BCD)
  );
  initial begin 
    $dumpfile("excess3_to_bcd.vcd");
    $dumpvars(0,excess3_to_bcd_tb);
  end
  initial begin
    $monitor("e=%b|BCD=%b",e,BCD);
    e=4'b0101;#10;
    e=4'b1100;#10;
    e=4'b1011;#10;
    e=4'b0111;#10;
  end
endmodule
