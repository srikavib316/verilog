module demux_1to4_tb;
  reg d;
  reg [1:0]s;
  wire [3:0]y;
  demux_1to4 dut(
    .d(d),
    .s(s),
    .y(y)
  );
  initial begin
    $monitor("d=%b,s=%b|y=%b",d,s,y);
    d=0;s=2'b00;#5;
    d=1;s=2'b00;#5;
    d=1;s=2'b01;#5;
    d=1;s=2'b10;#5;
    d=1;s=2'b11;#5;
  end 
endmodule
