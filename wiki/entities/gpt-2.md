---
created: 2026-04-29
updated: 2026-05-09
tags: [entity]
sources: 2
---

# GPT-2

## Summary
GPT-2 (Generative Pre-trained Transformer 2) is a decoder-only transformer language model developed by OpenAI in 2019, consisting of 1.5 billion parameters. It generates text by predicting the next token given preceding context, using a stack of transformer blocks with multi-head self-attention, layer normalization, residual connections, and feedforward MLP layers. GPT-2 processes sequences up to 1,024 tokens and produces probability distributions over a vocabulary of 50,257 tokens.

## Key Aspects

- Uses 768-dimensional embeddings with 12 attention heads and 12 transformer blocks in its "small" variant (124M parameters); the full model has 1.5B parameters
- Each transformer block combines causal masked self-attention (preventing lookahead) with a 4x-expansion MLP using GELU activation, connected via residual connections
- Embeddings are 768-dimensional vectors where tokens in similar contexts cluster together in vector space
- Position embeddings (learned, not sinusoidal) encode token order since transformers process all tokens in parallel
- Layer normalization stabilizes training by normalizing activations before attention and MLP sub-layers
- Text generation is autoregressive: each new token is sampled from the model's predicted distribution and appended to the context
- Replaced recurrent neural networks for language modeling by enabling parallel processing of all tokens simultaneously
- Introduced publicly as both a language model and a text generation tool, initially with concerns about misuse

## Related Concepts

- [[llm-foundations]]
- [[loss-function]]
- [[iterative-text-generation]]
- [[intermediate-activations]]

## Sources

- [[part3-model-architecture-building-llm-from-scratch-rust]]
- [[what-is-chatgpt-doing-and-why-does-it-work]]
