module tbsimple_circuit;

reg A,B,C;
wire w1,Y;
simple_circuit M1(A,B,C,Y);

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
					
$monitor($time,"A=%b,B=%b,C=%b,Y=%b",A,B,C,Y); 

end

initial
begin
$dumpfile("simple_circuit2.vcd");	
$dumpvars(0,tbsimple_circuit);	

end
endmodule