---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# BNF (Backus-Naur Form)

## Definition
BNF (Backus-Naur Form) is a metasyntax notation for describing the grammar of formal languages, and GBNF (Grammar-Based Normal Form) is a variant used in generative AI to constrain LLM output to grammatically valid structures. By specifying production rules in GBNF, developers can force language models to generate only outputs conforming to a defined grammar, such as valid JSON, SQL, or custom data formats.

## Key Aspects
- **Formal grammar specification**: BNF defines non-terminals, terminals, and production rules (e.g., `<expr> ::= <term> | <term> "+" <expr>`) that completely describe valid strings in a language
- **GBNF for LLMs**: Grammar-Based Normal Form adapts BNF for use with LLM decoders, constraining token logits at each generation step to only tokens that can lead to grammatically valid completions
- **Logits masking**: The grammar constraint is implemented by masking disallowed token logits to -infinity during beam search, so only grammar-valid next tokens receive non-zero probability
- **Structured output guarantee**: Unlike post-hoc parsing (which may reject invalid outputs), grammar-constrained generation guarantees all outputs are syntactically valid by construction
- **Implementation**: Libraries like `transformers_cfg` and llama.cpp's GBNF grammar support enable grammar-constrained generation at inference time
- **Tradeoff**: Grammar constraints can reduce output fluency and creativity; best for structured data formats (JSON, SQL, XML) rather than free-form text

## Related Concepts
- [[logits-masking]] -- the mechanism implementing grammar constraints in the decoder
- [[structured-output]] -- the broader category of constrained generation
- [[genai-output-control-design-patterns]] -- one of five design patterns for controlling LLM output

## Sources
- [[grammar-based-output-control]]
