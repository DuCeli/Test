`timescale 1ns/1ns
module testbench();
	reg CLK_IN;
	wire [7:0]SEG;
	wire [6:0]CODEOUT;
	parameter T=20;	//50MHz周期
	
	initial
	begin
		CLK_IN  = 0;
	end
	
	always #(T/2)
		CLK_IN=~CLK_IN;
		
	SEG_ _SEG(
		.CLK_IN	(CLK_IN),
		.CODEOUT	(CODEOUT),
		.SEG		(SEG)
	);

endmodule