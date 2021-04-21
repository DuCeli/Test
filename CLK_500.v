module CLK_500(CLK_IN,CLK_OUT);     //分频500Hz
input       CLK_IN;
output reg  CLK_OUT;
reg         cnt;
always@(posedge CLK_IN)
begin
    if(cnt < 50000)
    begin
        cnt     <= cnt + 1;
        CLK_OUT <= 1;
    end
    else if(cnt < 100000)
    begin
        cnt     <= cnt + 1;
        CLK_OUT <= 0;
    end
    else
        cnt     <= 0;
end

endmodule