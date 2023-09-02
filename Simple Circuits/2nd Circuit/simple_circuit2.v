module simple_circuit
(A,B,C,Y);
input A,B,C;
output Y;
wire w1;
and g1(w1,C,B);
or g2(Y,w1,A); 
endmodule 