# ECE 118 – Introduction to Mechatronics
**University of California, Santa Cruz — Spring 2026**

This repo contains all lab projects for ECE 118, organized by lab number.

## Structure
- `118Lab0.X` — Part 4 custom test harness (bare metal)
- `Lab0ES.X` — Parts 5/6 event detection using ES_Framework
- `Lab0TestHarness.X` — Part 3 staff test harness

## Lab 0 – The Roach
Lab 0 introduces the ECE 118 Roach, a small two-wheeled robot running on a PIC32 microcontroller. The lab covers the full development workflow from toolchain setup to hierarchical state machines.

**Parts:**
- **1** – Solder and validate a mini-beacon PCB
- **2** – Hello World on the Roach, validating the toolchain
- **3** – Run the provided staff test harness
- **4** – Write a custom hardware exploration test harness (bumpers, motors, light sensor, LEDs, battery)
- **5** – Build basic event checkers for bumpers and light level using the ES_Framework
- **6** – Improve event detection with debouncing and hysteresis
- **7** – Implement cockroach behavior with a Finite State Machine (run from light, hide in dark, don't get stuck)
- **8** – Extend to a Hierarchical State Machine with richer reactions

## Tools
- MPLAB X IDE v6.30
- XC32 Compiler v4.35
- ds30wrapper for flashing over USB serial
- ES_Framework (Events and Services) for event-driven programming
