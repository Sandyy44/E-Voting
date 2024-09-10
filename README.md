# E-Voting System with Asynchronous BCD Up Counters (0-999) using D Flip-Flops

## Project Overview

This project implements an E-voting system, which features an asynchronous BCD up counters that are connected together to count from 0 to 999 using three seven-segment displays. Each counter is designed using D flip-flops and coded in Verilog. The design has been simulated and tested through Proteus for verification.
![WholeSchematic](https://github.com/user-attachments/assets/89ad455b-ca36-4d28-b2bf-0267681eb1d9)

## Features

- **Asynchronous BCD Up Counter (0-9):** 
  Designed using D flip-flops to count from 0 to 9.
  
- **Extended Counter (0-999):**
  The whole system counts from 0 to 999 using three BCD counters connected together and three seven-segment displays controlled by the output of the flip-flops.

- **Verilog Simulation:**
  The logic of the counter has been implemented and verified using Verilog HDL.
  
- **Proteus Simulation:**
  The entire circuit has been connected and tested in Proteus, ensuring correct functionality of the design with the seven-segment displays.

## Design Components

1. **Clock Generator:**
   - A clock generator module provides the necessary clock signal to drive the flip-flops and counter logic.

2. **BCD Up Counter:**
   - The counter uses D flip-flops to asynchronously toggle bits and count from 0 to 9, incrementing each time a clock pulse is received.
   - The counter extends to count up to 999, with hundreds, tens, and unit counters driving separate seven-segment displays.

3. **Counter to Seven-Segment Decoder:**
   - The decoder module converts the binary output of the counter into a format that can be displayed on the seven-segment displays.
   - Three seven-segment displays show the hundreds, tens, and unit places of the count.

## Simulation & Testing

### Verilog Simulation:
   - The design was simulated using a testbench written in Verilog to verify the functionality of the counter.
   - The waveforms were generated using simulation tools to ensure that the counter increments correctly and displays the correct values on the seven-segment display.
   - ![Pic1](https://github.com/user-attachments/assets/0cddc9e9-6782-459c-ba45-fd9d4b99391d)
   - ![Pic2](https://github.com/user-attachments/assets/b00c713f-04fb-4e1a-9e7e-7dac3c188f18)

### Proteus Simulation:
   - The circuit was designed and simulated in Proteus to verify the connection of the flip-flops and seven-segment displays.
   - The output from the D flip-flops successfully drives the seven-segment displays, counting from 0 to 999.
   - ![testing_page-0001](https://github.com/user-attachments/assets/3669e33d-e06f-4c10-bf06-090cc27c00ff)

### Close Look On Schematic:
  - ![OnesSchematic](https://github.com/user-attachments/assets/9ecc596f-2c21-4bfa-9664-5ea5a7f0495d)
  - ![Clk2](https://github.com/user-attachments/assets/94aeb895-c608-4e13-8a05-c9e91df5866d)
  - ![TensSchematic](https://github.com/user-attachments/assets/0aab74e9-577a-4683-b78f-b817871e1421)
  - ![Clk3](https://github.com/user-attachments/assets/07cd77c9-2bf0-4974-a61b-bd5ae7c1e077)
  - ![HundredsSchematic](https://github.com/user-attachments/assets/09d49a4e-5d9c-4d8a-acbe-12908de8d2a8)


