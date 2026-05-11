---
created: 2026-04-29
updated: 2026-05-09
tags: [reverse-engineering, security]
sources: 2
---

# Disassembler

## Definition
A disassembler is a tool that converts machine code (binary opcodes) into human-readable assembly language mnemonics, enabling reverse engineering of compiled programs. It is an essential instrument for analyzing malware, understanding proprietary software behavior, recovering lost source code, and performing security auditing.

## Key Aspects
- ASM is a textual representation of binary instructions, not the binary itself; mnemonics map to opcodes (e.g., CALL = E8)
- IDA (Interactive Disassembler) is a professional tool offering both graph (layout) and linear views
- Ghidra (open-source, NSA) and radare2 are alternatives to the commercial IDA Pro
- Reverse engineering process: read instructions sequentially, track register state, write equivalent C code
- Conditional jumps (JZ, JNZ, JB, JL) reveal control flow structure (if/for/while)
- Thick arrows in IDA graph view represent loops (backward jumps)
- Position-independent code (PIC) uses relative addressing and works regardless of load address
- eBPF bytecode can be disassembled using llvm-objdump for kernel program analysis

## Related Concepts
- [[cpu-registers]]
- [[ebpf-verifier]]

## Sources
- [[primer-reverse-engineering]]
- [[reverse-engineering]]
