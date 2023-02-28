

module alu # (
    parameter WIDTH = 8
) (
    logic [WIDTH-1:0] a_in,
    logic [WIDTH-1:0] b_in,
    logic [2:0] sel,

    logic [WIDTH-1:0] out

);

parameter ADD = 0; 
parameter SUB = 1;

always_comb begin
    case(sel)
        ADD:  out = a_in + b_in;
        SUB:  out = a_in - b_in;
    endcase
end

endmodule

