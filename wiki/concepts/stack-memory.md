---
created: 2026-04-29
updated: 2026-05-09
tags: [systems]
sources: 2
---

# Stack Memory

## Definition

Stack memory is a region of RAM organized as a LIFO (Last In, First Out) data structure used by programs to manage function calls, local variables, and return addresses. On x86 architectures, the stack grows downward in memory, with the stack pointer register (ESP/RSP) tracking the current top of the stack.

## Key Aspects

- Stores local variables, function parameters, and return addresses for each function call frame
- Function arguments are typically passed via registers in modern ABIs, but the stack remains essential for spilling and overflow cases
- Return value is placed in EAX register; non-volatile registers must be preserved by callee via push/pop
- Stack frames enable recursion: each call creates a new frame with its own local storage
- In reverse engineering, analyzing stack layout reveals function signatures, local data structures, and control flow patterns
- XOR reg,reg is preferred over MOV reg,0 for zeroing registers because it is faster and produces smaller machine code
- Buffer overflows exploit the stack by overwriting return addresses, enabling arbitrary code execution

## Related Concepts

- [[reverse-engineering]]
- [[x86-assembly]]
- [[cpu-registers]]

## Sources

- [[primer-reverse-engineering]]
