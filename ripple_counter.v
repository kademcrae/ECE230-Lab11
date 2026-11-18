module ripple_counter (
    input wire clk,
    input wire rst,
    output wire [2:0] state
);
    t_flip_flop stage0 (
        .clk(clk),
        .rst(rst),
        .q(state[0])
    );
    t_flip_flop stage1 (
        .clk(state[0]),
        .rst(rst),
        .q(state[1])
    );
    t_flip_flop stage2 (
        .clk(state[1]),
        .rst(rst),
        .q(state[2])
    );
endmodule
