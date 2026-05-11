---
created: 2026-04-29
updated: 2026-05-09
tags: [deep-learning, linear-algebra]
sources: 1
---

# Tensor

## Definition

A tensor is a multi-dimensional array that serves as the fundamental data structure in deep learning frameworks, extending the concepts of scalars (0D), vectors (1D), and matrices (2D) to arbitrary dimensions. In frameworks like PyTorch, tensors support GPU acceleration and automatic differentiation, enabling efficient computation of neural network forward passes and gradient-based training.

## Key Aspects

- **Dimensionality hierarchy**: Scalars (rank 0), vectors (rank 1), matrices (rank 2), and higher-order tensors (rank 3+) form a natural progression, with each rank adding an axis of indexing.
- **Data types**: Tensors have associated dtypes (torch.float32, torch.int64, torch.bfloat16) that determine numeric precision, memory usage, and supported operations. Default types are float32 for floats and int64 for integers.
- **Shape and strides**: A tensor's shape describes its dimensions (e.g., [batch, channels, height, width]), while strides encode how to index into the underlying physical storage — enabling zero-copy views and reshaping operations.
- **GPU acceleration**: Tensors can be moved to GPU devices (.to("cuda")) for massively parallel computation, with operations like matrix multiplication achieving orders-of-magnitude speedup over CPU.
- **Automatic differentiation**: Setting requires_grad=True on tensors enables autograd to track operations and compute gradients automatically via backpropagation, forming the basis of neural network training.
- **Operations**: Standard linear algebra (matmul, einsum, svd), element-wise arithmetic, broadcasting, reduction (sum, mean, max), and reshaping (view, reshape, permute) are all implemented as tensor operations.

## Related Concepts

- [[tensor-storage]]
- [[automatic-differentiation]]
- [[pytorch]]
- [[cuda-architecture]]

## Sources

- [[pytorch-in-one-hour]]
