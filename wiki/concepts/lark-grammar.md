---
created: 2026-05-11
updated: 2026-05-11
tags: [grammar, parsing, tooling]
sources: 0
---

# Lark Grammar

## Definition

Lark is a Python parsing toolkit that supports Earley and LALR(1) parsing. In the context of constrained decoding, Lark grammars define the valid structure of generated output (e.g., Bash commands, SQL, JSON). The grammargen tool automatically generates Lark grammars from --help documentation or JSON tool schemas.

## Key Aspects

- BNF-style grammar notation
- Used by grammargen to define valid command structures
- Applied during inference via llguidance for constrained decoding
- Supports terminals, rules, and bounded repetition

## Related Concepts

- [[grammar-based-output-control]] — Lark is one grammar implementation
- [[constrained-decoding]] — Lark grammars constrain token selection

## Sources

- [[grammar-constrained-bash-generation]] — Lark grammars for Bash command generation
