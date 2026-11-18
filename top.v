module top (
    input wire btnC,
    input wire btnU,
    output wire [6:0] led
);
    ripple_counter ripple (
        .clk(btnC),
        .rst(btnU),
        .state(led[2:0])
    );

    modulo_counter modulo (
        .clk(btnC),
        .rst(btnU),
        .state(led[5:3]),
        .divided_clk(led[6])
    );
endmodule
