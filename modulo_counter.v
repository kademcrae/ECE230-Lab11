module modulo_counter (
    input wire clk,
    input wire rst,
    output wire [2:0] state,
    output wire divided_clk
);
    wire [2:0] incremented;
    wire [2:0] next_state;
    wire [3:1] carry;
    wire terminal_count;

    // The sixth rising edge wraps the count from five back to zero.
    assign terminal_count = (state == 3'd5);
    assign next_state = incremented & {3{~terminal_count}};

    full_adder bit0 (
        .a(state[0]),
        .b(1'b1),
        .cin(1'b0),
        .sum(incremented[0]),
        .cout(carry[1])
    );
    full_adder bit1 (
        .a(state[1]),
        .b(1'b0),
        .cin(carry[1]),
        .sum(incremented[1]),
        .cout(carry[2])
    );
    full_adder bit2 (
        .a(state[2]),
        .b(1'b0),
        .cin(carry[2]),
        .sum(incremented[2]),
        .cout(carry[3])
    );

    d_flip_flop count0 (
        .clk(clk),
        .rst(rst),
        .d(next_state[0]),
        .q(state[0])
    );
    d_flip_flop count1 (
        .clk(clk),
        .rst(rst),
        .d(next_state[1]),
        .q(state[1])
    );
    d_flip_flop count2 (
        .clk(clk),
        .rst(rst),
        .d(next_state[2]),
        .q(state[2])
    );
    d_flip_flop divider (
        .clk(clk),
        .rst(rst),
        .d(divided_clk ^ terminal_count),
        .q(divided_clk)
    );
endmodule
