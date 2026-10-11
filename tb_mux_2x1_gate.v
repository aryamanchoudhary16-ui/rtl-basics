module tb_mux_2x1_gate;

reg a, b , sel;
wire out;

mux_2x1_gate dut (a, b, sel, out);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0, tb_mux_2x1_gate);

a = 0; b = 0; sel=0; #10;
a = 1; b = 0; sel=0; #10;
a = 0; b = 1; sel=1; #10;
a = 1; b = 1; sel=1; #10;

end 
endmodule
