---
created: 2026-04-29
updated: 2026-04-29
tags: [javascript, optimization, v8]
sources: 1
---
# Hidden Classes
## Definition
Internal V8 engine mechanism (also called "Shapes" or "Maps") that tracks the structure and layout of JavaScript objects. When an object is created, V8 assigns it a hidden class; adding properties causes transitions to new hidden classes. The optimizing compilers generate machine code specialized for specific hidden classes, enabling fast fixed-offset property access instead of slow hash map lookups.
## Key Concepts
- **Transition chains**: Adding properties in consistent order creates shared transition paths
- **Shape stability**: Objects with the same hidden class can share optimized code
- **Performance impact**: Different property orders create different hidden classes even for logically identical objects
- **Dictionary mode**: Using `delete` forces objects into slow hash map storage
## Related Concepts
- [[inline-caching]] -- uses hidden classes for fast property access
- [[deoptimization]] -- triggered when hidden class assumptions are violated
- [[speculative-optimization]] -- compilers optimize based on observed hidden classes
## Sources
- [[inside-the-v8-javascript-engine]] -- detailed explanation of hidden classes
