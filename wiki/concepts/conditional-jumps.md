---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Conditional Jumps

## Definition

Conditional jumps are branch instructions in assembly language that transfer execution to a different address based on the state of CPU flags (Zero Flag, Sign Flag, Overflow Flag). They implement the fundamental control flow structures (if/else, for, while loops) in low-level code and are essential for reverse engineering compiled binaries.

## Key Aspects

- **Flag-Dependent**: Jumps execute only when specific conditions in the FLAGS register are met
- **Key Instructions**: JZ (jump if zero), JNZ (jump if not zero), JB (unsigned below), JL (signed lower)
- **CMP Sets Flags**: Compare instructions update FLAGS without storing the result, enabling conditional branching
- **Control Flow**: Forward jumps indicate if/else; backward jumps (thick arrows in IDA) indicate loops
- **Reverse Engineering Tool**: Identifying conditional jumps reveals the program's decision logic and algorithm structure
- **XOR Trick**: `XOR reg, reg` zeros a register and sets Zero Flag, used to create jump conditions
- **Loop Detection**: In disassembler graph views, backward conditional jumps mark loop boundaries

## Related Concepts

- [[primer-reverse-engineering]]
- [[reverse-engineering]]
- [[x86-assembly]]
- [[cpu-registers]]

## Sources

- [[primer-reverse-engineering]]
