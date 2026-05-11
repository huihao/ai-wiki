---
created: 2026-04-28
updated: 2026-05-09
tags: [entity, software, gpu, communication]
sources: 1
---

# NCCL

## Summary
NVIDIA Collective Communications Library (NCCL) — pronounced "nickel" — is NVIDIA's open-source library for implementing collective communication operations (AllReduce, AllGather, ReduceScatter, AllToAll) across multiple GPUs. It is the backbone of multi-GPU and multi-node training for deep learning models, automatically selecting the optimal communication algorithm based on hardware topology (NVLink for intra-node, InfiniBand for inter-node). NCCL is integrated into major deep learning frameworks including PyTorch (via DistributedDataParallel), TensorFlow, and JAX.

## Key Attributes
- **Type**: software library (open-source)
- **Developer**: NVIDIA
- **Notable for**: Enabling efficient multi-GPU training at scale
- **Repository**: https://github.com/NVIDIA/nccl
- **Key operations**: AllReduce, AllGather, ReduceScatter, AllToAll

## Key Features
- **Optimized for NVIDIA hardware**: Automatically selects best algorithms for NVLink vs. InfiniBand topology
- **Collective operations**:
  - AllGather / ReduceScatter — ring or tree algorithms
  - AllReduce — combined RS + AG, or SHARP in-network reductions
  - AllToAll — direct GPU-to-GPU routing
- **Open source**: Available at https://github.com/NVIDIA/nccl

## Performance Characteristics
- **Within node (NVLink)**:
  - AllGather/ReduceScatter cost: ~B / W_gpu (450 GB/s on H100)
  - AllReduce cost: 2x (unless SHARP enabled)
- **Across nodes (InfiniBand)**:
  - Cost: ~B / W_node (400 GB/s node egress on H100 DGX)
  - SHARP can reduce AllReduce cost by ~30% (not theoretical 2x)

## Implementation Strategies
- Ring algorithms — simple, throughput-optimal for large arrays
- Tree algorithms — latency-optimal for small arrays (log(N) hops)
- Hierarchical reductions — combine node-level then scale-out

## Related Entities
- [[nvidia]] — developer of NCCL

## Related Concepts
- [[nvlink]] — intra-node GPU interconnect
- [[infiniband]] — scale-out networking
- [[sharp]] — in-network reduction protocol
- [[data-parallelism]] — AllReduce for gradient synchronization
- [[tensor-parallelism]] — AllGather/ReduceScatter for activations

## Sources
- [[how-to-think-about-gpus]] — overview of GPU communication and NCCL's role in multi-GPU training

## Contradictions / Open Questions
- How NCCL will evolve to support non-NVIDIA interconnects (e.g., UALink) as the GPU landscape diversifies.
- Whether SHARP adoption will grow beyond large-scale training clusters to inference workloads.
