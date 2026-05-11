---
created: 2026-05-11
updated: 2026-05-11
tags: [parser, syntax, tooling]
sources: 0
---

# Tree-sitter

## Definition

A parser generator toolkit for building incremental parsers for source code and structured text. Used in AI coding agents to validate generated code or command syntax before execution, catching structural errors without running the code. Tree-sitter-bash specifically validates Bash command syntax.

## Key Aspects

- Incremental parsing (efficient re-parsing after edits)
- Fault-tolerant (produces partial ASTs for malformed input)
- Used for pre-execution syntax validation in agentic systems
- Generates concrete syntax trees, not just pass/fail

## Related Concepts

- [[constrained-retry]] — tree-sitter validates grammar-constrained output
- [[constrained-decoding]] — grammar-based generation validated by tree-sitter

## Sources

- [[grammar-constrained-bash-generation]] — tree-sitter-bash for Bash syntax validation
