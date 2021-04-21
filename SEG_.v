module SEG_(CLK_IN,CODEOUT,SEG);
input          CLK_IN;	// 输入50MHz
output   [7:0] SEG;		// 八个数码块 SEG0~SEG7
output   [6:0] CODEOUT;	// 数码管a~g
wire           CLK_OUT;
reg         	cnt;

initial cnt = 0;

CLK_500(CLK_IN,CLK_OUT);
BCD_7(CLK_OUT,CODEOUT,SEG);

endmodule
