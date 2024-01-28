// Data-Flow Modelling
module top_module( input in, output out );

    assign out = in ;

endmodule

// Behaviour Modelling
module top_module( input in, output out );

    always@(in)
        begin
            out = in ;
        end

endmodule
