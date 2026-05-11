---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, hardware, google]
sources: 0
---

# TPU

## Summary
TPU (Tensor Processing Unit) is a custom-designed application-specific integrated circuit (ASIC) developed by Google for accelerating neural network computations. TPUs are optimized for matrix multiplication and convolutions — the core operations of deep learning — and power Google's largest AI training and inference workloads, including Gemini, AlphaFold, and Google Search.

## Key Attributes

- **Developer**: [[google]]
- **Type**: AI accelerator ASIC
- **Generations**: TPU v1 (2016, inference-only), v2/v3 (training + inference), v4, v5e, v5p, Trillium (v6)
- **Key feature**: Massive systolic array for matrix multiply units (MXU)
- **Software stack**: JAX, TensorFlow, XLA
- **Scale**: TPU pods connect thousands of chips with high-speed interconnects

## Related Entities

- [[google]] — developer and primary operator
- [[google|Google DeepMind]] — trains Gemini and AlphaFold on TPUs
- [[nvidia]] — competitor with GPUs; CUDA vs. XLA ecosystem competition
- [[jax]] — Google's ML framework optimized for TPUs

## Related Concepts

- [[model-scaling]] — TPU pods enable some of the largest training runs in history
- [[jax]] — primary framework for TPU programming
- [[how-to-scale-your-model]] — covers TPU architecture and scaling
- [[self-attention|Flash Attention]] — kernel optimizations also relevant for TPU attention

## Sources

- [[how-to-scale-your-model]] — TPU architecture and parallelism strategies
- [[high-perf-llms-2024|HighPerfLLMs2024]] — JAX/TPU course for high-performance LLMs
- [[how-to-think-about-gpus]] — compares GPUs to TPUs

## Evolution

- **2016**: TPU v1 announced; inference-only, used for Google Search
- **2017–2018**: TPU v2/v3 enable large-scale training; Cloud TPU launched
- **2021**: TPU v4 doubles performance; used for PaLM and LaMDA
- **2023–2024**: TPU v5e and v5p; Gemini trained on massive TPU pods
- **2025–2026**: Trillium (v6) and competitive pressure from NVIDIA Blackwell
