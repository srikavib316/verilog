module adder_4bit_tb;
  reg [3:0]a,b,c;
  wire [3:0]sum;
  wire carry;
  adder_4bit dut(
    .a(a),
    .b(b),
    .c(c),
    .sum(sum),
    .carry(carry)
  );
  initial begin
    $monitor("a=%d,b=%d,c=%d|sum=%d,carry=%b",a,b,c,sum,carry);
    a=4'd4;b=4'd7;c=4'd4;#4;
    a=4'd5;b=4'd3;c=4'd3;#4;
    a=4'd8;b=4'd9;c=4'd6;#4;
    a=4'd2;b=4'd4;c=4'd8;#4;
    a=4'd0;b=4'd1;c=4'd5;#4;
  end
endmodule
  
