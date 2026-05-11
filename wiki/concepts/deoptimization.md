---
created: 2026-04-29
updated: 2026-04-29
tags: [debugging, performance, v8]
sources: 1
---
# Deoptimization
## Definition
The process where V8 discards optimized machine code and falls back to a lower compilation tier when runtime behavior violates the optimizing compiler's assumptions. This is the single biggest cause of mysterious performance problems in Node.js applications, with slowdowns ranging from 2x to 100x.
## Key Concepts
- **Hidden class mismatch**: Object shape differs from what was optimized for
- **Array element kind changes**: Array storage type transitions (e.g., packed integers to objects)
- **Deoptimization loop**: Repeated optimize-deoptimize cycles destroying performance
- **Triggers**: `delete` keyword, `arguments` object, mixed types, conditional properties
## Related Concepts
- [[speculative-optimization]] -- deoptimization is the consequence of wrong bets
- [[hidden-classes]] -- shape changes cause deoptimization
## Sources
- [[inside-the-v8-javascript-engine]] -- covers common deoptimization triggers and fixes
