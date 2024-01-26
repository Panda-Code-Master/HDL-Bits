## Gate-Structural Modelling
module top_module( 
    input a, 
    input b, 
    output out );
    xnor(out,a,b);

endmodule

## Data-Flow Modelling
module top_module( 
    input a, 
    input b, 
    output out );
    assign out = a ~^ b;

endmodule

## Behavioural Modelling
module top_module( 
    input a, 
    input b, 
    output out );
    always@(a,b)
        out = a ~^ b;

endmodule
