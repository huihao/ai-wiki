---
created: 2026-04-29
updated: 2026-04-29
tags: [assembly, cross-platform, tool]
sources: 1
---
# NASM Assembler

## Summary

NASM (Netwide Assembler) is a free, cross-platform x86/x86-64 assembler that uses Intel syntax and supports multiple output formats (ELF, Mach-O, PE). It is widely used for systems programming, shellcode development, and educational purposes.

## Key Concepts

- NASM uses Intel syntax: instruction destination, source (opposite of AT&T syntax used by GAS)
- Supports multiple output formats: elf64 (Linux), macho64 (macOS), win64 (Windows PE)
- Macros and preprocessor directives enable code reuse and conditional assembly
- Sections: .text (code), .data (initialized data), .bss (uninitialized data), .rodata (read-only data)
- Global symbols are exported with global directive; external symbols with extern
- NASM can produce position-independent code with -f elf64 and appropriate directives
- Cross-compilation between Unix systems requires only changing syscall numbers
- Debug information can be generated with -g flag for use with gdb
- The -static linker flag produces self-contained binaries without shared library dependencies

## Related Concepts

- [[x86-64-assembly]]
- [[system-calls]]
- [[system-v-abi]]
- [[elf-format]]

## Sources

- [[x86-64-assembly-gui]]
