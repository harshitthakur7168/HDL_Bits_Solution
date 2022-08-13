module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire w1, w2, w3,w4;
    
    
    and (w1, p2c,p2d);
    and (w2, p2a, p2b);
    or ( p2y, w1,w2);
    
    and (w3, p1a, p1b, p1c);
    and (w4, p1f, p1e, p1d);
    or (p1y, w3, w4);


endmodule
