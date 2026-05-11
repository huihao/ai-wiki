---
created: 2026-05-11
updated: 2026-05-11
tags: [coding, best-practices, ai]
sources: 0
---

# Bounded Changes

## Definition

Modifications to code that have four key properties: small surface area (touches one file/module), clear acceptance criterion (specific test or behavior that proves it worked), reviewable in a few minutes, and easily revertible (clean git revert). Bounded changes are the recommended shape for AI coding agent tasks.

## Key Properties

1. **Small surface area** — touches one file, module, or concept
2. **Clear acceptance criterion** — specific test, output, or behavior
3. **Reviewable in minutes** — human can form an opinion quickly
4. **Easily revertible** — clean git revert

## Related Concepts

- [[coding-agent]] — agents perform best on bounded tasks
- [[intermediate-thinking]] — planning before making changes

## Sources

- [[codex-handbook-practical-guide]] — bounded changes as a key best practice
