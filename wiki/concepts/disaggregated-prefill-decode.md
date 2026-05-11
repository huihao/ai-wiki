---
created: 2026-04-28
updated: 2026-05-09
tags: [architecture, inference, llm, optimization]
sources: 2
---

# Disaggregated Prefill/Decode

## Definition
Disaggregated prefill/decode is an LLM serving architecture that separates the two phases of autoregressive generation onto different hardware: the compute-intensive prefill phase (processing the full prompt into KV states) runs on one set of GPUs, while the memory-bandwidth-bound decode phase (generating tokens one at a time) runs on another. This disaggregation allows each phase to be independently scaled and optimized — prefill GPUs can be high-compute devices, while decode GPUs can prioritize memory capacity and bandwidth. It eliminates the interference between the two phases when colocated on the same device, improving both throughput and latency.

## Key Proponents / Critics
- Splitwise (Microsoft/ETH Zurich) — proposed the prefill-decode disaggregation approach
- DistServe — demonstrated disaggregated serving for LLMs with separate prefill/decode clusters
- [[deepseek]] — DeepSeek's infrastructure employs prefill-decode disaggregation for production serving

## Related Concepts
- [[continuous-batching]] — disaggregated serving extends continuous batching by separating the two phases
- [[chunked-prefill]] — an alternative that interleaves prefill and decode on the same device in chunks
- [[kv-cache]] — KV states computed during prefill must be transferred to decode GPUs
- [[prefix-caching]] — complements disaggregation by caching KV states for shared prefixes
- [[inference-optimization]] — disaggregation is a systems-level inference optimization
- [[memory-bandwidth]] — the decode phase is memory-bandwidth-bound, motivating separate hardware
- [[decode-optimization]] — decode-specific optimizations can be applied independently on decode GPUs

## Related Entities
- [[vllm]] — supports prefill-decode disaggregation via its distributed serving architecture
- Sglang — implements disaggregated prefill and decode with its PD (Prefill-Decode) architecture

## Sources
- [[the-state-of-llm-reasoning-model-inference]] — discusses disaggregated serving as a key inference architecture
- [[inside-vllm]] — covers vLLM's support for prefill-decode disaggregation

## Evolution
- **2023**: Splitwise (Patel et al.) proposes separating prefill and decode for LLM serving
- **2024**: DistServe (Zhong et al.) demonstrates disaggregated serving with profiled GPU assignment
- **2024**: Mooncake (Moonshot AI) uses disaggregated architecture with KV cache-centric memory pooling
- **2024**: DeepSeek V3 production deployment uses disaggregated prefill-decode at scale
- **2025**: SGLang and vLLM add first-class support for disaggregated prefill-decode serving
