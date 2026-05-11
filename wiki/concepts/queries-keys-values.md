---
created: 2026-04-29
updated: 2026-04-29
tags: [attention, deep-learning, transformer]
sources: 1
---
# Queries, Keys, Values

## Definition

Queries, Keys, and Values (Q, K, V) are the three linearly projected representations used in the self-attention mechanism of Transformers. Each input embedding is projected into three different representations that serve distinct roles in computing attention-weighted outputs.

## Key Concepts

- Queries (Q) represent what information a token is looking for from other tokens
- Keys (K) represent what information a token can provide to other tokens
- Values (V) represent the actual content that will be aggregated based on attention weights
- Attention scores are computed as dot product of queries and keys: scores = QK^T / sqrt(d_k)
- The softmax of attention scores determines the weight each value contributes to the output
- The linear projections allow each token to specialize: the same embedding serves different roles
- Multi-head attention uses multiple sets of Q, K, V projections, allowing the model to attend to different aspects
- The dimensionality of Q, K, V is typically d_model / num_heads per head
- Positional information must be added to Q and K (or the input) since attention itself is permutation-invariant

## Related Concepts

- [[linear-algebra]]
- [[eigendecomposition]]

## Sources

- [[transformers-from-scratch]]
- [[attention-is-all-you-need-discovery]]
