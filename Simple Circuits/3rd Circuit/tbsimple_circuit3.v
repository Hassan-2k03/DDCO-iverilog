module tbsimple_circuit;

reg A,B,C;
wire w1,w2,w3,Z;
simple_circuit M1(A,B,C,Z);

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
// begin
					
$monitor($time,"A=%b,B=%b,C=%b,Z=%b",A,B,C,Z); 

end

initial
begin
$dumpfile("simple_circuit3.vcd");	
$dumpvars(0,tbsimple_circuit);	

end
endmodule