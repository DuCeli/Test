module BCD_7(CLK,CODEOUT,SEG);
input CLK;
output reg [6:0] CODEOUT;   //输出7位
output reg SEG;
reg cnt;
reg [2:0]Q;
initial cnt=0;
always @(CLK)
begin
if(cnt<4)
begin
	case(cnt)
		3'd0: begin Q = 4'd1;	SEG=8'b00001000;	end
		3'd1: begin Q = 4'd7;	SEG=8'b00000100;	end
		3'd2: begin Q = 4'd7;	SEG=8'b00000010;	end
		3'd3: begin Q = 4'd8;	SEG=8'b00000001;	end
	endcase
	case (Q)
		 4'd0 : CODEOUT = 7'b1111110; 
		 4'd1 : CODEOUT = 7'b0110000;
		 4'd2 : CODEOUT = 7'b1101101;
		 4'd3 : CODEOUT = 7'b1111001;
		 4'd4 : CODEOUT = 7'b0110011;
		 4'd5 : CODEOUT = 7'b1011011;
		 4'd6 : CODEOUT = 7'b1011111;
		 4'd7 : CODEOUT = 7'b1110000;
		 4'd8 : CODEOUT = 7'b1111111;
		 4'd9 : CODEOUT = 7'b1111011;
		 default: CODEOUT = 7'bx; 
	endcase
	cnt = cnt+1;
end
else
	cnt = 0;
end
endmodule