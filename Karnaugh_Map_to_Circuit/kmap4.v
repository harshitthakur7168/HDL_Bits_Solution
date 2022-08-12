module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
wire anot, bnot, cnot,dnot, w1,w2,w3,w4,w5,w6,w7,w8;
    not (anot, a);
    not (bnot, b);
    not (cnot, c);
    not (dnot, d);
    and (w1, anot,b,cnot,dnot);
    and (w2, a, bnot, cnot,dnot);
    and (w3, anot, bnot, cnot,d);
    and (w4, a,b,cnot, d);
    and (w5, anot, b,c,d);
    and (w6, a,bnot,c,d);
    and (w7, anot, bnot, c, dnot);
    and (w8, a,b,c,dnot);
    
    or (out, w1,w2,w3,w4,w5,w6,w7,w8);
    
endmodule
