module bitwise_opr_tb;
  reg [3:0]a,b;
  wire [3:0]yand,yor,ynor,yxor,yxnor,ynot,ynand;
  bitwise_opr dut(
    .a(a),
    .b(b),
    .yand(yand),
    .yor(yor),
    .ynor(ynor),
    .yxor(yxor),
    .yxnor(yxnor),
    .ynot(ynot),
    .ynand(ynand)
  );
  initial begin
    $monitor("a=%b,b=%b|yand=%b,yor=%b,ynor=%b,yxor=%b,yxnor=%b,ynot=%b,ynand=%b",a,b,yand,yor,yxor,ynor,yxnor,ynot,ynand);
    a=4'b0000;b=4'b0011;#7;
    a=4'b0101;b=4'b0110;#7;
    a=4'b0010;b=4'b0111;#7;
    a=4'b1111;b=4'b1110;#7;
    a=4'b0110;b=4'b1011;#7;
    a=4'b0001;b=4'b1100;#7;
  end
endmodule
    
