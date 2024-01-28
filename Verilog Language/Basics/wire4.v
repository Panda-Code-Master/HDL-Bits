// Data-Flow Modelling
module top_module( 
    input wire a,b,c,
    output reg w,x,y,z );
  
    assign w = a ;
    assign x = b ;
    assign y = b ;
    assign z = c ;
           
endmodule

// Behaviour Modelling
module top_module( 
    input wire a,b,c,
    output reg w,x,y,z );

    always@(a,b,c)
        begin
            w = a ;
            x = b ;
            y = b ;
            z = c ;
        end
           
endmodule