---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Prompt Engineering as Probability

## Definition
Prompt engineering as probability is the perspective that all common LLM techniques -- including prompt design, chain-of-thought, RAG, fine-tuning, and structured output -- are fundamentally methods of manipulating the probability distributions over possible output tokens. Understanding prompts as probability-shaping tools provides a unified mental model for why techniques succeed or fail.

## Key Aspects
- LLMs are "fancy probability engines": they model distributions of words, not knowledge databases
- Prompt engineering shapes the likelihood of desired response types by altering the conditional distribution
- Chain-of-thought reasoning breaks large probabilistic leaps into smaller, more probable steps, improving accuracy
- RAG biases output probabilities toward specific retrieved information, grounding responses in factual content
- Fine-tuning nudges the probability distribution toward specialized domains
- ReAct agents provide a specific format that makes tool use more probable
- Structured output constrains allowable tokens to enforce format compliance
- Temperature controls sampling randomness: low temperature favors high-probability words (predictable), high temperature introduces randomness (creative)
- The "company it keeps" principle: models learn word relationships from co-occurrence patterns, not explicit definitions

## Related Concepts
- [[llm-fundamentals]]
- [[temperature-parameter]]
- [[rag-probability-bias]]
- [[chain-of-thought]]

## Sources
- [[an-intuitive-guide-to-how-llms-work]]
