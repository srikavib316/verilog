module mux_2to1_tb;
  reg I0,I1,s;
  wire y;
  mux_2to1 dut(
    .I0(I0),
    .I1(I1),
    .s(s),
    .y(y)
  );
  initial begin
    $monitor("Time=%t|I=%b%b|s=%b|y=%b",$time,I0,I1,s,y);
    s=0;I0=0;I1=0;#2;
    s=0;I0=0;I1=1;#2;
    s=0;I0=1;I1=0;#2;
    s=0;I0=1;I1=1;#2;
    s=1;I0=0;I1=0;#2;
    s=1;I0=0;I1=1;#2;
    s=1;I0=1;I1=0;#2;
    s=1;I0=1;I1=1;#2;
  end
endmodule
