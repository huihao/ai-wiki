---
created: 2026-04-28
updated: 2026-05-12
tags: [nlp]
sources: 4
---

# Causal Attention

## Definition

A masking strategy that ensures each position can only attend to itself and previous positions, essential for autoregressive language modeling. Also called "masked self-attention" or "leftward attention" in transformer decoder architectures. The masking is typically implemented as an upper-triangular matrix of negative infinities added to attention scores, which become zero after softmax, ensuring each token prediction depends only on previously generated tokens.

## Mechanics

**Masking Implementation**:

1. Compute attention scores: `attn_scores = queries @ keys.T`
2. Create upper-triangular mask: `torch.triu(..., diagonal=1)` (1s above diagonal)
3. Replace above-diagonal scores with -infinity: `masked_fill(mask.bool(), -torch.inf)`
4. Apply softmax: -inf becomes 0 probability (e^-inf → 0)

**Alternative (requires renormalization)**:
- Use `torch.tril` (lower triangle) to keep 0s on mask
- Multiply attention weights by mask
- Renormalize rows to sum to 1

**Why -infinity before softmax?** More efficient than masking after softmax + renormalization. Softmax treats -inf as zero probability directly.

## Key Aspects

- **Autoregressive Constraint**: Essential for language modeling — each token must predict the next token based only on past context, never future tokens
- **Position i attends to positions 0 through i** (inclusive); position 0 sees only itself; the last position sees the entire sequence
- **Encoder vs. Decoder**: Encoder self-attention is unmasked (bidirectional — all tokens attend to all others); decoder self-attention is masked (left-to-right only)
- **Cross-Attention**: In encoder-decoder transformers, cross-attention from decoder to encoder is typically unmasked since the full input is available
- **Visualization**: Attention maps show a distinctive lower-triangular pattern when masked, contrasting with the full-square pattern of unmasked attention
- **Gated Attention**: Sigmoid gating after scaled dot-product attention can improve masked attention performance, mitigating attention sink phenomena and enabling long-context extrapolation (NeurIPS 2025)
- **Critical for training efficiency**: Allows parallel computation of all positions during training while maintaining sequential generation semantics at inference

## Related Concepts

- [[self-attention]]
- [[multi-head-attention]]
- [[attention-mechanisms]]
- [[autoregressive-model]]
- [[transformers]]

## Sources

- [[understanding-coding-self-attention-multi-head-causal-cross]] — Sebastian Raschka implements causal masking
- [[the-illustrated-transformer]] — Jay Alammar visualizes masked multi-head attention
- [[everything-about-transformers]] — Transformer mechanisms overview
- [[encoder-decoder-architecture]] — Gated attention for masked attention

## Evolution

- Original transformer (Vaswani et al. 2017): "masked multi-head attention" module in decoder
- Modern LLMs (GPT, Llama): causal attention is default for decoder-only architectures
- **NeurIPS 2025**: Gated attention mechanism improves masked attention performance and long-context extrapolation
