module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
wire w1;
    and (w1, c,b);
    or (out, w1,a);

endmodule
