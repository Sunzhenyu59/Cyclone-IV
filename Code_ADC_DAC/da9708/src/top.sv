module top(
    input           clk,

    output [7:0]    da9708_db,
    output          da9708_clk
);

parameter CLK_FRE 	= 50; //FPGA 输入MHz

/********************************************************************************/
/**************************      用户逻辑   ************************************/
/********************************************************************************/
wire [7:0] da9708_data;
da9708_ctl da9708_ctl_m0(
    .clk            (clk            ),

    .da9708_data   (da9708_data    )
);

/********************************************************************************/
/**************************    da9708驱动    ************************************/
/********************************************************************************/
assign da9708_db    = da9708_data;
assign da9708_clk   = clk; //由于DAC clk频率通常较高，一般由PLL单独给出

endmodule