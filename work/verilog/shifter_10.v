/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shifter_10 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] s
  );
  
  
  
  wire [16-1:0] M_multi_mul;
  reg [8-1:0] M_multi_a;
  reg [8-1:0] M_multi_b;
  multiply_11 multi (
    .a(M_multi_a),
    .b(M_multi_b),
    .mul(M_multi_mul)
  );
  
  always @* begin
    M_multi_a = a[0+7-:8];
    M_multi_b = b[0+7-:8];
    
    case (alufn[0+1-:2])
      2'h0: begin
        s = a << b[0+3-:4];
      end
      2'h1: begin
        s = a >> b[0+3-:4];
      end
      2'h3: begin
        s = $signed(a) >>> b[0+3-:4];
      end
      2'h2: begin
        s = M_multi_mul;
      end
      default: begin
        s = a;
      end
    endcase
  end
endmodule
