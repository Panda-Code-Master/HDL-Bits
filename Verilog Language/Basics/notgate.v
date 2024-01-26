## Gate Structural modelling
module top_module( input in, output out );
    
    not(out,in);        

endmodule

## Data-Flow modelling
module top_module( input in, output out );
    
    assign out = ~in;       

endmodule

## Behavior modelling
module top_module( input in, output out );
    
    always@(in)
        out = ~in;        

endmodule
