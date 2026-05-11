---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Disassembly

## Definition

Disassembly is the process of converting compiled binary machine code back into human-readable assembly language instructions. It is the foundational step in reverse engineering, enabling analysts to understand what a compiled program does by reading the CPU instructions it executes.

## Key Aspects

- Assembly is a textual representation of binary CPU instructions, not a programming language itself -- each instruction maps to specific opcodes
- The x86 processor has 7 usable general-purpose registers (EAX, EBX, ECX, EDX, EDI, ESI, EBP) plus ESP (stack pointer) and EIP (instruction pointer)
- The stack is LIFO (Last-In-First-Out) and stores local variables, saved registers, and return addresses
- CMP performs subtraction without storing the result but updates FLAGS register; TEST does logical AND similarly
- Conditional jumps (JZ, JNZ, JB, JL) implement if/for/while logic in assembly by testing flag states
- Reverse engineering is done line-by-line: read instruction, understand it, write equivalent C code, track register values
- Compilers optimize common patterns (e.g., `xor eax, eax` instead of `mov eax, 0`) for smaller code and faster execution
- Tools: Ghidra (NSA open-source), IDA Pro (Interactive DisAssembler), objdump (command-line)

## Related Concepts

- [[reverse-engineering]]
- [[ctf-challenges]]
- [[binary-analysis]]
- [[ghidra]]
- [[ida-pro]]

## Sources

- [[primer-to-reverse-engineering]]
