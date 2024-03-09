`timescale 1ns / 1ps

module tb_num_of_ones;

reg [7:0] byte;
wire [2:0] count;
//integer count_ones;

num_of_ones dut (
    .byte(byte),
    .count(count)
);

task count_ones(input [7:0]byte,output count);
    //input [7:0] byte;
    integer i;
    begin
        byte=8'b00000000;
        for (i = 0; i < 8; i = i + 1) 
            byte = $random;
            #7;
    end
endtask 

initial byte=8'b00000000;
count_ones(byte);
endmodule