---
created: 2026-04-29
updated: 2026-05-09
tags: [bytecode, reverse-engineering]
sources: 1
---

# Switch Dispatch

## Definition

Switch dispatch is a bytecode interpreter execution pattern where a central loop reads an opcode from the instruction stream and uses a switch statement (or equivalent computed jump table) to route execution to the handler for that opcode. It is the most common implementation strategy for virtual machine interpreters, scripting language runtimes, and bytecode-compiled game scripting systems, offering a balance between simplicity, portability, and performance.

## Key Aspects

- **Dispatch loop structure**: The interpreter maintains a program counter (PC), reads the next opcode byte, switches on its value to execute the corresponding handler, then increments PC and repeats — forming the core fetch-decode-execute cycle.
- **Computed jump table**: Modern compilers optimize switch statements into jump tables (arrays of code addresses indexed by the opcode value), providing O(1) dispatch time per instruction regardless of the number of opcodes.
- **Opcode categories**: Typical bytecode instruction sets include control flow (CALL, RET, JUMP, CJUMP/conditional jump), stack manipulation (PUSH, POP, RESERVE, UNRESERVE), data operations (LOAD, STORE, arithmetic), and system calls.
- **Stack-based execution**: Most bytecode VMs use an operand stack where instructions push and pop values, simplifying code generation and making the interpreter stateless between instructions.
- **Performance characteristics**: Switch dispatch is portable and easy to implement but slower than threaded code (direct/indirect threading) because of branch prediction misses on the central switch. It remains dominant due to compiler optimization and simplicity.
- **Reverse engineering target**: Switch-dispatch loops are a key pattern to identify when reverse-engineering proprietary bytecode interpreters — finding the dispatch switch reveals the instruction set architecture.

## Related Concepts

- [[bytecode-interpreter]]
- [[virtual-machine]]
- [[dynamic-analysis]]

## Sources

- [[reverse-engineering-wii-script-interpreter]]
