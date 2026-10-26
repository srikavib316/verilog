module incrementerr_tb;
  reg [3:0]a;
  wire [3:0]y;
  incrementerr dut(
    .a(a),.y(y));
  initial begin
    $monitor("a=%b|y=%b",a,y);
    a=4'b1010;#10;
    a=4'b0101;#10;
    a=4'b1001;#10;
    a=4'b0110;#10;
  end
endmodule
  
