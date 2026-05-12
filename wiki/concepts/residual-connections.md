---
created: 2026-04-30
updated: 2026-05-09
tags: [architecture, deep-learning]
sources: 6
---

# Residual Connections

## Definition

Residual connections (also called skip connections) are architectural shortcuts in neural networks that add a layer's input directly to its output, bypassing one or more intermediate transformations. Formally, if a sub-layer computes F(x), the output becomes F(x) + x rather than just F(x). Introduced in ResNet (2015) and now a standard component of transformer blocks, residual connections solve the degradation problem where deeper networks paradoxically perform worse during training, enabling the construction and training of networks with hundreds or thousands of layers.

## Key Aspects

- **Gradient flow**: The primary benefit is enabling gradients to flow directly through the identity shortcut during backpropagation, bypassing potentially vanishing gradients in deep transformation stacks. Without residual connections, gradients shrink exponentially with network depth, making training of deep architectures infeasible.
- **Function formulation**: In transformers, every sub-layer (both self-attention and feed-forward network) is wrapped with a residual connection: Output = LayerNorm(x + SubLayer(x)). This pattern appears in both encoder and decoder stacks and is essential for trainability.
- **Enabling deep stacks**: The original Transformer uses 6 encoder and 6 decoder layers; modern models stack 32 to 128+ layers. Residual connections make these deep architectures trainable by ensuring that each layer only needs to learn a residual correction to the identity function, rather than learning the full transformation from scratch.
- **Positional information propagation**: In transformers, residual connections help propagate positional encoding information through the network. Positional signals injected at the input layer can reach deep layers through the additive shortcut, maintaining sequence order awareness throughout the model.
- **Connection to identity mapping**: Residual connections encourage layers to learn deviations from the identity function. If a layer does not need to transform the input, it can easily learn F(x) = 0, making the block a no-op. This inductive bias makes optimization easier and more stable.
- **Pre-LN vs. Post-LN placement**: In modern transformers, layer normalization is typically placed before the sub-layer (Pre-LN), with the residual connection wrapping both: Output = x + SubLayer(LayerNorm(x)). Earlier architectures used Post-LN (norm after the residual addition), which required careful learning rate warmup for stable training.
- **Scale of impact**: Despite their simplicity (a single addition operation), residual connections have outsized impact. They are present in virtually all modern deep learning architectures -- ResNets, Transformers, U-Nets, and diffusion models -- making them one of the most consequential innovations in deep learning.

## Related Concepts

- [[vanishing-gradients]] -- the problem that residual connections solve
- [[gradient-flow]] -- how gradients propagate through network layers
- [[deep-learning]] -- the broader field enabled by deep trainable architectures
- [[layer-normalization]] -- typically paired with residual connections in transformer blocks
- [[residual-streams]] -- the concept of information flowing through residual pathways
- [[resnet]] -- the architecture that introduced residual connections
- [[transformers]] -- the architecture where residual connections are critical

## Sources

- [[everything-about-transformers]] -- residual connections as one of five core transformer mechanisms, preventing vanishing gradients
- [[feed-forward-networks]] -- how residual connections wrap FFN sub-layers in transformer blocks
- [[part3-model-architecture-building-llm-from-scratch-rust]] -- implementing residual connections from scratch in GPT-2 architecture
- [[transformer-architecture-attention-is-all-you-need]] -- residual connections crucial for retaining positional information
- [[transformer-architecture-the-positional-encoding]] -- residual connections helping propagate positional information through layers
- [[transformer-explainer-visually-explained]] -- residual connections as auxiliary feature for gradient flow improvement
- [[how-to-think-about-gpus]] -- practical perspective on residual connections in GPU training
