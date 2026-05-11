---
created: 2026-04-29
updated: 2026-05-09
tags: [llm]
sources: 2
---

# Structured Generation

## Definition

Structured generation is a technique for constraining large language model outputs to conform to a specified schema, format, or grammar, ensuring that generated text is syntactically valid and parseable without post-processing rejection or retry logic.

## Key Aspects

- Grammar-based output control uses context-free grammars or regular expressions to mask invalid tokens during sampling, guaranteeing syntactic correctness
- Logits masking applies penalty or blocking to tokens that would violate the desired output structure, operating at the sampling layer
- JSON mode in API providers (OpenAI, Anthropic) implements structured generation by constraining outputs to valid JSON schemas
- Constrained decoding dramatically reduces hallucinated formats and improves reliability of programmatic LLM integration
- Techniques include token-level filtering, guided generation with finite state machines, and outline-based decoding
- Structured output is one of the core probability manipulation techniques: by constraining allowable tokens, the model's natural distribution is shaped toward compliant outputs
- Trade-off: aggressive constraint can reduce output diversity and occasionally degrade quality for creative tasks

## Related Concepts

- [[logits-masking]]
- [[text-generation]]
- [[prompt-engineering]]

## Sources

- [[an-intuitive-guide-to-how-llms-work]]
