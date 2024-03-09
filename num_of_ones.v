`timescale 1ns / 1ps
module num_of_ones(
    input [7:0] byte,
    output reg [2:0] count
);
function automatic integer count_ones;
    input [7:0] byte_data;
    integer i;
    begin
        count_ones = 0;
        for (i = 0; i < 8; i = i + 1) begin
            if (byte_data[i] == 1'b1)
                count_ones = count_ones + 1;
        end
    end
endfunction

always @(*) begin
    count = count_ones(byte);
end

endmodule


