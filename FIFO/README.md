# FIFO Memory using Verilog HDL

## Project Description

A **FIFO (First-In First-Out)** is a memory structure where the first data written into the memory is the first data read out. FIFOs are commonly used for data buffering and communication between systems operating at different speeds.

This project implements a simple **4-depth FIFO memory** using Verilog HDL. The design supports data write and read operations with full and empty status indicators.

---

## Features

- 4-bit data width
- 4 memory locations
- Write operation
- Read operation
- Full and Empty status flags
- Clock-based operation
- Reset functionality

---

## Inputs

| Signal | Description |
|--------|-------------|
| clk | System Clock |
| reset | Reset Signal |
| wr_en | Write Enable |
| rd_en | Read Enable |
| data_in | Input Data |

---

## Outputs

| Signal | Description |
|--------|-------------|
| data_out | Output Data |
| full | FIFO Full Indicator |
| empty | FIFO Empty Indicator |

---

## FIFO Operation

1. When `wr_en` is HIGH, data is stored into FIFO.
2. When `rd_en` is HIGH, data is removed from FIFO.
3. Data is read in the same order it was written.
4. `full` becomes HIGH when FIFO memory is full.
5. `empty` becomes HIGH when FIFO has no data.

---

## Files

- `fifo.v` – FIFO design code
- `fifo_tb.v` – Testbench
- `output.txt` – Expected output
- `README.md` – Project documentation

---

## Software Used

- Icarus Verilog
- ModelSim
- Xilinx Vivado

---

## How to Run

Compile:

```bash
iverilog fifo.v fifo_tb.v
```

Run:

```bash
vvp a.out
```

---

## Expected Output

```
Write Data : 1010
Write Data : 1100
Read Data  : 1010
Read Data  : 1100
FIFO Empty : 1
```

---

## Applications

- Data Buffering
- Processor Communication
- UART Communication
- Networking Systems
- Digital Systems

---

## Author

Your Name