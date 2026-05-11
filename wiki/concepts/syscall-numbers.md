---
created: 2026-04-29
updated: 2026-05-09
tags: [reverse-engineering]
sources: 2
---

# Syscall Numbers

## Definition

Syscall numbers are integer identifiers assigned to each system call in an operating system's ABI, used by the CPU to dispatch user-space requests to the appropriate kernel handler. In reverse engineering, identifying syscall numbers (by observing the value loaded into EAX/RAX before a SYSCALL instruction) is a primary technique for reconstructing function signatures in statically linked, stripped binaries.

## Key Aspects

- On x86-64 Linux, the syscall number is placed in the RAX register before the SYSCALL instruction (e.g., 0x2b = accept, 0x106 = newfstatat)
- Common libc functions map to predictable syscall sequences: socket(), bind(), listen() each trigger specific syscalls
- In stripped binaries without symbols, tracing EAX values before SYSCALL instructions reveals which libc functions are being called
- The `int 0x80` interface (32-bit) uses different numbers than the SYSCALL interface (64-bit) for the same operations
- Ghidra and IDA can use syscall tables to annotate decompiled code with function names
- IDA's FLIRT signatures and Ghidra's ApplySig can alternatively identify statically-linked libc functions by their byte patterns
- Syscall number tables vary by architecture (x86, ARM, RISC-V) and OS version, requiring correct reference tables for accurate identification

## Related Concepts

- [[reverse-engineering]]
- [[x86-assembly]]
- [[ghidra]]

## Sources

- [[reverse-engineering-walkthrough-nohat24]]
- [[primer-reverse-engineering]]
