module mux_2x1_gate (input a,b,sel, output out); 

wire sel_n;

not n0( sel_n, sel);
and a0(and_a, a, sel_n);
and a1(and_b, b, sel);
or o0(out, and_a, and_b);

endmodule  
