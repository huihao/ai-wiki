# Look-ahead Masks

Autoregressive causal masking pattern preventing attention to future tokens, enabling single-pass training instead of sequential word-by-word iteration.

## Purpose

Autoregressive models predict word-by-word:
- Translation: Given "<start>", predict "cómo"; given "cómo", predict "estás"
- Training one word at a time requires S inferences for S-length output
- Look-ahead mask enables feeding entire sequence with causal constraints
- Each position only sees itself and previous positions

## Implementation

Upper triangle of -∞ in QK^T matrix:
```
[aK  -∞   -∞   -∞ ]    Position a attends only to a
[bK  cK   -∞   -∞ ]    Position b attends to a, b
[cK  dK   eK   -∞ ]    Position c attends to a, b, c
[dK  eK   fK   gK ]    Position d attends to all positions
```

After softmax:
- -∞ positions become 0 attention weight
- Each row weighted sum only includes allowed positions
- Position m affected only by positions ≤ m

## Mathematical Pattern

Triangular mask creates causal attention:
- First token (position 0): only sees itself
- Second token: sees positions 0, 1
- Last token: sees all previous tokens

This matches autoregressive generation: at step m, only tokens 0..m-1 exist.

## Training vs Inference

- **Training**: Feed full sequence, mask ensures proper causality in single pass
- **Inference**: Generate word-by-word naturally (mask redundant during generation)

## Related Concepts

- [[self-attention-masks]] — General masking mechanism
- [[padding-masks]] — Different mask pattern for batch processing
- [[autoregressive-models]] — Models predicting sequentially from past context

## Related Sources

- [[how-do-self-attention-masks-work]] — Detailed triangular mask mathematics