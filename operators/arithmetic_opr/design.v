module arithmetic_opr(input [3:0]a,b,
                      output [4:0]sum,
                      output [3:0]diff,
                      output [3:0]product,
                      output [3:0]quotient,remainder
                     );
  assign sum=a+b;
  assign diff=a-b;
  assign product=a*b;
  assign quotient=a/b;
  assign remainder=a%b;
endmodule
