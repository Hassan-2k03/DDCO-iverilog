module not_t;
reg a;
wire y;
not not_t(y,a);
initial
begin
#000 a=0;
#100 a=1;
end
initial
begin
$monitor($time,"a=%b, y=%b",a,y);
end
initial
begin
$dumpfile("not_test.vcd");	
$dumpvars(0,not_t);		
end
endmodule 