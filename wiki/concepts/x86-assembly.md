---
created: 2026-04-29
updated: 2026-04-29
tags: [assembly, low-level, programming]
sources: 1
---
# x86 Assembly
## Definition
The low-level programming language for Intel x86 processors, providing a human-readable representation of machine code instructions. x86 assembly uses registers, memory addressing modes, and control flow instructions to directly manipulate processor state.
## Key Concepts
- **Registers**: EAX (accumulator), EBX (base), ECX (count), EDX (data), ESI/EDI (index), ESP (stack pointer), EBP (base pointer)
- **Instructions**: MOV, LEA, ADD, SUB, XOR, CMP, JMP, PUSH, POP, CALL, RET
- **Addressing modes**: Register, immediate, direct memory, indirect memory
- **Syntax**: Intel (instruction dest, src) vs AT&T (instruction src, dest)
- **Flags**: ZF (zero), SF (sign), OF (overflow) set by arithmetic/comparison instructions
## Related Concepts
- [[call-stack]] -- function call mechanism in assembly
- [[x86-architecture]] -- the underlying processor architecture
## Sources
- [[x86re]] -- x86 reverse engineering tutorial
- [[x86-64-assembly-gui]] -- x86-64 assembly GUI tutorial
