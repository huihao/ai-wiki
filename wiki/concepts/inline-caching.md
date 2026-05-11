---
created: 2026-04-29
updated: 2026-04-29
tags: [optimization, runtime, v8]
sources: 1
---
# Inline Caching
## Definition
A runtime optimization technique used by V8 where property access results are cached at specific call sites. After the first access, V8 rewrites machine code at the call site to check the hidden class and use the cached memory offset, making subsequent accesses as fast as direct memory reads.
## Key Concepts
- **Monomorphic**: IC has seen only one hidden class -- fastest state
- **Polymorphic**: IC has seen 2-4 hidden classes -- slower, requires multiple checks
- **Megamorphic**: IC has seen too many hidden classes -- falls back to generic lookup
- **Call site**: The specific location in code where a property access occurs
## Related Concepts
- [[hidden-classes]] -- ICs cache results based on hidden class identity
- [[speculative-optimization]] -- ICs provide type feedback for optimizing compilers
## Sources
- [[inside-the-v8-javascript-engine]] -- explains IC states and transitions
