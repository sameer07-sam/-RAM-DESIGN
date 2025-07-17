// Testbench for synchronous RAM
module tb_SyncRAM;

reg clk;                      // Clock signal
reg we;                       // Write enable
reg [3:0] addr;               // Address bus
reg [7:0] din;                // Data input bus
wire [7:0] dout;              // Data output wire

// Instantiate the RAM module
SyncRAM uut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
);

// Generate clock: toggles every 5 time units (10-unit clock period)
always #5 clk = ~clk;

// Initial block to apply test vectors
initial begin
    $display("Time\tWE\tADDR\tDIN\tDOUT");
    $monitor("%0t\t%b\t%h\t%h\t%h", $time, we, addr, din, dout);

    // Initialize signals
    clk = 0; we = 0; addr = 0; din = 0;

    // Write 8'hA5 to address 4
    #10 we = 1; addr = 4; din = 8'hA5;

    // Write 8'h3C to address 7
    #10 we = 1; addr = 7; din = 8'h3C;

    // Disable write; read from address 4
    #10 we = 0; addr = 4;

    // Read from address 7
    #10 addr = 7;

    // Read from an unwritten address (should be 0)
    #10 addr = 2;

    #10 $finish;
end

endmodule
