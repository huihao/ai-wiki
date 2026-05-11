---
created: 2026-05-11
updated: 2026-05-11
tags: [decoding, reliability, fallback]
sources: 0
---

# Constrained Retry

## Definition

A decoding strategy where grammar-constrained output is first validated by a parser (e.g., tree-sitter-bash), and if validation fails, the system falls back to native (unconstrained) generation with the parse error passed as context. This combines the reliability benefits of constrained decoding with a safety net that preserves native-level performance when grammar constraints are too restrictive.

## Key Aspects

- Grammar-constrained generation as first pass
- Parser validation before execution
- Error-aware fallback to native mode
- Preserves native performance as a floor
- Net improvement with bounded regression

## Related Concepts

- [[constrained-decoding]] — the core constrained generation technique
- [[grammar-based-output-control]] — grammar specification used in the first pass

## Sources

- [[grammar-constrained-bash-generation]] — NVIDIA research on constrained retry for Bash
