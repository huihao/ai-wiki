---
created: 2026-04-29
updated: 2026-04-29
tags: [reverse-engineering, systems]
sources: 1
---

# Bytecode Interpreter

## Definition

A virtual machine that executes custom bytecode instructions, typically used in game engines for scripting (dialogues, menus, cinematics) or in security contexts (eBPF, WASM). The interpreter has a dispatch loop that reads opcodes and routes them to handler functions via a switch statement or jump table.

## Key Details

- **Dispatch loop**: Reads opcode, increments PC, dispatches to handler (switch-based or computed goto)
- **Instruction format**: Opcode + optional operands (immediate values, addresses)
- **Stack machine vs register machine**: Some use operand stacks, others use registers
- **CALL/RET**: Subroutine mechanism with return address stack
- **Local variables**: Stack-allocated via RESERVE/UNRESERVE opcodes
- **Control flow**: JUMP (unconditional), CJUMP (conditional), CALL, RET

## Related Concepts

- [[dynamic-analysis]] — Runtime debugging to understand interpreter behavior
- [[struct-recovery]] — Reconstructing data structures from binary analysis

## Sources

- [[reverse-engineering-wii-script-interpreter]] — Tales of Symphonia script interpreter RE
