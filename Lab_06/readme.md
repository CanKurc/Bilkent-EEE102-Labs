# EEE-102 Lab 6: Arbitrary Waveform Generator (PWM)

## 📌 Objective

This repository contains the files for Lab 6 of the Bilkent University EE-102 Digital Circuit Design course. The goal of this lab is to design, simulate, and implement a **Pulse Width Modulation (PWM) signal generator** on the Basys 3 FPGA. The design generates a precise **1 kHz** base frequency with a dynamically adjustable duty cycle controlled by the 8 slide switches on the board.

## 📂 Repository Structure

Based on the current project directory, the files are organized as follows:

- **`src/`** (Source Files): Contains the main VHDL design module (`pwm_generator.vhd`) that implements the PWM logic.
- **`sim/`** (Simulation Files): Contains the testbench (`tb_pwm_generator.vhd`) used to verify the timing precision of the generated waveform at 50% and 25% duty cycles.
- **`constraints/`** (Constraints): Contains the Xilinx Design Constraints file (`constraints.xdc`) with the physical pin mappings and timing constraints for the Basys 3 board.
- **`EE_Lab_6_CanKurc.pdf`**: The final compiled Lab Report detailing the design, simulation results, and hardware verification with oscilloscope measurements.

## ⚙️ Design Architecture

The project uses a single custom VHDL module integrated with the **Vivado Clocking Wizard** via the IP Integrator:

- **Time Base:** A 17-bit counter (`refresh_counter`) counts from 0 to 99,999, creating exactly 100,000 clock cycles per period (1 ms → 1 kHz).
- **Duty Cycle Control:** The 8-bit switch input (0–255) is scaled by a factor of 392 to map the user input into the 0–100,000 counter range.
- **Comparator:** If the counter value is less than the calculated threshold, the output is driven HIGH; otherwise, it is LOW.
- **Clocking Wizard:** Vivado's Clocking Wizard IP generates a clean, stable 100 MHz clock from the Basys 3's internal oscillator, minimizing jitter.

## 💻 Hardware Details

- **Board:** Digilent Basys 3 (Artix-7 xc7a35tcpg236-1)
- **Inputs:** 8 physical slide switches (`sw[7:0]`)
- **Output:** PWM signal on Pmod Header JA, Pin 1 (`J1`)
