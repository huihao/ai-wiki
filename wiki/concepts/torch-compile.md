---
created: 2026-04-28
updated: 2026-05-09
tags: [compilation, deep-learning, optimization, pytorch]
sources: 3
---

# torch.compile

## Definition
torch.compile is PyTorch's built-in just-in-time (JIT) compilation feature, introduced in PyTorch 2.0, that automatically captures a model's computation graph via TorchDynamo, optimizes it through a series of graph transformations, and generates optimized kernels through backend compilers (primarily TorchInductor, which uses Triton and C++/CUDA). It provides a drop-in optimization that can deliver 1.5-3x speedups on inference and training workloads without requiring model code changes. By tracing the Python execution and extracting a graph, torch.compile enables operator fusion, memory planning, and hardware-specific kernel generation.

## Key Proponents / Critics
- [[pytorch]] — torch.compile is a core PyTorch 2.0 feature developed by the PyTorch compiler team
- Horace He — key contributor to the PyTorch compiler team and torch.compile development
- Tuo Wu — lead on TorchInductor, the default backend for torch.compile

## Related Concepts
- [[kernel-fusion]] — torch.compile automatically fuses compatible operations into single kernels via Triton
- [[jit-compilation]] — torch.compile is a JIT compilation approach, tracing at runtime
- [[cuda-kernels]] — TorchInductor generates optimized CUDA kernels via Triton
- [[torch-vectorization]] — compiler optimizations including vectorization are performed by the Inductor backend
- [[model-optimization]] — torch.compile is one of the easiest optimization techniques to apply
- [[quantization]] — torch.compile can be combined with quantization for further speedups

## Related Entities
- [[pytorch]] — torch.compile is the flagship optimization feature of PyTorch 2.0
- [[meta-ai]] — PyTorch and torch.compile are developed under Meta's stewardship

## Sources
- [[pytorch-internals]] — covers the architecture of torch.compile and TorchDynamo
- [[the-ultra-scale-playbook]] — discusses torch.compile as part of model optimization strategies
- [[torchserve]] — covers torch.compile integration with model serving

## Evolution
- **2023**: PyTorch 2.0 releases with torch.compile, TorchDynamo, and TorchInductor
- **2023**: torch.compile gains `fullgraph=True` mode for stricter graph capture
- **2023**: Dynamic shapes support added, allowing variable input sizes without recompilation
- **2024**: torch.compile becomes the recommended way to optimize PyTorch models in documentation
- **2024**: Integration with FSDP, DDP, and DTensor for distributed compilation
