---
created: 2026-04-28
updated: 2026-05-09
tags: []
sources: 1
---

# Residual connection

## Definition

A neural network architecture technique that adds the input of a layer directly to its output (a "skip connection"), enabling training of very deep networks by allowing gradients to flow through identity mappings. Formally: `output = F(x) + x`, where `F(x)` is the learned transformation.

## Key Proponents / Critics

- [[kaiming-he]] — lead author of the ResNet paper ("Deep Residual Learning", 2015) that popularized the technique
- [[yann-lecunc]] — early work on skip connections in Highway Networks (predecessor to ResNets)

## Related Concepts

- [[resnet]] — the architecture that demonstrated residual connections enable training of 152+ layer networks
- [[backpropagation]] — residual connections directly address vanishing gradient problems during backprop
- [[deep-learning]] — residual connections are a foundational technique in modern deep learning
- [[transformers]] — transformers use residual connections around every attention and feed-forward sublayer
- [[self-attention]] — residual connections around self-attention blocks prevent information loss
- [[layer-normalization]] — typically applied before or after residual connections in transformer blocks

## Related Entities

- [[google-deepmind]] — ResNet was developed at Microsoft Research, but residual ideas appeared in earlier work at Google

## Sources

- [[how-to-think-about-gpus]]

## Evolution

Residual connections were introduced in the ResNet paper (He et al., 2015), which won ImageNet 2015. The key insight was that it is easier to learn a residual function `F(x)` than to learn an unpresputed mapping `H(x) = F(x) + x`. This solved the degradation problem where adding more layers to deep networks paradoxically increased training error.

The concept was predated by Highway Networks (Schmidhuber, 2015) which used gating mechanisms on skip connections. Residual connections simplified this to a simple addition.

In transformers (Vaswani et al., 2017), residual connections became standard practice — every attention block and feed-forward block is wrapped in a residual connection followed by layer normalization. This remains the dominant architecture pattern as of 2026, though alternatives like pre-norm vs. post-norm placement continue to evolve.
