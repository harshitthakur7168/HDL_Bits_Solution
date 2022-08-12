module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
); 
    wire anot, bnot, cnot, dnot, w1, w2, w3, w4;
    not (anot, a);
    not (bnot, b);
    not (cnot, c);
    not (dnot, d);
    
    and (w1, c,d);
    and (w2, anot, bnot,c);
or (out_sop, w1, w2);
 	
    or (w3, d, anot);
    or (w4, d, bnot);
    
and (out_pos, c,w3,w4); 
    

endmodule
