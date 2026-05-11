---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# The FLOPs Calculus of Language Model Training

## Metadata

- **Author**: Dzmitry Bahdanau
- **Date**: 2022-01-09
- **URL**: https://medium.com/@dzmitrybahdanau/the-flops-calculus-of-language-model-training-3b19c1f025e4
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/The FLOPs Calculus of Language Model Training.md

## Summary

A practical guide to reasoning about the compute requirements for training large Transformer language models using the Transformer FLOPs Equation: C ≈ 6ND, where C is compute, N is model size (parameters), and D is training tokens. The article derives this equation and provides realistic throughput estimates.

## Key Takeaways

- Transformer FLOPs Equation: C ≈ 6ND ties together compute, model size, and training tokens
- With checkpointing (activation recomputation), compute increases to ≈ 8ND
- Each weight generates exactly 6 FLOPs per example in forward + backward pass
- Training time grows linearly with model size given constant throughput
- Weight FLOPs dominate attention FLOPs in large models (O(d²) vs O(dL))
- Realistic throughput: 50-150 teraWFLOP/s per A100 GPU (not theoretical peak of 312)
- Memory bandwidth bottlenecks elementwise operations (activations, layer norm)
- Mixed precision training reduces throughput due to float32 → bfloat16 conversion
- Example: HyperCLOVA (82B params, 150B tokens) took 13.4 days on 1024 A100s

## Entities Mentioned

- [[dzmitry-bahdanau|Dzmitry Bahdanau]] — Author, researcher at ServiceNow Research
- [[openai|OpenAI]] — Creator of GPT-3
- [[nvidia|NVIDIA]] — GPU manufacturer (A100 specs, Megatron-LM)
- [[google|Google]] — MoE model research
- [[meta|Meta]] — MoE model research
- [[servicenow-research|ServiceNow Research]] — Author's affiliation

## Concepts Mentioned

- [[flops-calculus|FLOPs Calculus]] — Computational reasoning for model training
- [[transformer-scaling|Transformer Scaling]] — Compute requirements scaling with model size
- [[gpu-throughput|GPU Throughput]] — Actual vs theoretical FLOPs performance
- [[weight-flops|Weight FLOPs]] — Primary computational cost in Transformers
- [[activation-recomputation|Activation Recomputation]] — Checkpointing technique reducing memory
- [[mixed-precision-training|Mixed Precision Training]] — Training optimization technique

## Raw Notes

The equation enables back-of-the-envelope calculations for training costs and time. Critical insight: theoretical peak throughput is not achievable in practice due to distributed training overheads, memory bandwidth limitations, and non-matrix operations. WFLOPs throughput is more meaningful than total FLOPs. For MoE models, equation adjusts to use active weights rather than total model size.

## Questions / Follow-ups

- How do newer GPUs (RTX 5090, H100) compare in actual WFLOPs throughput?
- What optimizations maximize practical throughput?
- How does this calculus apply to inference vs training?
- What are the cost implications for different model architectures?