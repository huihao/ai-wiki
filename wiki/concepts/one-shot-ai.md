---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# One-Shot AI

## Definition

One-shot AI refers to the pattern of prompting a large language model to generate an entire application or complex feature in a single request, which creates a large volume of unverified code that requires significant effort to understand, validate, and correct.

## Key Aspects

- **The Core Problem**: Generating a complete application in one shot produces a large pile of code you did not write, requiring time to understand, verify correctness, and catch hidden mistakes
- **Verification Gap**: If you cannot verify the output, you do not own it; if you do not own it, you cannot safely ship it -- making one-shot generation a liability for production systems
- **Correct Alternative -- Incremental Development**: The AI coding loop advocates writing goals, rules, examples, and edge cases first, then asking AI for small, testable pieces rather than the whole thing
- **Failing Tests as Flashlight**: When incremental tests fail, they reveal which rule was unclear, missing, or contradictory, enabling targeted prompt refinement rather than wholesale re-generation
- **Security Implications**: One-shot generation of security-sensitive code (e.g., server-side price validation) is especially dangerous because subtle trust-boundary violations can go undetected
- **Fundamental Skills Still Matter**: AI does not replace the need for understanding data flow, decomposition, edge-case reasoning, and security awareness -- it shifts the focus from typing to thinking and verification

## Related Concepts

- [[ai-coding-loop]] -- The disciplined incremental alternative to one-shot generation
- [[incremental-development]] -- Building software piece-by-piece with verification
- [[output-validation]] -- Post-generation checking of AI-produced code
- [[trust-boundaries]] -- Security concept violated by naive one-shot generation

## Sources

- [[ai-coding-loop]]
