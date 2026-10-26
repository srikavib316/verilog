module arithmetic_opr_tb;
  reg [3:0]a,b;
  wire [4:0]sum;
  wire [3:0]diff;
  wire [3:0]product;
  wire [3:0]quotient,remainder;
  arithmetic_opr dut(
    .a(a),
    .b(b),
    .sum(sum),
    .diff(diff),
    .product(product),
    .quotient(quotient),
    .remainder(remainder)
  );
  initial begin
    $monitor("a=%2d,b=%2d|sum=%2d,diff=%2d;product=%3d,quotient=%2d,remainder=%2d",a,b,sum,diff,product,quotient,remainder);
    a=4'd8;b=4'd6;#5;
    a=4'd3;b=4'd7;#5;
    a=4'd3;b=4'd7;#5;
    a=4'd8;b=4'd5;#5;
    a=4'd6;b=4'd9;#5;
  end
endmodule
