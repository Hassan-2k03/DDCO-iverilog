module tbsimple_circuit1;
reg A,B,C;
wire w1,D,E;
simple_circuit M1(A,B,C,D,E);
initial
begin

#10 A=1'b0;B=1'b0;C=1'b0;
#10 A=1'b0;B=1'b0;C=1'b1;
#10 A=1'b0;B=1'b1;C=1'b0;
#10 A=1'b0;B=1'b1;C=1'b1;
#10 A=1'b1;B=1'b0;C=1'b0;
#10 A=1'b1;B=1'b0;C=1'b1;
#10 A=1'b1;B=1'b1;C=1'b0;
#10 A=1'b1;B=1'b1;C=1'b1; 

end

initial
begin
					
$monitor($time,"A=%b,B=%b,C=%b,D=%b,E=%b",A,B,C,D,E); 

end

initial
begin
$dumpfile("simple_circuit1.vcd");	
$dumpvars(0,tbsimple_circuit1);	

end
endmodule