---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# FLOPs Calculus

## Definition

FLOPs calculus provides mathematical reasoning about the computational requirements for training large language models, using the Transformer FLOPs Equation C ≈ 6ND (where C is compute, N is parameters, D is training tokens) to estimate training costs and time.

## Key Proponents / Critics

- [[dzmitry-bahdanau|Dzmitry Bahdanau]] — Derivation and practical analysis
- [[openai|OpenAI]] — Scaling laws and GPT-3 papers

## Related Concepts

- [[transformer-scaling|Transformer Scaling]] — Application domain
- [[gpu-throughput|GPU Throughput]] — Practical consideration
- [[weight-flops|Weight FLOPs]] — Primary computation
- [[activation-checkpointing|Activation Recomputation]] — Memory technique

## Sources

- [[the-flops-calculus-of-language-model-training|The FLOPs Calculus of Language Model Training]]

## Evolution

Equation ties together compute, model size, and training tokens, enabling back-of-the-envelope calculations. Each weight generates exactly 6 FLOPs per example (forward + backward pass). With checkpointing, compute increases to ≈ 8ND. Key insight: theoretical peak throughput not achievable—realistic throughput is 50-150 teraWFLOP/s per A100 vs theoretical 312. Memory bandwidth bottlenecks elementwise operations.

## Practical Implications

Training time grows linearly with model size given constant throughput. To double model size, must either double GPUs or double time. Equation enables cost estimation: HyperCLOVA (82B params, 150B tokens) required 13.4 days on 1024 A100s. WFLOPs throughput more meaningful than total FLOPs. For MoE models, equation adjusts to use active weights rather than total parameters. Enables quick reasoning about training feasibility and budget.