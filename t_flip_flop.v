module t_flip_flop (
    input wire clk,
    input wire rst,
    output wire q
);
    d_flip_flop storage (
        .clk(clk),
        .rst(rst),
        .d(~q),
        .q(q)
    );
endmodule
