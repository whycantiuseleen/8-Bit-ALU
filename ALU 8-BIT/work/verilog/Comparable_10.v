/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module comparable_10 (
    input [5:0] alufn,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] cmp_final
  );
  
  
  
  always @* begin
    cmp_final[1+6-:7] = 7'h00;
    
    case (alufn[1+1-:2])
      2'h1: begin
        cmp_final[0+0-:1] = a == b;
      end
      2'h2: begin
        cmp_final[0+0-:1] = a < b;
      end
      2'h3: begin
        cmp_final[0+0-:1] = a <= b;
      end
      default: begin
        cmp_final[0+0-:1] = 1'h0;
      end
    endcase
  end
endmodule