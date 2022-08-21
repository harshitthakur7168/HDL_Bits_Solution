module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  );
    wire a_no, b_no, c_no, d_no, w1,w2,w3,w4;
    not ( a_no, a);
    not ( b_no, b);
    not ( c_no, c);
    not ( d_no, d);
    
    
    
    and ( w1, d_no, a_no);
    and (w2, b_no, c_no);
    and (w3, a,c,d);
    and (w4, b,c,d);
    
    or ( out, w1,w2,w3,w4);
    

endmodule
