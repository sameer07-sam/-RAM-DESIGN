# -RAM-DESIGN

**COMPANY**:CODTECH IT SOLUTIONS PVT.LTD

**NAME**:MD SAMEER AHMED

**INTERN ID**:CT06DH1484

**DOMAIN NAME**:VLSI

**DURATION**:6 WEEK

**MENTOR**:NEELA SANTOSH

**RAM Design – Task Description**
As part of my internship in the VLSI domain, I was assigned a task to design a basic RAM (Random Access Memory) module using Verilog. The goal of this task was to implement a simple, single-port RAM that supports read and write operations.

**Steps I Followed**:
**Understanding Functional Requirements**:
I began by understanding how RAM works — particularly how data is written to and read from memory locations using address lines and control signals.

**Verilog Module Development**:
I wrote a Verilog module for a synchronous RAM with the following specifications:

Data width: 8 bits

Address width: 4 bits (16 memory locations)

Inputs: address, data_in, write_enable, clk

Output: data_out

**Implemented Functionality**:

Write Operation: When write_enable is high on the positive edge of the clock, the input data is stored at the given address.

Read Operation: When write_enable is low, data from the selected address is output through data_out.

**Creating Testbench**:
I developed a testbench module to verify the RAM functionality. I simulated writing data to various addresses and then reading it back to confirm correctness.

**Simulation & Verification**:
I used simulation tools ModelSim to run the testbench. Waveform analysis helped verify the timing and accuracy of read/write operations.

**Result and Conclusion**:
The simulation results showed correct read and write behavior as per expectations. This task helped me understand memory design principles and Verilog coding for sequential logic.

**OUTPUT**
