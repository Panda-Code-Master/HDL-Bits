// Data-Flow Modelling
module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    assign out_and = in[3:3] & in[2:2] & in[1:1] & in[0:0] ;
    assign out_or = in[3:3] || in[2:2] || in[1:1] || in[0:0] ;
    assign out_xor = in[3:3] ^ in[2:2] ^ in[1:1] ^ in[0:0] ;

endmodule

// Behaviour Modelling
module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    always@(in)
        begin
            out_and = in[3:3] & in[2:2] & in[1:1] & in[0:0] ;
            out_or = in[3:3] || in[2:2] || in[1:1] || in[0:0] ;
            out_xor = in[3:3] ^ in[2:2] ^ in[1:1] ^ in[0:0] ;
        end

endmodule