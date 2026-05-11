---
created: 2026-04-29
updated: 2026-05-09
tags: [llm, sequence-modeling]
sources: 2
---

# Sequential Prediction

## Definition

Sequential prediction is the task of predicting the next element in a sequence given the preceding elements, forming the foundational mechanism of autoregressive language models. The model learns conditional probability distributions over sequences and generates output token by token, where each prediction depends on all previously generated tokens.

## Key Aspects

- Autoregressive models generate text one token at a time, conditioning each prediction on the entire prior context
- The model learns P(x_t | x_1, x_2, ..., x_{t-1}) -- the conditional distribution of the next token given all previous tokens
- Online learning extends this by continuously updating the model with new data as it arrives
- The sequential nature creates compounding errors: an early unlikely prediction shifts all subsequent distributions
- Context windows limit how much history the model can condition on, requiring truncation strategies
- Transformer self-attention processes all positions simultaneously during training but still generates sequentially at inference
- Teacher forcing trains by providing ground-truth previous tokens; inference must use own predictions
- Beam search and sampling strategies control the quality-diversity trade-off during sequential generation

## Related Concepts

- [[autoregressive-models]]
- [[next-token-prediction]]
- [[probability-distributions]]
- [[online-learning]]
- [[context-window]]

## Sources

- [[autoregressive-models]]
- [[online-learning]]
