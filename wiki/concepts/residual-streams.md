---
created: 2026-04-28
updated: 2026-04-28
tags: []
---

# Residual Streams in Transformers

## Overview

Conceptual framework viewing transformer information flow as multiple vertical "residual streams" running across layers, similar to LSTM's horizontal memory stream across time.

## Architecture Pattern

### Vertical Flow

Unlike LSTMs with left-to-right horizontal memory stream across tokens, transformers maintain vertical streams across:
- Layers (e.g., stacked encoders)
- Sub-layers (multi-head attention, fully connected layers)

### Residual Connections

Each sub-layer adds information to the residual stream via residual connections:

```python
output = sub_layer(input) + input  # Add to stream
```

### Dimensionality Constraint

All intermediate token representations must have same dimensionality throughout layers because residual connections add vectors.

Output shape must match input shape for stacking layers.

## Analogy to LSTM

LSTM regulates information flow with gates, maintaining horizontal stream across tokens while processing new tokens one-by-one.

Transformer regulates information flow vertically across layers, adding information through residual connections.

## Benefits

- Preserves information across deep layers
- Enables gradient flow through many layers
- Creates interpretable "streams" of information
- Allows layer-wise analysis

## Research Applications

Understanding residual streams enables:
- Layer-wise probing of representations
- Analyzing how information accumulates
- Exploiting "vertical recurrence"
- Circuit-level analysis of transformers

## References

- Transformer Circuits blogpost discusses residual streams in detail
- Papers exploit notion of "vertical recurrence" in transformer analysis

## Related Concepts

- [[transformer-implementation-details|Transformer Implementation Details]] — Overall architecture understanding
- [[layer-norm|Layer Normalization]] — Applied before residual addition
- [[gradient-flow|Gradient Flow]] — Residual connections improve training

## Sources

- [[implementing-a-transformer-from-scratch|Implementing a Transformer From Scratch]]