---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Padding

## Definition

Padding is the technique of adding "fake" pixels (typically zeros) around the borders of an input tensor before applying a convolutional operation, enabling the kernel to center on original edge pixels and maintaining the output spatial dimensions.

## Key Aspects

- **Output Size Preservation**: Without padding, each convolution shrinks the output spatial dimensions (edge pixels have fewer neighbors); padding adds border pixels so the kernel can operate on original edge positions, maintaining output size
- **Zero Padding**: The most common strategy, adding zeros around the border; learned or reflective padding variants exist for specific use cases
- **Kernel Centering**: A 3x3 kernel needs a 1-pixel border on all sides to be centered on each original pixel; the padding width is typically (kernel_size - 1) / 2 for "same" convolution
- **Interaction with Striding**: Padding and striding together control output dimensions; strided convolutions with padding can replace pooling layers for learnable downsampling (as in ResNet)
- **Parameter Efficiency Context**: Padding is distinct from parameter reduction but works alongside convolutions' shared-weight design to enable processing of large inputs (224x224x3 images) with manageable parameter counts

## Related Concepts

- [[convolutional-neural-network]] -- The architecture where padding is a core operation
- [[receptive-field]] -- The effective input region visible to each output neuron, influenced by padding choices
- [[striding]] -- Downsampling technique that interacts with padding to control output dimensions
- [[image-kernels]] -- The sliding windows that padding enables to cover edge positions

## Sources

- [[intuitively-understanding-convolutions]]
