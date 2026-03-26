# EEE-102 Lab 5: Multiplexed 7-Segment Display Controller

## 📌 Objective

This repository contains the files for Lab 5 of the Bilkent University EE-102 Digital Circuit Design course. The goal of this lab is to design, simulate, and implement a time-multiplexed 4-digit 7-segment display on the Basys 3 FPGA.

Because the four digits on the board share the same cathode pins (A-G), they cannot be driven with different numbers simultaneously. To solve this, a time-multiplexing technique is used. By rapidly cycling through each digit one at a time, the human eye perceives all four digits as being illuminated simultaneously due to the "persistence of vision" effect.

## 📂 Repository Structure

Based on the current project directory, the files are organized as follows:

* **`src/`** *(Source Files)*: Contains the VHDL design modules used to build the top-level block design (Clock Divider, 4-to-1 Multiplexer, Anode Decoder, and 7-Segment Decoder).

* **`sim/`** *(Simulation Files)*: Contains the testbench (`tb_SevenSeg.vhd`) designed to simulate a full multiplexing cycle and verify the component logic.

* **`constraints/`** *(Constraints)*: Contains the Xilinx Design Constraints file (`constraints.xdc`) with the physical pin mappings and timing constraints for the Basys 3 board.

* **`EE_Lab_5_CanKurc.pdf`**: The final compiled Lab Report detailing the theoretical background, simulation results, and hardware verification photos.

* **`lab5_assignment.pdf`**: The original lab assignment and instruction document provided for this project.

## ⚙️ Design Architecture

The project is built using a modular Block Design (IP Integrator) approach:

1. **Clock Divider**: Takes the internal 100 MHz clock and drives a 20-bit counter. The top two bits are used to generate a ~381 Hz refresh rate synchronization signal.

2. **4-to-1 Multiplexer**: Routes the data from the 16 physical slide switches to the display decoder, selecting which 4-bit group to pass forward based on the 381 Hz clock cycle.

3. **Anode Decoder**: Controls which of the four 7-segment screens is currently powered using an active-low 4-bit output.

4. **7-Segment Decoder**: Decodes the 4-bit hexadecimal inputs from the multiplexer into the 7-bit active-low signal required for the LED segments.

## 💻 Hardware Details

* **Board:** Digilent Basys 3 (Artix-7 xc7a35tcpg236-1)

* **Inputs:** 16 physical slide switches (`sw[15:0]`)

* **Outputs:** 4-digit 7-segment display (`seg[6:0]`, `an[3:0]`)
