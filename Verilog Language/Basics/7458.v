## Gate-Structural Modelling
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire abc1,ab2,cd2,def1;
    and(abc1,p1a, p1b, p1c);
    and(def1,p1d, p1e, p1f);
    and(ab2,p2a, p2b);
    and(cd2,p2c, p2d);
    or(p2y,ab2,cd2);
    or(p1y,abc1,def1);

endmodule

## Data-Flow Modelling
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire abc1,ab2,cd2,def1;
    assign abc1 = p1a && p1c && p1b ;
    assign def1 = p1f && p1e && p1d ;
    assign ab2 = p2a && p2b ;
    assign cd2 = p2c && p2d ;
    assign p2y = ab2 || cd2 ;
    assign p1y = abc1 || def1 ;

endmodule

## Behaviour Modelling
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire abc1,ab2,cd2,def1;    
    always@(*)
        begin
            abc1 = p1a && p1b && p1c ;
            def1 = p1f && p1e && p1d ;
            ab2 = p2a && p2b ;
            cd2 = p2c && p2d ;
            p2y = ab2 || cd2 ;
            p1y = abc1 || def1 ;
        end
endmodule
