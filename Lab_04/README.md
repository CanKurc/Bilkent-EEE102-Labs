# Lab 4: Arithmetic Logic Unit (ALU) Design

## 📝 Overview
This folder contains the documentation and source code for the fourth experiment of EEE 102. The objective of this lab was to design and implement a custom Arithmetic Logic Unit (ALU) capable of performing eight distinct mathematical and logical operations, including addition, subtraction, bitwise, and shift operations. 

Crucially, this ALU was built entirely from scratch without the use of standard VHDL library operators. The architecture was constructed using small, reusable structural modules (such as full adders) combined using Vivado's Block Design (IP Integrator) to form the complete datapath.

## 📂 Files in this Directory
* `lab4_v2_assignment.pdf`: The official lab assignment detailing the ALU requirements and Vivado Block Design workflow.
* `EE_Lab_4_CanKurc.pdf`: My complete lab report, featuring the block design schematics, simulation results, and photos of the final FPGA deployment.
* `src/`: Contains the modular VHDL source files used to build the ALU components.
* `sim/`: Contains the simulation testbench used to verify all eight ALU operations.
* `constraints/`: Contains the `.xdc` file mapping the inputs/outputs to the Basys 3 board switches and LEDs.

## ⚙️ Key Concepts Covered
* Architecture and implementation of a multi-function ALU.
* Gate-level arithmetic implementation (no pre-built VHDL operators used).
* Modular, structural design using Xilinx Vivado's IP Integrator (Block Design).
* Hardware verification via simulation testbenches and physical FPGA deployment.
