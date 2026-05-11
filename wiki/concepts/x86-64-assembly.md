---
created: 2026-04-29
updated: 2026-04-29
tags: [assembly, systems-programming, x86-64]
sources: 1
---
# x86-64 Assembly

## Definition

x86-64 assembly is the low-level programming language for the 64-bit extension of the x86 instruction set architecture, used for operating systems, embedded systems, performance-critical code, and reverse engineering.

## Key Concepts

- 16 general-purpose 64-bit registers: rax, rbx, rcx, rdx, rdi, rsi, rbp, rsp, r8-r15
- The System V ABI (Linux, macOS) passes the first 6 integer arguments in rdi, rsi, rdx, rcx, r8, r9
- The Microsoft x64 ABI uses rcx, rdx, r8, r9 for the first 4 arguments (no r10)
- Stack must be 16-byte aligned before CALL instruction; CALL pushes 8-byte return address
- Function prologue: push rbp; mov rbp, rsp. Epilogue: leave; ret
- System calls use the syscall instruction; number goes in rax, arguments in rdi, rsi, rdx, r10, r8, r9
- NASM uses Intel syntax: instruction destination, source (opposite of AT&T syntax)
- Position-independent code (PIC) is important for shared libraries and security
- SIMD instructions (SSE, AVX) operate on 128/256/512-bit vectors for parallel computation
- Debugging tools: gdb, strace, objdump, and disassemblers (IDA, Ghidra)

## Related Concepts

- [[x86-assembly]]
- [[system-calls]]
- [[system-v-abi]]
- [[elf-format]]
- [[nasm-assembler]]

## Sources

- [[x86-64-assembly-gui]]
- [[x86re]]
