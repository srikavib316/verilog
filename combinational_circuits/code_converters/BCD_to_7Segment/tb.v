module bcd_to_7segment_tb;
  reg [3:0]bcd;
  wire [6:0]seg;
  bcd_to_7segment dut(
    .bcd(bcd),.seg(seg));
  initial begin
    $dumpfile("bcd_to_7segment.vcd");
    $dumpvars(0,bcd_to_7segment_tb);
  end
  initial begin
    $monitor("bcd=%b|seg=%b",bcd,seg);
    bcd=0000;#3;
    bcd=0001;#3;
    bcd=0010;#3;
    bcd=0100;#3;
    bcd=0101;#3;
    bcd=0110;#3;
    bcd=0111;#3;
    bcd=1000;#3;
    bcd=1001;#3;
    
  end
endmodule
