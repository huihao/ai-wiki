---
created: 2026-04-29
updated: 2026-04-29
tags: [compilation, optimization, v8]
sources: 1
---
# JIT Compilation
## Definition
Just-In-Time (JIT) compilation is a technique where code is compiled during execution rather than before. V8 uses a 4-tier JIT pipeline: Ignition (bytecode interpreter), Sparkplug (baseline compiler), Maglev (mid-tier optimizing compiler), and TurboFan (advanced optimizing compiler), progressively generating more optimized code for frequently executed functions.
## Key Concepts
- **Tiered compilation**: Fast startup with Ignition, peak performance with TurboFan
- **Warm/hot code**: Functions executed frequently enough to warrant optimization
- **Speculative optimization**: Compiler makes bets based on observed runtime behavior
- **Background compilation**: TurboFan compiles on background threads to avoid blocking
## Related Concepts
- [[speculative-optimization]] -- core JIT optimization strategy
- [[deoptimization]] -- fallback when JIT assumptions are wrong
## Sources
- [[inside-the-v8-javascript-engine]] -- details the 4-tier compilation pipeline
