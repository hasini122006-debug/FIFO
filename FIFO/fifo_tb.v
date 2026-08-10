`timescale 1ns/1ps

module fifo_tb;

reg clk;
reg reset;
reg wr_en;
reg rd_en;
reg [3:0] data_in;

wire [3:0] data_out;
wire full;
wire empty;


fifo uut(
    .clk(clk),
    .reset(reset),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
);


always #5 clk = ~clk;


initial
begin

    clk = 0;
    reset = 1;
    wr_en = 0;
    rd_en = 0;
    data_in = 0;


    #10 reset = 0;


    // Write data
    #10;
    wr_en = 1;
    data_in = 4'b1010;


    #10;
    data_in = 4'b1100;


    #10;
    wr_en = 0;


    // Read data
    #10;
    rd_en = 1;


    #10;


    #10;
    rd_en = 0;


    #20;

    $finish;

end


initial
begin

$monitor("Time=%0t Data_In=%b Data_Out=%b Full=%b Empty=%b",
          $time,data_in,data_out,full,empty);

end

endmodule