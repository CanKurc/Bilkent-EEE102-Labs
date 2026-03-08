# Lab 2: Debugging and Structural VHDL Modeling

## 📝 Overview
This folder contains the documentation, original faulty project, and extracted source code for the second experiment of EEE 102. The primary objective of this lab was to troubleshoot and debug a provided multi-module VHDL project, focusing on structural modeling and identifying syntax and logical errors.

## 📂 Files in this Directory
* `LAB2_assignment.pdf`: The official lab assignment outlining the buggy project and debugging requirements.
* `EE_Lab_2_CanKurc.pdf`: My complete lab report, detailing the error analysis, the corrected VHDL code, and the physical implementation results.
* `LAB2_buggy_2025.zip`: The original project files containing the faulty VHDL code provided at the start of the lab.
* `src/`: Contains the finalized, corrected VHDL design files (`top_module.vhd`, `sub_module1.vhd`, `sub_module2.vhd`).
* `sim/`: Contains the VHDL testbench (`testbench.vhd`) used to verify the design through behavioral simulation.
* `constraints/`: Contains the `.xdc` file used to map the design to the Basys 3 board.

## ⚙️ Key Concepts Covered
* Debugging syntax, synthesis, and implementation errors in Vivado.
* Structural VHDL design, including sub-module instantiation.
* Behavioral simulation and testbench development to verify logical correctness.
* FPGA pin constraints and bitstream generation for hardware implementation.
