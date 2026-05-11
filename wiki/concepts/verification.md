---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Verification

## Definition

Verification in the context of AI-assisted coding is the systematic process of confirming that AI-generated code actually works correctly, encompassing automated testing, manual review, and iterative refinement until the developer can confidently ship the result.

## Key Aspects

- The core principle is "if you can't verify it, you don't own it, and if you don't own it, you can't safely ship it" -- unverified AI output is technical debt, not working code.
- The AI coding loop defines a 7-step verification workflow: write the goal, define rules (invariants), provide examples (expected behavior), identify edge cases, request small increments (not the whole thing), ask for tests, then run the tests.
- Failing tests serve as a diagnostic flashlight: they indicate which rule was unclear, missing, or contradictory in the prompt, enabling targeted prompt improvement rather than wholesale regeneration.
- Verification requires trust boundaries: in the shopping cart example, the system must never trust user-supplied prices and always use server-side catalog prices, a rule that must be explicitly stated and tested.
- One-shot AI output often contains hidden mistakes that are difficult to catch without tests; incremental generation with verification catches errors early when they are cheap to fix.
- The verification loop creates a positive feedback cycle: each test failure improves the prompt, which produces better code, which passes more tests, building confidence incrementally.
- Good verification strategy includes both happy-path tests (does it work when inputs are correct?) and adversarial tests (does it handle edge cases, malformed inputs, and attack vectors?).

## Related Concepts

- [[ai-coding-loop]] -- the structured workflow within which verification operates
- [[tdd]] -- test-driven development as the pre-AI verification methodology
- [[two-stage-generation]] -- separating planning from execution to enable better verification

## Sources

- [[ai-coding-loop]]
