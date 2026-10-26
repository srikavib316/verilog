module logical_opr_tb;
  reg [3:0]a,b;
  wire yand,yor,ynot;
  logical_opr dut(
    .a(a),
    .b(b),
    .yand(yand),
    .yor(yor),
    .ynot(ynot)
  );
  initial begin
    $monitor("a=%b,b=%b|yand=%b,yor=%b;ynot=%b",a,b,yand,yor,ynot);
    a=4'b0001;b=4'b0011;#5;
    a=4'b0101;b=4'b1010;#5;
    a=4'b0110;b=4'b1110;#5;
    a=4'b1111;b=4'b0000;#5;
  end
endmodule
