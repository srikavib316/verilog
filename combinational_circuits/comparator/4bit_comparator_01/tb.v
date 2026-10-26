module comparator_4bit_tb;
  reg [3:0]a;
  reg [3:0]b;
  wire G,L,E;
  comparator_4bit dut(
    .a(a),.b(b),.G(G),.L(L),.E(E)
  );
  initial begin
    $monitor("a=%b,b=%b|G=%b,L=%b,E=%b",a,b,G,L,E);
    a=4'b1010;b=4'b1010;#10;
    a=4'b0011;b=4'b1110;#10;
    a=4'b1100;b=4'b0110;#10;
    a=4'b0111;b=4'b1001;#10;
    a=4'b0000;b=4'b0100;#10;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule
