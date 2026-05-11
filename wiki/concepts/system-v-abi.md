---
created: 2026-04-29
updated: 2026-04-29
tags: [calling-convention, unix, x86-64]
sources: 1
---
# System V ABI

## Definition

The System V ABI (Application Binary Interface) is the calling convention standard used by Unix-like operating systems (Linux, BSD, macOS) for x86-64, defining how functions pass arguments, return values, and manage the stack.

## Key Concepts

- First 6 integer arguments passed in registers: rdi, rsi, rdx, rcx, r8, r9 (in that order)
- Floating-point arguments go in xmm0-xmm7
- Additional arguments (7+) are passed on the stack
- Return value goes in rax (integer) or xmm0 (floating-point)
- The callee-saved registers are rbx, rbp, r12-r15; the caller-saved registers are rax, rcx, rdx, rsi, rdi, r8-r11
- The stack must be 16-byte aligned at the point of a CALL instruction
- Red zone: 128 bytes below rsp that leaf functions can use without adjusting rsp
- The ABI defines name mangling rules (e.g., C functions prefixed with underscore on macOS)
- Different from the Microsoft x64 ABI, which uses rcx, rdx, r8, r9 and has a 32-byte shadow space

## Related Concepts

- [[x86-64-assembly]]
- [[system-calls]]
- [[elf-format]]

## Sources

- [[x86-64-assembly-gui]]
