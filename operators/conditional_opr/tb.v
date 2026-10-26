module conditional_opr_tb;
  reg [3:0]a,b;
  reg sel;
  wire [3:0]y;
  conditional_opr dut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
  );
  initial begin
    $monitor("a=%b,b=%b,sel=%b|y=%b",a,b,sel,y);
    a=0000;b=1111;#5;
  end 
endmodule
