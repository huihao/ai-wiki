---
created: 2026-04-29
updated: 2026-04-29
tags: [reverse-engineering]
sources: 1
---

# Struct Recovery

## Definition

The process of reconstructing data structure definitions from compiled binary code by analyzing field access patterns, type casts, sizes, and relationships between variables. A core skill in reverse engineering statically-linked or stripped binaries where original source definitions are unavailable.

## Key Details

- **Access pattern analysis**: Track how memory offsets are dereferenced to determine field types and sizes
- **Cast analysis**: Type casts (ushort, uint8_t) reveal intended field types
- **Size validation**: Comparisons (CMP AX, 0x100) reveal field size constraints
- **Iterative refinement**: Start with partial struct, refine as more code is analyzed
- **Cross-reference**: Use field references across multiple functions to validate struct layout
- **Ghidra Data Type Manager**: Tool for creating and applying custom struct definitions

## Related Concepts

- [[dynamic-analysis]] — Runtime debugging to validate struct assumptions
- [[syscall-numbers]] — Help identify function signatures that consume the structs

## Sources

- [[reverse-engineering-walkthrough-nohat24]] — CTF challenge struct recovery walkthrough
