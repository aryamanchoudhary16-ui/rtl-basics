module mux_2x1_rtl ( a, b , sel, out);

input a , b, sel;
output reg out;

always @ (a,b,sel)
begin
if(sel == 0 )
out = a;
else if ( sel == 1)
out =b;
end 

endmodule
