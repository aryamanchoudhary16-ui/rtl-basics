module digct_lab1( 

input IN1, IN2, IN3, IN4, CLK,
output reg OUT1, OUT2, OUT3

);

reg D0,D1,D2;

always @(posedge CLK)
begin
OUT1 <= D0;
OUT2 <= D1;
OUT3 <= D2;
end

always @(*)
begin
D0 = ~(IN1 | IN2);
D1 = ~(IN2 & IN3);
D2 = (IN3 | IN4);
end 

endmodule



