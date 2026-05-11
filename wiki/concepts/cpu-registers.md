---
created: 2026-04-29
updated: 2026-05-09
tags: [reverse-engineering, systems]
sources: 2
---

# CPU Registers

## Definition
CPU registers are small, extremely fast storage locations built directly into the processor, used to hold data that is being actively processed. They are the fastest form of computer memory, operating at CPU clock speed, and serve as the working space for arithmetic, logic, and control operations.

## Key Aspects
- x86 architecture exposes only 7 general-purpose registers: EAX, EBX, ECX, EDX, EDI, ESI, EBP
- ESP is the stack pointer and EIP is the instruction pointer (not directly usable as general purpose)
- Registers are orders of magnitude faster than RAM access
- The FLAGS register stores condition codes (Zero Flag, Sign Flag, Overflow Flag, Carry Flag) after arithmetic operations
- XOR reg, reg is the idiomatic way to zero a register (faster and smaller than MOV reg, 0)
- Function calling conventions dictate which registers must be preserved across calls (callee-saved vs caller-saved)
- In eBPF, there are 10 general-purpose 64-bit registers plus a read-only frame pointer (R10)

## Related Concepts
- [[disassembler]]
- [[floating-point-arithmetic]]

## Sources
- [[primer-reverse-engineering]]
- [[reverse-engineering]]
