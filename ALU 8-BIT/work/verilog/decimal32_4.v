/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module decimal32_4 (
    input [7:0] a,
    output reg [3:0] out0,
    output reg [3:0] out1,
    output reg [3:0] out2
  );
  
  
  
  integer i;
  
  reg [3:0] ones;
  
  reg [3:0] hundreds;
  
  reg [3:0] tens;
  
  reg [7:0] shift;
  
  always @* begin
    ones = 1'h0;
    tens = 1'h0;
    hundreds = 1'h0;
    shift = a;
    for (i = 1'h0; i < 4'h8; i = i + 1) begin
      if (ones >= 3'h5) begin
        ones = ones + 2'h3;
      end
      if (tens >= 3'h5) begin
        tens = tens + 2'h3;
      end
      if (hundreds >= 3'h5) begin
        hundreds = hundreds + 2'h3;
      end
      hundreds = hundreds << 1'h1;
      hundreds[0+0-:1] = tens[3+0-:1];
      tens = tens << 1'h1;
      tens[0+0-:1] = ones[3+0-:1];
      ones = ones << 1'h1;
      ones[0+0-:1] = shift[7+0-:1];
      shift = shift << 1'h1;
    end
    out2 = hundreds;
    out1 = tens;
    out0 = ones;
  end
endmodule
