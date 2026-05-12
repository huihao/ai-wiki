---
created: 2026-04-28
updated: 2026-04-28
tags: [foundation, language-modeling, llm]
sources: 1
---

# Next-Token Prediction

## Definition

Next-token prediction is the fundamental task performed by large language models: given a sequence of previous tokens (words, characters, or subwords), predict the most likely next token. This is formulated as conditional probability estimation: P(token_t | token_1, ..., token_{t-1}). The model learns a high-dimensional probability distribution over all possible next tokens, with trained weights serving as the distribution's parameters.

## How It Works

1. **Input**: Sequence of previous tokens (context window)
2. **Model processing**: Transformer computes representations, attention mechanism weighs relevant context
3. **Output layer**: Softmax converts final representation into probability distribution over vocabulary
4. **Selection**: Token with highest probability (or sampled according to temperature/top-k/top-p) is chosen
5. **Iteration**: Selected token appended to sequence, process repeats for next prediction

## Key Proponents / Critics

- **Language modeling tradition**: Shannon (1951), Jelinek (1976) — n-gram models as conditional probability
- **Transformers**: Vaswani et al. (2017) — attention enables better conditioning on distant context
- **Modern practice**: All GPT-style models (decoder-only) use next-token prediction as training objective

## Related Concepts

- [[conditional-probability]] — mathematical foundation
- [[autoregressive-model]] — sequential generation paradigm
- [[softmax]] — converts scores to probability distribution
- [[temperature-parameter]] — controlling randomness in selection
- [[context-window]] — how many previous tokens are considered
- [[language-modeling]] — broader task category

## Trade-offs

- **Advantages**:
  - Simple, well-defined training objective
  - Scalable: same objective works across model sizes
  - Enables flexible generation (continuation, completion, dialogue)
- **Limitations**:
  - Token-by-token may miss global structure
  - Doesn't explicitly model intent or planning
  - Alternative training objectives (e.g., fill-in-middle) address different use cases

## Sources

- [[llm-text-generation-conditional-probability]] — accessible explanation of next-token prediction via conditional probability
- [[an-intuitive-guide-to-how-llms-work]] — probability-first framing of LLM mechanics