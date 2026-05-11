---
created: 2026-04-28
updated: 2026-04-28
tags: []
---

# Weight Tying in Transformers

## Overview

Practice of sharing weight matrices across multiple embedding layers in sequence-to-sequence models to reduce parameter count while maintaining performance.

## Three-Matrix Sharing

For typical vocabulary (30k tokens) and embedding size (512), embedding matrices contain ~15.3M parameters each.

Three matrices share the same weights:
1. **Source token embeddings** — Maps source token indices to embeddings
2. **Target token embeddings** — Maps target tokens to embeddings
3. **Decoder pre-softmax layer** — Maps decoder's contextualized embeddings to vocabulary logits

Without tying: 3 × 15.3M = 46M parameters
With tying: 1 × 15.3M = 15.3M parameters

Saves ~31M parameters.

## Implementation

Initialize one embedding layer in main transformer class, used as:
- Encoder embedding layer
- Decoder embedding layer
- Decoder pre-softmax transformation weights

## Rationale

Embedding layer learns to represent tokens in continuous space. Pre-softmax layer learns to map hidden states back to vocabulary probabilities. Tying these creates consistency: tokens similar in embedding space should have similar output logits.

## Benefits

- Reduced model size
- Faster training (fewer parameters to update)
- Better generalization (joint learning across tasks)
- Regularization effect

## Applications

Standard practice in:
- Translation models
- Language models
- Sequence-to-sequence architectures

## Related Concepts

- [[transformer-implementation-details|Transformer Implementation Details]] — Where weight tying is commonly used
- [[parameter-efficiency|Parameter Efficiency]] — Reducing model parameters
- [[embedding-layers|Embedding Layers]] — Token representation learning

## Sources

- [[implementing-a-transformer-from-scratch|Implementing a Transformer From Scratch]]