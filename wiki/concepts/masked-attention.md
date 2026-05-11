---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 2
---

# Masked Attention

## Definition

Masked attention (also called causal or leftward attention) is a variant of the self-attention mechanism that prevents tokens from attending to future positions in the sequence. In decoder-only models like GPT, this ensures that each token's representation is computed using only preceding tokens, maintaining the autoregressive property required for language modeling -- the model cannot "cheat" by looking ahead during generation.

## Key Aspects

- **Causal Mask**: A triangular matrix applied before the softmax in self-attention; positions with mask=1 are replaced with negative infinity, producing zero attention weight after softmax
- **Autoregressive Constraint**: Essential for language modeling -- each token must predict the next token based only on past context, never future tokens
- **Implementation**: Position i attends to positions 0 through i (inclusive); position 0 sees only itself; the last position sees the entire sequence
- **Softmax Interaction**: Masked positions get -infinity before softmax; exp(-infinity) = 0, so masked tokens contribute nothing to the weighted average
- **Encoder vs. Decoder**: Encoder self-attention is unmasked (bidirectional -- all tokens attend to all others); decoder self-attention is masked (left-to-right only)
- **Cross-Attention**: In encoder-decoder transformers, cross-attention from decoder to encoder is typically unmasked since the full input is available
- **Visualization**: Attention maps show a distinctive lower-triangular pattern when masked, contrasting with the full-square pattern of unmasked attention
- **Key to Generation**: Without masked attention, the model would have access to the token it is supposed to predict, making next-token prediction trivial

## Related Concepts

- [[gpt-2]]
- [[llm-embeddings]]
- [[iterative-text-generation]]

## Sources

- [[transformer-architecture-attention-is-all-you-need]]
- [[transformer-explainer-visually-explained]]
