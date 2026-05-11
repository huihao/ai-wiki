---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# JSON Generation

## Definition

JSON generation is the process of constraining a language model's output to produce valid JSON-structured data. Because LLMs are autoregressive token generators that do not natively enforce structural validity, techniques such as grammar-based constrained decoding, logits masking, and API-level JSON modes are used to ensure the output conforms to a specified JSON schema or format.

## Key Aspects

- Grammar-based generation uses Grammar-Based Normal Form (GBNF) grammars to restrict token generation to valid JSON syntax at the decoder level
- Logits masking zeros out the logits of tokens that would violate the desired structure during beam search, enforcing hard constraints
- Grammar-constrained generation is superior to prompt-based formatting instructions because it provides a guarantee of structural validity rather than a probabilistic suggestion
- OpenAI and Anthropic provide API-level JSON modes that enforce valid JSON output without requiring user-side grammar implementation
- Style transfer techniques can ensure generated JSON also matches a desired naming convention and schema style beyond mere syntactic validity
- Critical for function calling, structured data extraction, and any downstream system that parses model output programmatically

## Related Concepts

- [[grammar-based-output-control]]
- [[function-calling]]
- [[constrained-decoding]]

## Sources

- [[grammar-based-output-control]]
