// By name

module top_module ( input a, input b, output out );
    
    mod_a instance2 ( .out(out), .in1(a), .in2(b) );
        
endmodule


// By position

module top_module ( input a, input b, output out );
    
    mod_a instance1 ( a, b, out );
        
endmodule