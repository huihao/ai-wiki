---
created: 2026-04-29
updated: 2026-04-29
tags: [memory, optimization, v8]
sources: 1
---
# Pointer Compression
## Definition
A V8 memory optimization where even on 64-bit systems, object pointers are stored in compact 32-bit slots on the heap. This reduces memory usage and improves cache efficiency. V8 uses pointer tagging to distinguish between immediate values (Small Integers/SMIs) and heap pointers.
## Key Concepts
- **SMI (Small Integer)**: 31-bit signed integers stored directly without heap allocation
- **Tag bits**: Last bit distinguishes SMIs (0) from heap pointers (1)
- **Memory savings**: 32-bit compressed pointers on 64-bit systems
- **Escape analysis**: Numbers used only within a function may avoid heap allocation entirely
## Related Concepts
- [[hidden-classes]] -- objects store hidden class pointers using compressed pointers
## Sources
- [[inside-the-v8-javascript-engine]] -- explains V8's memory layout and pointer compression
