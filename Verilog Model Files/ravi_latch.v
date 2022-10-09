// Code your design here
module ravi_latch(output reg [7:0]out,input [7:0]in, input rst);
  always@(rst)
    begin
      if(rst == 1)
        begin
          out = in;
        end
    end
endmodule