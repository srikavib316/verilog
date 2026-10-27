module ripple_carry_adder4_tb;
  reg [3:0]a,b;
  reg cin;
  wire [3:0]sum;
  wire cout;
  
  ripple_carry_adder4 dut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );
  initial begin
    $dumpfile("ripple_carry_adder4.vcd");
    $dumpvars(0,ripple_carry_adder4_tb);
  end
  initial begin
    $monitor("a=%b,b=%b,cin=%b|sum=%b,cout=%b",a,b,cin,sum,cout);
    a=4'b0000;b=4'b0001;cin=1;#10;
    a=4'b0111;b=4'b0001;cin=0;#10;
    a=4'b1111;b=4'b1111;cin=1;#10;
  end
endmodule
