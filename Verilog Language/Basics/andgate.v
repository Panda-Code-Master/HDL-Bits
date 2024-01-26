## Data-Flow modelling
module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = a & b ;

endmodule

## Gate Structural modelling
module top_module( 
    input a, 
    input b, 
    output out );
    
     and(y,a,b);

endmodule

## Behavioral Modelling
module top_module( 
    input a, 
    input b, 
    output out );
    always@(a,b)
        out = a & b ;
        
endmodule
