# UART Transmitter & Receiver in Verilog HDL

# Overview
This project implements a Universal Asynchronous Receiver Transmitter (UART) using MUXs, DeMUXs, Counters, and Registers. Unlike traditional designs that use a register to load data manually at the transmitter (Tx), this design utilizes an 8-bit counter to automatically generate and send data, simplifying the process and reducing manual input.  

# Features
✅ Asynchronous Serial Communication (8-N-1: 8 Data Bits, No Parity, 1 Stop Bit)  
✅ Automatic Data Generation at Tx using an 8-bit Counter  
✅ Uses MUXs and DeMUXs for Data Flow Control  
✅ Baud Rate Control using a Mod-10 Counter  
✅ Receiver uses a Shift Register for Serial to Parallel Conversion  
✅ Fully Synthesizable and FPGA-Compatible  

# How It Works  
## UART Transmitter (Tx):  
- 8-bit Counter Generates Data – The counter increments automatically, eliminating manual data entry.  
- MUX Selects Data for Transmission – The counter output is routed through a MUX to transmit one bit at a time.  
- Data is Sent Bit-by-Bit Serially – No shift register is used; instead, the MUX selects which bit to transmit at each clock cycle.  
- Mod-10 Counter for Baud Rate Control – Ensures correct timing for data transmission.
   
## UART Receiver (Rx):  
- Serial Data Reception – Captures incoming bits.  
- Start & Stop Bit Detection – Ensures proper synchronization.  
- DeMUX Routes Data – Directs received data for processing.  
- Shift Register for Parallel Conversion – Converts serial input into parallel output.

# Waveform
![Waveform](https://github.com/user-attachments/assets/6fc6b3a4-c436-4d8c-87cf-b4f4a42ce579)

