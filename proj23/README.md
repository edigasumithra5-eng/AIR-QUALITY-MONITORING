# Air Quality Monitoring System Using Verilog

## Introduction

The Air Quality Monitoring System is a digital system designed using Verilog HDL.

The system receives an 8-bit digital air-quality sensor value and determines the condition of the air.

The system classifies air quality into three categories:

- GOOD
- MODERATE
- POOR

When the air quality value exceeds the danger threshold, an alarm is activated.

## Features

- Verilog HDL implementation
- 8-bit air-quality input
- Three air-quality levels
- Automatic alarm generation
- Verilog testbench included
- VCD waveform generation
- GTKWave simulation support
- Suitable for FPGA/digital logic projects

## Air Quality Classification

| Input Value | Air Quality | Alarm |
|-------------|-------------|-------|
| 0 - 50      | GOOD        | OFF   |
| 51 - 100    | MODERATE    | OFF   |
| 101 - 255   | POOR        | ON    |

## Input

### air_quality

8-bit digital input representing the air-quality sensor reading.

Range:

0 to 255

## Outputs

### air_status

2-bit output representing the air-quality condition.

```text
00 = GOOD
01 = MODERATE
10 = POOR