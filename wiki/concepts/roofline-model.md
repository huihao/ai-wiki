---
created: 2026-04-28
updated: 2026-05-09
tags: [gpu, hardware, optimization, performance]
sources: 2
---

# Roofline Model

## Definition
The roofline model is a visual performance model that bounds a kernel's achievable FLOP/s (floating-point operations per second) based on its arithmetic intensity and the hardware's peak compute and memory bandwidth capabilities. Arithmetic intensity (FLOPs/byte) is plotted on the x-axis and performance on the y-axis. A diagonal line represents the memory bandwidth ceiling, and a horizontal line represents the peak compute ceiling. Kernels below the diagonal are memory-bound (limited by bandwidth), while those to the right of the intersection point are compute-bound (limited by FLOP/s). This model provides an intuitive framework for understanding whether an algorithm is limited by data movement or computation.

## Key Proponents / Critics
- Samuel Williams — co-author of the original roofline model paper (Williams et al., 2009)
- [[nvidia]] — publishes roofline guidelines for all GPU architectures; Nsight Compute uses roofline analysis
- Horace He — widely cited educator on roofline analysis for deep learning kernels

## Related Concepts
- [[arithmetic-intensity]] — the x-axis metric of the roofline model, measuring FLOPs per byte of memory access
- [[flops]] — the y-axis metric; peak FLOP/s defines the compute ceiling
- [[memory-bandwidth]] — defines the slope of the memory-bound region of the roofline
- [[gpu-memory-hierarchy]] — the hierarchy of SRAM, L2 cache, and HBM determines the effective bandwidth
- [[compute-bound]] — the regime where arithmetic intensity exceeds the hardware's ridge point
- [[memory-bound]] — the regime where arithmetic intensity is below the ridge point
- [[roofline-analysis]] — the practical application of the roofline model to benchmark kernels
- [[cuda-optimization]] — roofline analysis guides optimization decisions in CUDA kernel development

## Related Entities
- [[nvidia]] — Nsight Compute profiler includes built-in roofline visualization
- [[pytorch]] — torch.profiler provides roofline data for PyTorch operations

## Sources
- [[the-flops-calculus-of-language-model-training]] — applies roofline analysis to LLM training cost estimation
- [[gpu-glossary]] — defines roofline model in the context of GPU performance modeling

## Evolution
- **2009**: Williams et al. publish the original roofline model paper at ICS
- **2014**: Extended to multicore CPUs with vectorization considerations
- **2018**: NVIDIA incorporates roofline analysis into Nsight Compute for GPU kernel profiling
- **2021**: Roofline model applied to deep learning accelerator design (TPUs, custom ASICs)
- **2023**: Widely used to explain Flash Attention's memory-bandwidth-optimal design
