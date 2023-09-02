module fulladd(input wire a, b, cin, output wire sum, cout);
wire [4:0] t;    
xor2 x0(t[0],a,b);   
xor2 x1(sum,t[0],cin); 
and2 a0(t[1],a,b);    
and2 a1(t[2],a,cin);
and2 a2(t[3],b,cin);   
or2 o0(t[4],t[1],t[2]);    
or2 o1(cout,t[4],t[3]);
endmodule 