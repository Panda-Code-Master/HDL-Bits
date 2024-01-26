## Gate-Structural Modelling
module top_module( 
    input a, 
    input b, 
    output out );
    
    nor(out,a,b);

endmodule

## Data-Flow Modelling
module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = a | b ;

endmodule

## Behavioural Modelling
module top_module( 
    input a, 
    input b, 
    output out );
    
    always@(a,b)
        out = b || a;
    
endmodule
