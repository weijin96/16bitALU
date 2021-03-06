/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boolean_9 (
    input [5:0] alufn,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] bool
  );
  
  
  
  integer s;
  
  integer i;
  
  always @* begin
    for (i = 1'h0; i < 5'h10; i = i + 1) begin
      s = {b[(i)*1+0-:1], a[(i)*1+0-:1]};
      
      case (s)
        2'h0: begin
          bool[(i)*1+0-:1] = alufn[0+0-:1];
        end
        2'h1: begin
          bool[(i)*1+0-:1] = alufn[1+0-:1];
        end
        2'h2: begin
          bool[(i)*1+0-:1] = alufn[2+0-:1];
        end
        2'h3: begin
          bool[(i)*1+0-:1] = alufn[3+0-:1];
        end
        default: begin
          bool[(i)*1+0-:1] = alufn[0+0-:1];
        end
      endcase
    end
  end
endmodule
