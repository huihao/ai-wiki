# Self-Attention Masks

Mechanism in transformer architecture preventing unwanted token interactions during attention computation, implemented by applying -∞ to specific attention matrix positions before softmax.

## Types

### Padding Masks
- Prevent <PAD> tokens from affecting other tokens in batched sequences
- Apply -∞ to key columns (not query rows) corresponding to pad positions
- After softmax: pad columns become 0, removing influence on other tokens
- Pad tokens retain identity (not completely zeroed) to maintain position awareness

### Look-ahead Masks
- Enable autoregressive training by blocking future token visibility
- Upper triangle of -∞ creates causal attention pattern
- Position m only attends to positions ≤ m
- Allows single-pass training instead of word-by-word iteration

## Why Masks Persist Across Layers

Self-attention transforms sequences while maintaining token positions. If token D is a pad token in layer 1, output D^A remains a pad token (just transformed). Subsequent layers need masks to continue preventing unwanted influence.

## Implementation

Applied to QK^T matrix before softmax:
```
Attention(Q, K, V) = softmax(QK^T + M) × V
```

where M contains -∞ at masked positions and 0 elsewhere.

## Mathematical Foundation

- Softmax converts -∞ → 0 (no attention weight)
- Unmasked positions maintain relative attention weights
- Rows represent query positions, columns represent key positions
- Mask columns → prevent certain tokens from being attended to

## Related Concepts

- [[scaled-dot-product-attention]] — Core attention computation masks modify
- [[padding-masks]] — Masking for batch processing variable-length sequences
- [[look-ahead-masks]] — Autoregressive causal masking

## Related Sources

- [[how-do-self-attention-masks-work]] — Detailed matrix mathematics explanation

## Related Entities

- [[gabriel-mongaras]] — ML engineer explaining mask mechanics