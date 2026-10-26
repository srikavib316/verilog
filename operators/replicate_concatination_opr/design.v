module concat_replic(input [3:0]a,b, 
                     output [7:0]con,swapp,
                     output [15:0]rep
                    );
  assign con={a,b};
  assign rep={4{b}};
  assign swapp={b,a};
endmodule
