# Nand2Tetris

This repository documents my journey through the **Nand2Tetris course**, where I am learning the fundamentals of computer architecture from the ground up.

- Implemented all **combinational and sequential chips** in Nand2Tetris’ custom HDL.
- Currently **recreating the entire hardware suite in Verilog**, bridging the educational HDL with an industry-standard hardware description language.
- The goal is to deepen my understanding of how hardware design translates across different abstraction layers and toolchains.

### How to Run

I use Icarus Verilog (Iverilog) within VS Code to write and compile the Verilog files into .vcd waveform files.
Waveforms are then visualized using EPWave to simulate and debug logic.

Steps:

1. Compile a Verilog file:
    
    ```bash
    iverilog -o chip_tb.vvp chip_tb.v
    vvp chip_tb.vvp
    ```
    

2. Run simulation:

    ```bash
    vvp chip_tb
    ```

Open the generated .vcd file in [EPWave](https://www.edaplayground.com/w/home) or any other waveform viewer.

### Future Work

- Complete all sequential components (e.g., RAM, CPU).
- Build the **Hack computer**.
- Integrate higher-level modules (Assembler, VM, Compiler) for a full hardware-software stack.
- Explore FPGA implementation once the design is complete.
