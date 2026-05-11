---
created: 2026-04-29
updated: 2026-04-29
tags: [binary-format, linking, linux]
sources: 1
---
# ELF Format

## Definition

ELF (Executable and Linkable Format) is the standard binary file format for executables, object code, shared libraries, and core dumps on Unix-like operating systems, defining the layout of code, data, and metadata in a binary file.

## Key Concepts

- ELF header contains metadata: magic number, architecture, entry point, program header/table offsets
- Program headers describe segments for execution: LOAD (code/data), DYNAMIC (dynamic linking info)
- Section headers describe sections: .text (code), .data, .bss, .rodata, .symtab (symbol table)
- The dynamic linker (ld-linux.so) loads shared libraries and resolves symbols at runtime
- Position-independent executables (PIE) can be loaded at any address, enabling ASLR
- ELF supports both static linking (all code in one binary) and dynamic linking (shared libraries)
- DWARF debug information can be embedded for use with debuggers (gdb)
- readelf and objdump are standard tools for inspecting ELF binaries
- ELF is defined by the Tool Interface Standard (TIS) and used on Linux, BSD, and many embedded systems

## Related Concepts

- [[x86-64-assembly]]
- [[system-calls]]
- [[system-v-abi]]

## Sources

- [[x86-64-assembly-gui]]
