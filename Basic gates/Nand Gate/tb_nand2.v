module nandgate_t;
reg a,b;
wire y1;
and nandgate_t(y1,a,b);
not nandgate_t(y,y1);
initial		
begin
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
initial
begin				
$monitor($time,"a=%b, b=%b, y=%b",a,b,y); 
end
initial
begin
$dumpfile("nand.vcd");	
$dumpvars(0,nandgate_t);	
end
endmodule 