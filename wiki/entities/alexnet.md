---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# AlexNet

## Summary

AlexNet is a landmark convolutional neural network architecture that demonstrated the power of deep learning for image recognition, building upon the foundational work of LeNet-5. While LeNet-5 (by Yann LeCun et al., 1998) pioneered the CNN architecture for handwritten digit recognition with its alternating convolutional and subsampling layers, AlexNet scaled these principles to much larger datasets and deeper networks, catalyzing the modern deep learning revolution.

## Key Aspects

- LeNet-5 introduced the core CNN pattern: convolution layers (C) for feature extraction, subsampling/pooling (S) for downsizing, and fully connected layers (F) for classification
- LeNet-5's architecture processed 32x32 grayscale images through 7 layers with only ~60,000 parameters
- Sparse connectivity in convolution layers (e.g., LeNet-5's C3 layer) reduces parameters while maintaining representational power
- The key shift from traditional pattern recognition: networks learn features automatically from raw data rather than relying on hand-designed feature extraction
- Modern CNNs use strided convolutions instead of pooling for downsizing (as in ResNet)
- Feature visualization confirms that deep networks build hierarchical representations: edges, textures, parts, complete objects

## Related Concepts

- [[activation-atlases]]
- [[adversarial-attacks]]
- [[activation-checkpointing]]

## Sources

- [[lenet-5]]
