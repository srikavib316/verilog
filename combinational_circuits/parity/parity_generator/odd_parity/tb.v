module odd_parity_generator_tb;
  reg [3:0]data;
  wire parity;
  odd_parity_generator dut(
    .data(data),
    .parity(parity)
  );
  initial begin
    $dumpfile("odd_parity_generator.vcd");
    $dumpvars(0,odd_parity_generator_tb);
  end
  initial begin
    $monitor("data=%b|parity=%b",data,parity);
    data=4'b0001;#10;
    data=4'b0101;#10;
    data=4'b0011;#10;
    data=4'b0000;#10;
    data=4'b1110;#10;
  end
endmodule
