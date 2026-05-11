---
created: 2026-04-28
updated: 2026-04-28
tags: [architecture, llm, scaling]
sources: 0
---

# Mixture of Experts

## Definition

Mixture of Experts (MoE) is a neural network architecture that scales model capacity without proportionally increasing inference cost by replacing dense feed-forward layers with sparse layers containing multiple "expert" sub-networks. A gating network routes each token to a small subset of experts (typically 1–2). MoE enables models with trillions of total parameters while only activating billions per token, decoupling training capacity from inference latency.

## Key Proponents / Critics

- **Pioneers**: Shazeer et al. (2017, Google) — "Outrageously Large Neural Networks"
- **Modern adopters**: [[deepseek-sparse-attention|DeepSeek]] (DeepSeek-V2/V3), [[mistral-ai]] (Mixtral), [[qwen]] (Qwen-MoE)
- **Infrastructure challenge**: MoE requires expert parallelism and all-to-all communication, complicating distributed training
- **Critics**: Load balancing is difficult; expert collapse (all tokens routed to same experts) is common

## Related Concepts

- [[transformers]] — MoE replaces FFN layers in transformers
- [[model-scaling]] — MoE is a primary scaling strategy beyond dense models
- Expert Parallelism — distributing experts across devices
- [[all-the-transformer-math-you-need-to-know]] — MoE FLOP and memory calculations
- [[how-to-scale-your-model]] — MoE scaling laws and practical considerations

## Sources

- [[all-the-transformer-math-you-need-to-know]] — MoE math and throughput estimates
- [[how-to-scale-your-model]] — sharding and expert parallelism
- [[llm-architecture-gallery]] — compares MoE vs. dense model architectures
- [[inside-vllm|Inside vLLM: Anatomy of a High-Throughput LLM Inference System]] — MoE inference optimization

## Evolution

- **2017**: Original MoE layer proposed for LSTMs
- **2021–2022**: Switch Transformer, GLaM demonstrate MoE at 1T+ parameters
- **2023**: Mixtral 8x7B popularizes open-weight MoE
- **2024**: DeepSeek-V2 introduces MLA + MoE; training costs drop dramatically
- **2025–2026**: MoE becomes standard for frontier models; inference optimizations (expert prefetching, speculative MoE)
