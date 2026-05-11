---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Position-Independent Code

## Definition
Position-independent code (PIC) is machine code that can execute correctly regardless of the memory address at which it is loaded, using relative addressing rather than absolute addresses. PIC is essential for shared libraries and dynamic linking, as it allows code to be mapped into arbitrary virtual memory locations without runtime relocation.

## Key Aspects
- Uses relative addressing (offsets from the instruction pointer or base register) instead of absolute memory addresses
- Required for shared libraries (.so, .dll) that must be loaded at unpredictable memory locations
- In x86 assembly, PIC avoids hardcoded addresses by computing addresses relative to EIP/RIP
- Compilers generate PIC by default on most modern platforms; the `-fPIC` flag in GCC/Clang explicitly requests it
- Slight performance overhead compared to non-PIC code due to indirection, though negligible on modern CPUs
- Relevant to reverse engineering because PIC binaries are harder to analyze since absolute addresses are not embedded
- Interacts with ASLR (Address Space Layout Randomization), a security feature that randomizes load addresses

## Related Concepts
- [[x86-assembly]]
- [[reverse-engineering]]
- [[dynamic-linking]]

## Sources
- [[primer-reverse-engineering]]
