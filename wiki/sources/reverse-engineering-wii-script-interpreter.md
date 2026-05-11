---
created: 2026-04-29
updated: 2026-04-29
url: "https://delroth.net/posts/reverse-engineering-script-interpreter/"
title: "Reverse engineering a Wii game script interpreter"
tags: [source, reverse-engineering, game-hacking, bytecode]
source: unknown
---

# Reverse Engineering a Wii Game Script Interpreter

**Author:** delroth (Baptiste Daroussin)
**URL:** https://delroth.net/posts/reverse-engineering-script-interpreter/
**Duration:** ~3-4 months of work

## Summary

A detailed walkthrough of reverse engineering a custom bytecode interpreter in "Tales of Symphonia: Dawn of the New World" (Wii). The game uses a proprietary scripting language for "skits" (character conversations). Through Dolphin emulator debugging, memory dumps, and IDA analysis, the author identifies the TSS bytecode format, instruction dispatch loop, and individual opcodes (CALL, RET, JUMP, CJUMP, RESERVE, UNRESERVE), ultimately producing a complete reimplementation (cscript-interpreter).

## Key Takeaways

1. **Game script architecture**: Games use scripting languages for non-performance-critical content (dialogues, menus, cinematics). Some use Lua/Python; Namco created a custom interpreter.
2. **Discovery process**: Used Dolphin emulator's file monitor to identify Chat/ directory files → Microsoft Cabinet archives (.cab) → .so (Script Object) files with TSS\0 magic header.
3. **Dynamic analysis over static**: Static analysis of bytecode format hit limits quickly. Modified Dolphin's PowerPC interpreter to dump CPU state on memory accesses to the .so file zone.
4. **Opcode discovery via memory patterns**: Identified interpreter dispatch loop by finding switch-statement-like control flow in IDA. Traced PC (program counter) changes to identify CALL (05), RET (06), JUMP (08), and CJUMP (09) opcodes.
5. **Stack manipulation**: Opcode 11 (RESERVE) subtracts from stack top for local variables; opcode 10 (UNRESERVE) adds back. Similar to x86's `sub esp, N`.
6. **Filtering 188MB of JSON logs**: Wrote filter.py to extract relevant events (ReadInstr, GetPC, SetPC, SoAccess, stack operations) from massive memory dumps.
7. **Final result**: Complete bytecode interpreter reimplementation at github.com/delroth/cscript-interpreter.

## Entities Mentioned

- **delroth (Baptiste Daroussin)** — Author, FreeBSD/LLVM developer
- **Namco** — Publisher of Tales series
- **Dolphin** — Wii/GameCube emulator used for debugging
- **IDA** — Disassembler used for static analysis

## Concepts Mentioned

- [[bytecode-interpreter]] — Virtual machine executing custom instruction set
- [[dynamic-analysis]] — Runtime debugging and memory inspection
- [[switch-dispatch]] — Opcode dispatch via computed jump table
- [[stack-manipulation]] — RESERVE/UNRESERVE for local variable allocation
- [[powerpc-assembly]] — Wii's CPU architecture (lwz, addis, cmplwi instructions)
- [[cabinet-archives]] — Microsoft .cab file format used for game data

## Raw Notes

- .so files are Script Objects containing compiled bytecode, not shared objects
- Language-specific directories: e=English, g=German, f=French, s=Spanish, i=Italian
- Memory dump covered all accesses in the .so file zone during skit execution
- Filter script used lambda predicates, format strings, and ANSI colors for output
- Opcode 05/06 (CALL/RET) use interpreter state stack at specific memory offsets
- Opcode 08 reads next word from bytecode and sets PC (unconditional jump)
- Opcode 09 conditionally jumps based on a flag read from interpreter state
- Header field at offset 0x14 contains table index for multiple PCs (coroutine-like)

## Questions / Follow-ups

- What are the remaining syscalls that haven't been fully reversed?
- How does the script language handle variables, loops, and conditionals beyond basic control flow?
- Could this approach work for other Namco games using the same engine?
