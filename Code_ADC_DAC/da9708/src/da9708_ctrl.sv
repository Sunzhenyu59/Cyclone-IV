module da9708_ctl(
    input              clk,

    output reg [7:0]   da9708_data
);

//生成一个锯齿波
always@(posedge clk) da9708_data <= da9708_data + 1;

endmodule