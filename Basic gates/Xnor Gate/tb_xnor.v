module xnorgate_t;
reg a,b;
wire y;
xnor xnorgate_t(y,a,b);
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
$dumpfile("xnor.vcd");	
$dumpvars(0,xnorgate_t);	
end
endmodule 
