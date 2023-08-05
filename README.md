# 8BIT-CPU
Simple 8-bit CPU
Description
This repository contains the Verilog implementation of an 8-bit CPU based on the accumulator type architecture. The CPU is designed to pass the Turing test, demonstrating its ability to execute a variety of instructions. The architecture includes a hardwired control logic, implemented using a sequence generator, decoder, and combination logic. The ALU (Arithmetic Logic Unit) is modeled using behavioral modeling for simplicity, making it easily synthesizable by most synthesis tools.

Features
Accumulator Architecture: The CPU employs an accumulator-based architecture, where the accumulator register stores intermediate results during computation.

Turing Test Pass: The CPU is designed to pass the Turing test, showcasing its ability to execute diverse instructions and perform complex computations, making it versatile and capable of solving a wide range of problems.

Hardwired Control Logic: The CPU's control logic is hardwired, ensuring efficient execution of instructions through a sequence generator, decoder, and combination logic.

Structural Modeling: The entire CPU is implemented using structural modeling, promoting modularity and ease of design understanding.

Behavioral ALU: The Arithmetic Logic Unit (ALU) is modeled using behavioral modeling, making it easy for synthesis tools to synthesize the circuit due to its simplicity and clarity.

256-Word RAM Module: The CPU features a RAM module capable of storing 256 words, providing ample memory for storing data and instructions.

Top module is named system at the end of MAIN.v.

![Screenshot (2)](https://github.com/ram2k1/8BIT-CPU/assets/93393591/1bfcb6b1-601d-4289-84d4-414cc2a29029)
Complete System
![Screenshot 2023-08-05 113900](https://github.com/ram2k1/8BIT-CPU/assets/93393591/97cd4362-c135-4c4f-8042-429a77926d45)
Decoder providing control


Synthsized using Xilinx Vivado 2022.2









