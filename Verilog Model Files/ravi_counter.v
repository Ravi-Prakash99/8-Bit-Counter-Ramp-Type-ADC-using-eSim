// Code your design here
module ravi_counter(out,clk,rst);
  output reg [7:0]out;
  input clk, rst;
  initial
    begin
      out = 8'b0;
    end
  always@(posedge clk)
    begin
      out = out + 1;
    end
  always@(rst)
    begin
      if(rst == 1)
        begin
          out = 8'b0;
        end
    end
endmodule
  