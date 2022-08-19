module top_module (
    input [4:1] x,
    output f
); 
    wire not_x1, not_x2, not_x4, w1, w2, w3;
    
    not (not_x1, x[1]);
    not (not_x2, x[2]);
    not (not_x4, x[4]);
    
    and (w1, not_x4, not_x2);
    and (w2, not_x1, x[3]);
    and (w3, x[2], x[3], x[4]);
    or (f, w1, w2,w3);
endmodule
