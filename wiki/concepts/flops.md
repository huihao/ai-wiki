---
created: 2026-04-28
updated: 2026-05-09
tags: [compute, deep-learning, performance]
sources: 3
---

# FLOPs

## Definition
FLOPs (Floating Point Operations) is a measure of the total number of floating-point arithmetic operations performed during a computation, commonly used to quantify the computational cost of training and running neural networks. For deep learning, FLOPs typically count multiply-accumulate operations (MACs) in matrix multiplications, convolutions, and attention layers. A single MAC counts as two FLOPs (one multiply and one add). FLOPs are used alongside wall-clock time and memory footprint to evaluate algorithm efficiency, hardware utilization, and scaling behavior of models.

## Key Proponents / Critics
- Samuel McCandlish — co-authored Chinchilla scaling laws which frame compute budgets in FLOPs
- Jared Kaplan — OpenAI scaling laws paper used FLOPs as the primary compute metric
- [[epoch-ai]] — tracks and estimates total training FLOPs for frontier AI models

## Related Concepts
- [[roofline-model]] — relates FLOP/s to memory bandwidth, providing achievable performance bounds
- [[arithmetic-intensity]] — the ratio of FLOPs to bytes transferred, the key x-axis of the roofline model
- [[scaling-laws]] — power-law relationships between FLOPs, dataset size, and model parameters
- [[compute-bound]] — describes workloads where performance is limited by FLOP/s rather than bandwidth
- [[weight-flops]] — the formula relating model parameters to per-step FLOPs (approximately 6 * parameters * tokens for training)
- [[gpu-optimization]] — maximizing FLOP/s utilization is a primary goal of GPU kernel optimization
- [[matrix-multiplication]] — the dominant source of FLOPs in Transformer models

## Related Entities
- [[nvidia]] — publishes peak FLOP/s specifications for all GPU generations (A100, H100, etc.)
- [[epoch-ai]] — maintains a database of estimated training FLOPs for major AI models

## Sources
- [[the-flops-calculus-of-language-model-training]] — derives and explains FLOPs estimates for LLM training
- [[training-extremely-large-neural-networks]] — discusses FLOPs budgets for large-scale training
- [[gpu-glossary]] — defines FLOPs in the context of GPU architecture specifications

## Evolution
- **2017**: Chinchilla-era work establishes FLOPs as the standard metric for comparing training compute
- **2020**: Kaplan et al. (OpenAI) publish scaling laws parameterized by total training FLOPs
- **2022**: Chinchilla (Hoffmann et al.) refines FLOPs-optimal training allocations
- **2023**: Frontier model FLOPs tracking becomes important for AI governance and policy
- **2024**: Epoch AI reports frontier training runs exceeding 10^25 FLOPs
