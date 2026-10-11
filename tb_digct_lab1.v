module tb_digct_lab1;
reg IN1, IN2, IN3, IN4, CLK;
wire OUT1, OUT2, OUT3;

digct_lab1 dut( IN1, IN2, IN3, IN4, CLK, OUT1, OUT2, OUT3);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0, tb_digct_lab1);

IN1=0; IN2=0; IN3=0; IN4=0; CLK=0;
CLK = 0; #5;
CLK = 1; #5;
CLK = 0; #10;

IN1=1; IN2=0; IN3=0; IN4=1;
CLK = 0; #5;
CLK = 1; #5;
CLK = 0; #10;

IN1=1; IN2=1; IN3=1; IN4=0;
CLK = 0; #5;
CLK = 1; #5;
CLK = 0; #10;

$finish;
end
endmodule
