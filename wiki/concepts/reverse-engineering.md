---
created: 2026-04-29
updated: 2026-04-29
tags: [assembly, reverse-engineering]
sources: 1
---

# Reverse Engineering

## Definition

The process of analyzing compiled binaries to understand their functionality, reconstructing source code from machine instructions. Involves reading assembly code, tracking CPU state (registers, stack, flags), and writing equivalent high-level code.

## Key Concepts

### Assembly Fundamentals
- ASM is textual representation of binary opcodes, not the binary itself
- Each mnemonic (MOV, ADD, CMP) maps to a binary opcode
- x86 has 7 usable registers: EAX, EBX, ECX, EDX, EDI, ESI, EBP

### Stack Operations
- LIFO structure growing downward in RAM
- Stores local variables and return addresses
- Function arguments passed via stack, return value in EAX
- Functions must preserve non-EAX registers

### Control Flow
- CMP + conditional jumps (JZ, JNZ, JB, JL) implement if/for/while
- FLAGS register tracks: Zero Flag, Sign Flag, Overflow Flag, Carry Flag
- CMP = SUB without storing result (only updates flags)
- TEST = AND without storing result (for logical comparisons)

### Optimization Patterns
- XOR reg, reg = zeroing (faster and smaller than MOV reg, 0)
- Position-independent code (PIC) uses relative addressing

## Process

1. Read instruction by instruction
2. Track register and stack state
3. Write equivalent C code incrementally
4. Follow conditional jumps to build control flow
5. Identify data structures from comparison values (magic signatures)

## Related Concepts

- [[x86-assembly]] — Low-level CPU instruction set
- [[stack-memory]] — LIFO data structure for function calls
- [[cpu-registers]] — Fast processor storage locations
- [[disassembler]] — Tool converting binary to readable assembly

## Sources

- [[primer-reverse-engineering]] — Purism's comprehensive RE primer
