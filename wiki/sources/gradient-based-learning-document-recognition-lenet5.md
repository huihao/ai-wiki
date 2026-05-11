---
title: Gradient-Based Learning Applied to Document Recognition (LeNet-5 Paper Reading)
url: https://shichaoxin.com/2020/10/13/%E8%AE%A2%E6%96%87%E9%98%85%E8%AF%BB-Gradient-Based-Learning-Applied-to-Document-Recognition/
author: xinshichao
date: 2020-10-13
tags: [lenet-5, cnn, document-recognition, paper-review, deep-learning-history]
---

# Gradient-Based Learning Applied to Document Recognition (LeNet-5 Paper Reading)

> Source: [Xinshichao's Blog](https://shichaoxin.com/2020/10/13/%E8%AE%A2%E6%96%87%E9%98%85%E8%AF%BB-Gradient-Based-Learning-Applied-to-Document-Recognition/) - Detailed analysis of the landmark LeNet-5 paper.

## Overview

This paper review analyzes "Gradient-Based Learning Applied to Document Recognition" by Yann LeCun et al. (1998), which introduced LeNet-5—a foundational CNN architecture for handwritten digit recognition. The review focuses on Introduction and Section II.B (LeNet-5 architecture details).

## Historical Context

### Traditional Pattern Recognition (Pre-Deep Learning)

Traditional approach分两步:
1. **Feature Extraction**: Hand-designed using大量先验知识 (time-consuming, labor-intensive)
2. **Classifier Training**: Trained on extracted features

**Limitation**: Classifier accuracy heavily dependent on feature quality → Most papers compared feature sets优劣.

### Deep Learning Revolution

**Key Shift**: Multi-layer neural networks eliminate manual feature selection:
- Networks learn features automatically from raw data (or simple preprocessing)
- Direct input of原始数据 to network
- Enabled by increased data volume and ML技术进步

**Application domains**: Speech recognition, handwritten text recognition.

## LeNet-5 Architecture

### Layer Structure

**Input**: $32 \times 32 \times 1$ grayscale image
- Pixels normalized to $[-1, 1.175]$ (mean ≈ 0, variance ≈ 1) for加速学习

**Naming Convention**:
- $C_x$: Convolutional layers
- $S_x$: Subsampling (pooling) layers
- $F_x$: Fully connected layers

**Total**: 7 layers excluding input (5 layers if subsampling不算)

### Layer-by-Layer Details

#### $C_1$ (Convolution)
- **Kernel**: $5 \times 5 \times 1$, 6 kernels, stride 1
- **Output**: $28 \times 28 \times 6$ feature maps
- **Parameters**: $5 \times 5 \times 1 \times 6 + 6 = 156$
- **Connections**: $5 \times 5 \times 28 \times 28 \times 6 + 28 \times 28 \times 6 = 122,304$

#### $S_2$ (Subsampling)
- **Kernel**: $2 \times 2$, stride 2
- **Output**: $14 \times 14 \times 6$ feature maps
- **Operation**: Sum $2 \times 2$ grid → Multiply weight $w$ → Add bias $b$ → Sigmoid activation
- **Parameters**: $6 \times 2 = 12$ (each kernel has $w, b$)
- **Connections**: $14 \times 14 \times 5 \times 6 = 5,880$
- **Note**: Weighted average pooling + sigmoid (not modern max/average pooling)

#### $C_3$ (Convolution with Sparse Connectivity)
- **Kernels**: 16 total
- **Innovation**: Each kernel connects to subset of $S_2$ feature maps:
  - Kernel 0-2: Connect to 3 feature maps ($5 \times 5 \times 3$ kernel)
  - Kernel 3-8: Connect to 4 feature maps ($5 \times 5 \times 4$ kernel)
  - Kernel 9-14: Connect to 3 feature maps ($5 \times 5 \times 3$ kernel)
  - Kernel 15: Connects to all 6 feature maps ($5 \times 5 \times 6$ kernel)

- **Output**: $10 \times 10 \times 16$ feature maps
- **Parameters**:
  $5 \times 5 \times 3 \times 6 + 5 \times 5 \times 4 \times 9 + 5 \times 5 \times 6 \times 1 + 16 = 1,516$

- **Connections**:
  - Convolution: $5 \times 5 \times 3 \times 6 \times 10 \times 10 + 5 \times 5 \times 4 \times 9 \times 10 \times 10 + 5 \times 5 \times 6 \times 1 \times 10 \times 10 = 150,000$
  - Bias: $3 \times 6 \times 10 \times 10 + 4 \times 9 \times 10 \times 10 + 6 \times 1 \times 10 \times 10 = 6,000$
  - Total: 156,000

**Why Sparse Connectivity?**:
- Breaks symmetry
- Forces different feature extraction组合
- Reduces parameters

#### $S_4$ (Subsampling)
- **Kernel**: $2 \times 2 \times 16$, stride 2
- **Output**: $5 \times 5 \times 16$
- **Parameters**: $2 \times 16 = 32$
- **Connections**: $5 \times 5 \times 5 \times 16 = 2,000$

#### $C_5$ (Convolution/Fully Connected Hybrid)
- **Kernels**: 120, size $5 \times 5 \times 16$
- **Output**: $1 \times 1 \times 120$
- **Parameters**: $5 \times 5 \times 16 \times 120 + 120 = 48,120$
- **Note**: Named $C_5$ not $F_5$ because if input增大, output would be $>1 \times 1$ → still convolutional

#### $F_6$ (Fully Connected)
- **Neurons**: 84
- **Parameters**: $84 \times 120 + 84 = 10,164$
- **Activation**: Custom tanh: $f(a) = A \tanh(Sa)$
  - $A = 1.7159$ (amplitude control)
  - $S = 2/3$ (slope at origin)

**Why 84 Neurons?**:
- Standard character bitmap: $7 \times 12$ pixels
- 84 neurons = $7 \times 12$ bitmap representation
- Each neuron: -1 (white) or +1 (black)
- Compare predicted bitmap with 16 × 6 standard character bitmaps
- Closest match determines prediction
- Extends to recognizing all characters, not just digits 0-9

#### OUTPUT Layer (RBF-based)
- **Neurons**: 10 (digits 0-9)
- **Activation**: Radial Basis Function (RBF):
  $y_i = \sum_j (x_j - w_{ij})^2$

- **Weight Matrix**: $84 \times 10$
  - Each row: standard character bitmap
  - 10 rows for digits 0-9

- **Interpretation**: Compare $F_6$'s $7 \times 12 = 84$ pixel bitmap with standard 0-9 bitmaps → Mean squared error per position

### Prediction Flow Example

**Input**: Digit "3"
**Output vector**: 1110111111 (minimum distance to digit 3 bitmap)

## Loss Function

- Mean squared error or cross-entropy loss both acceptable

## Architectural Innovations

### 1. Sparse Connectivity in $C_3$
- Not all feature maps connect to all kernels
- Reduces parameters while maintaining diversity
- Modern equivalent: Group convolution / depth-wise separable convolution precursor

### 2. Weighted Average Pooling
- Modern pooling: max or pure average
- LeNet-5: weighted sum + bias + sigmoid activation
- Learnable pooling parameters

### 3. Custom Tanh Activation
- Hyperparameters control amplitude and slope
- Modern practice: Use default tanh or ReLU variants

### 4. RBF Output Layer
- Distance-based classification
- Modern practice: Softmax for multi-class

### 5. No Padding
- 1998 practice: Valid convolution only
- Modern practice: Padding to preserve spatial dimensions

## Historical Significance

1. **End-to-End Learning**: From raw pixels to classification without manual features
2. **CNN Foundation**: Established convolution + pooling + fully connected pattern
3. **Commercial Application**: Deployed for bank check recognition, ATM reading
4. **Architecture Template**: Influenced AlexNet, VGG, and modern CNNs

## Parameter Efficiency

**Total Parameters**: ~60,000 (very small compared to modern networks)
**Design Philosophy**: Handcrafted efficiency, parameter sharing, sparse connectivity

## Cross-References

- [[Yann LeCun]] - Paper lead author
- [[Convolutional Neural Network]] - Architecture category
- [[Image Classification]] - Task type
- [[Transformer Architecture]] - Modern architecture contrast
- [[Vision Transformer]] - Post-CNN alternative
- [[Deep Learning History]] - Evolution timeline
- [[CNN Architectures]] - LeNet, AlexNet, VGG, ResNet progression

## Related Papers

- "Gradient-Based Learning Applied to Document Recognition" (LeCun et al., 1998)
- AlexNet (2012) - GPU-accelerated deep CNN
- ResNet (2015) - Skip connections for depth

---

*Last updated: 2026-04-28*