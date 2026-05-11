---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, framework, deep-learning]
sources: 0
---

# JAX

## Summary

JAX is a high-performance numerical computing library developed by Google Research that combines NumPy-like syntax with automatic differentiation (autograd), vectorization (vmap), and parallelization (pmap). Built on XLA (Accelerated Linear Algebra), JAX compiles Python functions to optimized GPU/TPU kernels. It has become the framework of choice for large-scale ML research at Google, DeepMind, and increasingly across academia, particularly for training massive language models and diffusion models.

## Key Attributes

- **Developer**: Google Research
- **Type**: Numerical computing / ML framework
- **Key features**: Automatic differentiation, XLA compilation, functional transformations (vmap, pmap, jit)
- **Primary hardware**: TPU (Google's AI accelerator), GPU, CPU
- **Notable users**: Google DeepMind, Google Brain, Anthropic (partial), Stability AI
- **Ecosystem**: Flax (NN library), Optax (optimization), JAX-Triton, Levanter

## Related Entities

- [[google]] — developer and primary user
- [[google|Google DeepMind]] — uses JAX for Gemini, AlphaFold, and research
- [[pytorch-in-one-hour|PyTorch]] — main competitor in research frameworks
- [[nvidia]] — JAX supports CUDA but is more TPU-optimized
- [[tensorflow]] — Google's older framework; JAX is the spiritual successor

## Related Concepts

- [[model-scaling]] — JAX's functional design simplifies large-scale distributed training
- [[cuda]] — JAX can generate CUDA kernels via XLA
- [[transformer-architecture]] — many modern transformer implementations use JAX/Flax
- [[how-to-scale-your-model]] — JAX-focused scaling guide

## Sources

- [[how-to-scale-your-model]] — free book on scaling with JAX
- [[high-perf-llms-2024|HighPerfLLMs2024]] — JAX course for high-performance LLMs
- [[mojo-manual]] — mentions JAX as comparison point for MLIR-based frameworks

## Contradictions / Open Questions

- Will JAX surpass PyTorch in research adoption, or remain a Google/DeepMind specialty?
- JAX's functional purity creates a learning curve; does it limit mainstream adoption?
