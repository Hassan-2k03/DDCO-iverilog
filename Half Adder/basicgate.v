module xor2(y,a,b);
input a,b;
output y;
assign y = (a ^ b);
endmodule  

module and2(y,a,b);
input a,b;
output y;
assign y = a & b; 
endmodule