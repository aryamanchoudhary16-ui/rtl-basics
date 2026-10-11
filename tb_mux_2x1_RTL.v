module tb_mux_2x1_RTL;

reg a, b , sel;
wire out;

mux_2x1_rtl dut (a,b,sel,out);

initial begin 
$dumpfile("dump.vcd");
$dumpvars(0, tb_mux_2x1_RTL);

a=0; b=0; sel=0; #10;
a=1; b=0; sel=0; #10;
a=0; b=1; sel=1; #10;
a=1; b=1; sel=1; #10;
$finish;
end
endmodule
