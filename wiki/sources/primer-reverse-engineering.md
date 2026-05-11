---
created: 2026-04-29
updated: 2026-04-29
tags: [source]
sources: 1
---

# A Primer Guide to Reverse Engineering

## Metadata

- **Author**: Purism (Igor Skochinsky)
- **Date**: 2017
- **URL**: https://puri.sm/posts/primer-to-reverse-engineering/
- **Access Date**: 2026-04-29
- **Raw File**: `raw/026_A Primer Guide to Reverse Engineering – Purism.md`

## Summary

Comprehensive primer on reverse engineering x86 assembly code. Walks through fundamentals (stack, registers, instructions) and demonstrates real reverse engineering by decompiling a binary function back to C code, explaining each step.

## Key Takeaways

- **ASM is textual representation** of binary instructions, not the binary itself. Mnemonics map to opcodes (e.g., CALL = E8 for relative call).
- **Stack**: LIFO structure growing downward in RAM. Stores local variables and return addresses. Function arguments passed via stack, return value in EAX.
- **Registers**: Only 7 usable on x86 (EAX, EBX, ECX, EDX, EDI, ESI, EBP). ESP = stack pointer, EIP = instruction pointer. Registers are much faster than RAM.
- **Key instructions**: MOV (copy), ADD/SUB (arithmetic), CMP (compare without storing), TEST (logical AND), JMP/JZ/JNZ (conditional jumps implementing if/for/while).
- **CMP vs SUB**: CMP is SUB but discards result, only updates FLAGS register. FLAGS contains Zero Flag, Sign Flag, Overflow Flag, Carry Flag.
- **XOR reg, reg** = zeroing a register (faster and smaller than MOV reg, 0).
- **Function calling convention**: Arguments on stack, return in EAX. Functions must preserve non-EAX registers (push/pop).
- **Reverse engineering process**: Read instruction by track state → write equivalent C code → follow jumps to build control flow → identify data structures from comparison values (e.g., magic signatures like "KBLU").
- **Position-independent code (PIC)**: Code that works regardless of load address using relative addressing.

## Entities Mentioned

- [[purism]] — Company publishing the guide.
- [[igor-skochinsky]] — Likely author (common RE contributor at Purism).
- [[ida-disassembler]] — Professional disassembly tool by Hex-Rays.

## Concepts Mentioned

- [[reverse-engineering]] — Analyzing compiled binaries to understand their functionality.
- [[x86-assembly]] — Low-level CPU instruction set for Intel/AMD processors.
- [[stack-memory]] — LIFO data structure for function call management.
- [[cpu-registers]] — Fast storage locations in the processor.
- [[flags-register]] — Status register tracking arithmetic conditions.
- [[conditional-jumps]] — Branch instructions implementing control flow.
- [[position-independent-code]] — Code that executes correctly regardless of memory location.
- [[disassembler]] — Tool converting binary opcodes to readable assembly.

## Raw Notes

- Uses IDA disassembler with layout view (graph) and linear view.
- Example function: validate_upd_config checking "KBLUPD_M" and "KBLUPD_S" signatures.
- Real-world example from SiliconInit/QUEEN BIOS code.
- Conditional jumps: JZ (zero), JNZ (not zero), JB (unsigned below), JL (signed lower).
- Thick arrows in IDA graph view represent loops (backward jumps).

## Questions / Follow-ups

- How does modern RE differ with ASLR, DEP, and other security mitigations?
- What role do tools like Ghidra and radare2 play compared to IDA?
