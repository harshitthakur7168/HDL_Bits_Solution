module top_module( 
    input a, b, cin,
    output cout, sum );
    wire w1,w2,w3, w4;
    xor (w1, a,b);
    xor (sum, cin, w1);
    
    and (w2, a,b);
    and (w3, b,cin);
    and (w4, a,cin);
    or (cout, w2,w3,w4);
endmodule
