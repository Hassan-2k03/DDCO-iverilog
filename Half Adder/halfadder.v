module halfadd(a, b,sum, cout);
input a, b;
output sum, cout;
 xor2 x0(sum,a,b);    
 and2 a0(cout,a,b);  
endmodule 