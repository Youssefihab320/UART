
module UART_tb ();

reg clk,reset;
wire [7:0] data;

UART uut (.clk(clk),
          .reset(reset),
          .data(data));

always #50 clk = ~clk;

initial begin
    reset = 0;
    clk = 0;
    #20;
    reset = 1;
end
endmodule 