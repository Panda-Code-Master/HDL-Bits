// Data-Flow Modelling
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire and1,and2,or1;
    assign and1 = a & b;
    assign and2 = c & d;
    assign or1 = and1 | and2 ;
    assign out = or1 ;
    assign out_n = ~or1;
    
endmodule

// Behaviour modelling
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire and1,and2,or1;
    always@(*)
        begin
            and1 = a & b;
            and2 = c & d;
            or1 = and1 | and2 ;
            out = or1 ;
            out_n = ~or1;
        end
    
endmodule