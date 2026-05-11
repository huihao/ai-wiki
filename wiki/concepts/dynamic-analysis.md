---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 4
---

# Dynamic Analysis

## Definition

Dynamic analysis is the technique of studying a program's behavior by executing it and observing its runtime state -- memory contents, register values, control flow, and system calls -- rather than examining its source code or disassembled instructions statically. It is a core methodology in reverse engineering, particularly when dealing with stripped binaries, obfuscated code, or proprietary bytecode interpreters where static analysis alone is insufficient.

## Key Aspects

- Dynamic analysis complements static analysis by revealing actual runtime behavior that may be obscured by obfuscation, self-modifying code, or indirect dispatch
- In binary reverse engineering, dynamic analysis involves running the target in a debugger (e.g., GDB, x64dbg, Dolphin emulator) and setting breakpoints or watching memory accesses to trace execution paths
- For custom bytecode interpreters (such as game scripting engines), dynamic analysis -- including CPU state dumps on memory accesses to instruction zones -- can reveal the instruction dispatch loop, opcode semantics, and stack manipulation patterns that static disassembly obscures
- Syscall tracing is a form of dynamic analysis where intercepted system call numbers (e.g., Linux x86-64: 0x2b=accept, 0x106=newfstatat) are mapped to their libc function equivalents to reconstruct the behavior of statically linked, stripped binaries
- Memory dump filtering (extracting events like ReadInstr, GetPC, SetPC, SoAccess from massive JSON logs) is a practical dynamic analysis technique used to isolate relevant runtime events from noise
- Dynamic analysis results feed back into static analysis by providing hypotheses about struct layouts, protocol formats, and function signatures that can be confirmed through further debugging

## Related Concepts

- [[static-analysis]]
- [[reverse-engineering]]
- [[bytecode-interpreter]]
- [[struct-recovery]]
- [[disassembler]]
- [[ghidra]]

## Sources

- [[bytecode-interpreter]]
- [[reverse-engineering-walkthrough-nohat24]]
- [[reverse-engineering-wii-script-interpreter]]
- [[struct-recovery]]
