---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Static Analysis

## Definition

Static analysis is the examination of program code or binary executables without running them, used to extract information about structure, behavior, and potential vulnerabilities. In reverse engineering, static analysis involves decompiling binaries, reconstructing data structures, and identifying functions through techniques like syscall number mapping and string reference analysis.

## Key Aspects

- Examines binaries at rest using disassemblers (IDA, Ghidra) to understand program logic without execution
- Statically linked, stripped binaries present extreme challenges: no dynamic library symbols and no function names
- Syscall-based function identification: check `MOV EAX, <number>` before `SYSCALL` instruction to identify libc functions (e.g., 0x2b=accept, 0x106=newfstatat)
- String-guided analysis: log messages ("Failed to create socket") provide hints about function purpose, confirmed via syscall numbers
- Struct reconstruction: iteratively refine Ghidra structs by tracking field access patterns, casts, and sizes
- IDA FLIRT / Ghidra ApplySig: alternative approach using function signature databases for identifying statically-linked libc functions
- Complementary to dynamic analysis (GDB debugging, memory dumps): static analysis provides the structural overview, dynamic analysis reveals runtime behavior
- In custom protocol analysis, static analysis reveals header formats, command structures, and encryption schemes
- Essential for CTF (Capture the Flag) challenges, malware analysis, and legacy system understanding

## Related Concepts

- [[dynamic-analysis]] -- Runtime debugging complementing static analysis
- [[ghidra]] -- NSA's open-source reverse engineering tool
- [[reverse-engineering]] -- The broader practice where static analysis is fundamental
- [[binary-analysis]] -- Examination of compiled program code

## Sources

- [[reverse-engineering-walkthrough-nohat24]]
