---
created: 2026-04-29
updated: 2026-05-09
tags: [entity]
sources: 1
---

# IDA Disassembler

## Summary
IDA (Interactive DisAssembler) is a professional disassembly and decompilation tool developed by Hex-Rays, widely considered the industry standard for reverse engineering binary executables. IDA converts machine code (binary opcodes) into human-readable assembly language, provides both graph and linear views for navigation, and supports extensive plugin-based analysis for malware research, vulnerability discovery, and software debugging.

## Key Aspects

- **Disassembly Views**: Provides a layout view (control flow graph with basic blocks and edges) and a linear view (sequential instruction listing) for different analysis needs
- **Deccompilation**: The Hex-Rays decompiler plugin translates assembly back into C-like pseudocode, dramatically accelerating reverse engineering workflows
- **Binary Analysis**: Identifies functions, data structures, string references, cross-references, and call graphs automatically
- **Interactive Exploration**: Users can rename variables, add comments, define structures, and annotate code to build understanding incrementally
- **Alternatives**: Ghidra (NSA, open-source), radare2/Cutter (open-source), Binary Ninja (commercial) are common alternatives; each has strengths in different analysis scenarios

## Related Concepts
- [[ida-disassembler]]
- [[reverse-engineering]]

## Sources
- [[primer-reverse-engineering]]
