---
created: 2026-04-29
updated: 2026-05-08
tags: [fundamentals, mathematics]
---

# Matrix Multiplication

## Definition

Matrix multiplication is a fundamental operation in linear algebra and the core computation in neural networks. In deep learning, each layer of a neural network essentially performs a matrix multiplication (weights multiplied by inputs) followed by an activation function. Matrix multiplications make up 80–90% of compute in Transformers and 70–80% in CNNs.

## How It Works

For matrices A (m × n) and B (n × p), the product C = A × B is an (m × p) matrix where:
```
C[i][j] = Σ(k=0 to n-1) A[i][k] × B[k][j]
```
Complexity: O(m × n × p) — cubic in the common square case.

## Why It Dominates Deep Learning

- **Linear layers**: `output = input × weights^T + bias`
- **Attention**: `attention = softmax(Q × K^T / √d) × V`
- **Convolution**: Im2col transforms convolutions into matrix multiplications
- **Batch processing**: Multiple inputs multiplied simultaneously via batched matmul

## Hardware Acceleration

### GPUs (CUDA Cores / Tensor Cores)
- NVIDIA Tensor Cores: fused multiply-add on 4×4 or larger matrix tiles
- cuBLAS / cuDNN libraries handle matmul scheduling automatically

### TPUs (Systolic Arrays)
- [[systolic-array|Systolic arrays]]: data flows through a fixed grid of processing elements
- Each PE performs a multiply-accumulate per clock cycle
- Designed specifically for matrix multiplication throughput
- TPU v4: ~275 TFLOPS BF16 per chip

### CPU (BLAS Libraries)
- MKL, OpenBLAS, ARM Compute Library
- SIMD vectorization (AVX-2, AVX-512, NEON)
- Much slower than GPU/TPU for large matrices

## Related Concepts

- [[systolic-array|Systolic Array]] — hardware architecture optimized for matmul
- [[linear-algebra|Linear Algebra]] — mathematical foundation
- [[pipelining|Pipelining]] — hardware optimization for overlapping matmul stages
- [[transformers|Transformer Architecture]] — attention is fundamentally matmul
- [[optimization|Optimization]] — gradient computation relies on matmul

## Sources

- [[how-to-multiply-matrices]]
- [[077_tiny-tpu|Tiny TPU]]
- [[tiny-tpu-the-why-and-how]]

## Evolution

- **Classical**: O(n³) matrix multiplication; Strassen (1969) reduced to ~O(n^2.81)
- **Modern theory**: Coppersmith–Winograd and variants approach O(n^2.37); not practical at current sizes
- **Practical hardware**: Focus shifted from algorithmic speedups to hardware acceleration (GPUs, TPUs, systolic arrays)
- **Current**: Training large models is bottlenecked almost entirely by matmul throughput; hardware roadmap (TPU v5, NVIDIA Blackwell) is driven by matmul FLOPS per watt
