---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Stack Manipulation

## Definition

Stack manipulation is the technique of directly controlling the call stack (adding, removing, or modifying stack frames) to manage local variables, function calls, and return addresses. In reverse engineering and bytecode interpretation, stack manipulation operations like RESERVE and UNRESERVE allocate and deallocate space for local variables, analogous to x86's `sub esp, N` and `add esp, N` instructions.

## Key Aspects

- In custom bytecode interpreters (e.g., Wii game script interpreters), stack manipulation opcodes manage local variable storage
- RESERVE (opcode 11 in TSS bytecode) subtracts from the stack top to allocate space for local variables
- UNRESERVE (opcode 10) adds back to the stack, deallocating the local variable space
- Functionally equivalent to x86's `sub esp, N` (allocate) and `add esp, N` (deallocate) patterns
- CALL (opcode 05) pushes return addresses onto the interpreter state stack
- RET (opcode 06) pops return addresses to resume execution at the calling location
- Understanding stack manipulation is essential for reverse engineering custom interpreters and virtual machines
- Stack-based VMs (like the JVM, .NET CLR, and custom game scripting engines) all rely on stack manipulation for execution
- The interpreter dispatch loop (often a switch statement or computed jump) processes opcodes sequentially, modifying the stack state

## Related Concepts

- [[bytecode-interpreter]] -- Virtual machine executing custom instruction sets
- [[dynamic-analysis]] -- Runtime debugging for understanding stack behavior
- [[powerpc-assembly]] -- CPU architecture where stack manipulation patterns originate
- [[reverse-engineering]] -- Practice of understanding compiled systems through analysis

## Sources

- [[reverse-engineering-wii-script-interpreter]]
