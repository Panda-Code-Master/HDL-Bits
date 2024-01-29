// Data-Flow Modelling
module top_module (
    input [7:0] in,
    output [31:0] out );//

    // assign out = { replicate-sign-bit , the-input };
    assign out = {{24{in[7]}},in};
    
endmodule

// Behaviour Modelling
module top_module (
    input [7:0] in,
    output [31:0] out );//

    // assign out = { replicate-sign-bit , the-input };
    always@(*)
        begin
            out = {{24{in[7]}},in};
        end    

endmodule