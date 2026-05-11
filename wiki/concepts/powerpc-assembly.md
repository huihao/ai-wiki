---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# PowerPC Assembly

## Definition
PowerPC Assembly is the low-level assembly language for the PowerPC family of RISC processors, used in systems ranging from Apple Macs (pre-Intel era) to gaming consoles like the Nintendo Wii and Xbox 360. Understanding PowerPC assembly is essential for reverse engineering software on these platforms, particularly game scripts and embedded firmware.

## Key Aspects
- RISC architecture with fixed-width 32-bit instructions, making instruction decoding more uniform than x86
- Core instructions include `lwz` (load word and zero), `addis` (add immediate shifted), `cmplwi` (compare logical word immediate), and branch instructions
- The Wii's Broadway processor is a PowerPC 750CL variant; game scripts are compiled to PowerPC bytecode interpreted by a custom virtual machine
- Stack manipulation uses `subi`/`addi` on the stack pointer (similar to x86's `sub esp, N`)
- Register-based calling convention with dedicated registers for function arguments and return values
- Reverse engineering involves tracing program counter changes to identify control flow (CALL, RET, JUMP, CJUMP opcodes)
- The Wii emulator Dolphin provides debugging facilities for dynamic analysis of PowerPC code

## Related Concepts
- [[reverse-engineering]]
- [[bytecode-interpreter]]
- [[dynamic-analysis]]

## Sources
- [[reverse-engineering-wii-script-interpreter]]
