// Define statements for constants

module basics();
// Top module is usually named after the file
endmodule

// Module example -- non parameterized module
// module moduleName();
// ...
// endmodule
module  Dec(a, b) ;
    parameter n = 2 ;
    parameter m = 4 ;
    
    input [n-1:0] a ;
    output [m-1:0] b ;
    
    wire [m-1:0] b = 1<<a ;
endmodule


// Module example -- parameterized module
// module moduleName #(parameter parameterName = defaultValue) (input param1, output exampleOutput);
// ...
// input [parameterName:0] exampleInput;
// endmodule
module dffre #(parameter WIDTH = 1) (
    input clk,
    input r,
    input en,
    input [WIDTH-1:0] d,
    output reg [WIDTH-1:0] q
);

    always @(posedge clk)
        if (r)
            q <= {WIDTH{1'b0}};
        else if (en)
            q <= d;
        else
            q <= q;

endmodule
