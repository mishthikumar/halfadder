`timescale 1ns/1ps
module halfaddertb();
  reg a,b;
  wire sum,carry;

  halfadder ha(.a(a),.b(b),.sum(sum),.carry(carry));

  initial begin
    a = 1'b0 ; b = 1'b0 ; #10;
    a = 1'b0 ; b = 1'b1 ; #10;
    a = 1'b1 ; b = 1'b0 ; #10;
    a = 1'b1 ; b = 1'b1 ; 
    #10;
    $finish
  end
endmodule
