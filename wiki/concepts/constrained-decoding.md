---
created: 2026-05-11
updated: 2026-05-11
tags: [decoding, constrained-generation, reliability]
sources: 1
---

# Constrained Decoding

## Definition

A technique that modifies the sampling process in autoregressive language model generation by applying a grammar or constraint set at each generation step. Before a token is selected, the grammar blocks certain tokens from being chosen, ensuring the output conforms to specified structural rules.

## Mechanism

- Model produces logits as normal during each generation step
- Grammar or constraint mask is applied to modify the token probability distribution
- Invalid tokens (those not matching grammar rules) are effectively blocked
- Result: output is guaranteed to conform to the specified grammar

## Implementations

### Grammar-based (Lark, GBNF)
- Uses formal grammar specifications to define valid token sequences
- Tools: grammargen (auto-generates grammars from --help docs), llguidance (applies grammars to llama.cpp)
- Example: Bash command grammars constraining valid flags, arguments, and syntax

### Logits Masking
- Programmatic rules that mask tokens based on context
- More flexible than grammars for dynamic, context-dependent constraints

## Key Benefits

- **Reliability**: restricting the action surface decreases uncertainty
- **Policy as syntax**: grammars can forbid or require specific forms and arguments
- **Syntax guarantee**: output is structurally valid (though not necessarily semantically correct)

## Limitations

- **Too permissive**: grammar from help text may allow hundreds of legal but rarely used flags
- **Regression risk**: grammar can conflict with model bias, causing failures on valid approaches
- **Complex constructs**: struggles with composition (chaining, loops, heredocs)
- **Syntax ≠ semantics**: valid syntax doesn't guarantee correct behavior

## Related Concepts

- [[grammar-based-output-control]] — specific implementation using formal grammars
- [[logits-masking]] — programmatic token filtering
- [[structured-generation]] — general concept of format-enforced output
- [[beam-search]] — decoding algorithm where constraints operate

## Sources

- [[grammar-constrained-bash-generation]] — NVIDIA AI Red Team research on Bash command generation
- [[genai-output-control-design-patterns]] — pattern comparison and implementation

## Evolution

- **2021**: PICARD applied constrained decoding to SQL generation
- **2025-2026**: Extension to Bash command generation for agentic workflows
- **Emerging**: Learned or policy-refined grammars that encode model reliability subsets plus hard safety rules
