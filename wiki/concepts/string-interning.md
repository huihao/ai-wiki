---
created: 2026-04-29
updated: 2026-04-29
tags: [memory, optimization, v8]
sources: 1
---
# String Interning
## Definition
A V8 optimization where identical string literals are stored in memory only once, with all references pointing to the same memory address. This saves memory and enables fast string comparisons via pointer comparison (single CPU instruction) instead of character-by-character comparison.
## Key Concepts
- **Deduplication**: Same string literal stored once in memory
- **Pointer comparison**: O(1) string equality check instead of O(n)
- **Memory savings**: Significant when the same strings appear many times
## Related Concepts
- [[pointer-compression]] -- related memory optimization
## Sources
- [[inside-the-v8-javascript-engine]] -- describes string internalization in V8
