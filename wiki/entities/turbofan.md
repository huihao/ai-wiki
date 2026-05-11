---
created: 2026-04-29
updated: 2026-04-29
tags: [entity, compiler, v8, optimization]
sources: 1
---
# TurboFan
## Summary
V8's advanced optimizing compiler that generates highly optimized, speculative machine code for hot code paths. TurboFan uses a "sea of nodes" graph representation and performs aggressive optimizations including inlining, dead code elimination, and constant folding based on type feedback gathered by Ignition.
## Key Attributes
- **Type**: JIT optimizing compiler
- **Part of**: V8 engine
- **Introduced**: V8 v5.9 (2017), replacing Crankshaft
- **Optimizations**: Inlining, constant folding, loop unrolling, speculative type specialization
## Related Entities
- [[v8-engine]] -- parent engine
## Related Concepts
- [[jit-compilation]] -- TurboFan is the final tier
- [[speculative-optimization]] -- generates code based on observed type patterns
- [[deoptimization]] -- falls back when assumptions are violated
## Sources
- [[inside-the-v8-javascript-engine]] -- explains TurboFan's role in the compilation pipeline
