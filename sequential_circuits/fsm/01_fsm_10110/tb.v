module fsm_10110_tb;
  reg clk,rst,din;
  wire out;
  
  fsm_10110 dut(
    .clk(clk),.rst(rst),.din(din),.out(out));

initial clk=0;
always #5 clk=~clk;

initial begin
  $monitor("din=%b,out=%b",din,out);

    rst=1;
    din=0;
    rst=0; #10;
    din=1; #10;
    din=0; #10;
    din=1; #10;
    din=1; #10;
    din=0; #10;
    din=1; #10;
    din=0; #10;
  $finish;
end

endmodule
