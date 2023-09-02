module simple_circuit
(A,B,C,Z);
input A,B,C;
output Z;
wire w1,w2,w3;
and g1(w1,C,B);
or g2(w2,w1,A);
and g3(w3,B,A);
or g4(Z,w2,w3);
endmodule