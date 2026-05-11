---
created: 2026-04-28
updated: 2026-05-09
tags: [entity, gpu, networking]
sources: 1
---

# SHARP

## Summary

Scalable Hierarchical Aggregation and Reduction Protocol — NVIDIA's in-network reduction technology that allows NVLink and InfiniBand switches to perform reduction operations directly, reducing GPU egress requirements.

## Key Attributes

- **Mechanism**: Network switch performs reduction (e.g., AllReduce) and broadcasts result; each GPU only egresses once instead of twice
- **Performance**: ~30% bandwidth improvement in practice (theoretically 2x)
- **Requirement**: SHARP-enabled NVIDIA switches (not all providers have them)
- **Algorithm**: Each GPU sends B × (N-1)/N bytes to switch → switch reduces across all GPUs → switch broadcasts reduced result → total ingress/egress per GPU: exactly B bytes (vs. 2B without SHARP)
- **Usefulness**: Less impactful for LLM workloads where pure AllReduces are rare; most common in gradient AllReduce in data parallelism; less useful for mixed parallelism (TP/EP have other collectives)

## Related Entities

- [[nvidia]] — developer of SHARP technology

## Related Concepts

- [[nccl]] — library that can enable SHARP
- [[nvlink]] — switches can support SHARP
- [[infiniband]] — IB switches with SHARP support
- [[data-parallelism]] — primary use case

## Sources

- [[how-to-think-about-gpus]]

## Contradictions / Open Questions

- None identified
