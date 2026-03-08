# Lab 2: Debugging and Structural VHDL Modeling

## 📝 Overview
This folder contains the documentation and extracted source code for the second experiment of EEE 102. The primary objective of this lab was to troubleshoot and debug a provided, faulty multi-module VHDL project. It focuses on structural modeling, identifying syntax and logical errors, and correctly synthesizing the final design onto the FPGA.

## 📂 Files in this Directory
* `LAB2_assignment.pdf`: The official lab assignment outlining the buggy project and debugging requirements.
* `EE_Lab_2_CanKurc.pdf`: My complete lab report, detailing the error analysis, the corrected VHDL code, and the physical implementation results.
* `src/`: Contains the finalized, corrected VHDL design files (`top_module.vhd`, `sub_module1.vhd`, `sub_module2.vhd`).
* `constraints/`: Contains the `.xdc` file used to map the design to the Basys 3 board.

## ⚙️ Key Concepts Covered
* Debugging syntax, synthesis, and implementation errors in Vivado.
* Structural VHDL design (instantiating sub-modules within a top module).
* FPGA pin constraints and bitstream generation.
