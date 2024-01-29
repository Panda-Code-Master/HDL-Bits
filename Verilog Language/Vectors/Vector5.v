// Data-Flow Modelling
module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };
    assign out=~{{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}} ^ {5{a,b,c,d,e}} ;

endmodule

// Behaviour Modelling
module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };
    always@(*)
        begin
            out=~{{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}} ^ {5{a,b,c,d,e}} ;
        end
    
endmodule

// Gate-structural Modelling
module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };
    xnor(out[24],a,a);
    xnor(out[23],a,b);
    xnor(out[22],a,c);
    xnor(out[21],a,d);
    xnor(out[20],a,e);
    xnor(out[19],b,a);
    xnor(out[18],b,b);
    xnor(out[17],b,c);
    xnor(out[16],b,d);
    xnor(out[15],b,e);
    xnor(out[14],c,a);
    xnor(out[13],c,b);
    xnor(out[12],c,c);
    xnor(out[11],c,d);
    xnor(out[10],c,e);
    xnor(out[9],d,a);
    xnor(out[8],d,b);
    xnor(out[7],d,c);
    xnor(out[6],d,d);
    xnor(out[5],d,e);
    xnor(out[4],e,a);
    xnor(out[3],e,b);
    xnor(out[2],e,c);
    xnor(out[1],e,d);
    xnor(out[0],e,e);

endmodule