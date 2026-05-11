---
created: 2026-04-29
updated: 2026-04-29
tags: [jit, optimization, v8]
sources: 1
---
# Speculative Optimization
## Definition
A JIT compilation strategy where the compiler makes optimistic assumptions (bets) about runtime behavior based on observed type feedback, then generates highly specialized machine code for those assumptions. If the assumptions hold, the code runs near C++ speed; if violated, V8 deoptimizes and falls back to a slower tier.
## Key Concepts
- **Type feedback**: Data collected by Ignition about observed types at each operation
- **Assumption-based**: Code is specialized for specific object shapes and value types
- **Monomorphic bias**: Best performance when assumptions are stable and singular
- **Risk/reward**: Highly optimized but brittle when assumptions break
## Related Concepts
- [[deoptimization]] -- consequence of violated assumptions
- [[inline-caching]] -- provides type feedback for speculation
## Sources
- [[inside-the-v8-javascript-engine]] -- explains speculative optimization in TurboFan
