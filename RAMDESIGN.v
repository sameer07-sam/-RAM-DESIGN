// Module definition for synchronous RAM
module SyncRAM (
    input clk,                 // Clock signal
    input we,                  // Write enable signal (1: write, 0: read)
    input [3:0] addr,          // 4-bit address input (supports 16 locations)
    input [7:0] din,           // 8-bit data input (for write)
    output reg [7:0] dout      // 8-bit data output (for read)
);

    // Declare memory array with 16 locations, each 8-bit wide
    reg [7:0] mem [15:0];      

    // Synchronous process (triggers on rising edge of clock)
    always @(posedge clk) begin
        if (we) begin
            // If write enable is high, write data 'din' to memory at 'addr'
            mem[addr] <= din;
        end
        // Read operation: output data from memory at address 'addr'
        dout <= mem[addr];
    end

endmodule
