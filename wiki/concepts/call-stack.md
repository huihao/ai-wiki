---
created: 2026-04-29
updated: 2026-04-29
tags: [functions, memory, systems]
sources: 1
---
# Call Stack
## Definition
A last-in-first-out (LIFO) data structure used by programs to manage function calls and local variables. Each function call creates a stack frame containing parameters, return address, saved base pointer, and local variables. The stack pointer (ESP/RSP) tracks the top of the stack, while the base pointer (EBP/RBP) anchors each stack frame.
## Key Concepts
- **Stack frame**: Contains parameters, return address, saved EBP, local variables
- **LIFO ordering**: Last pushed item is first popped
- **16-byte alignment**: Stack must be aligned before function calls
- **Function prologue**: PUSH EBP; MOV EBP, ESP
- **Function epilogue**: LEAVE; RET
## Related Concepts
- [[x86-assembly]] -- stack operations in assembly
## Sources
- [[x86re]] -- explains call stack mechanics in x86
- [[x86-64-assembly-gui]] -- stack usage in x86-64 assembly
