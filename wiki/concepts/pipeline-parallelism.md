---
created: 2026-04-28
updated: 2026-05-09
tags: [deep-learning, distributed-training, parallelism]
sources: 2
---

# Pipeline Parallelism

## Definition
Pipeline parallelism is a model-parallel training strategy that partitions a neural network's layers into sequential stages, assigning each stage to a different device. Micro-batches are pipelined through these stages so that while one micro-batch is being processed on a later stage, earlier stages can work on subsequent micro-batches. This overlaps computation across devices and increases hardware utilization, though it introduces "pipeline bubbles" where devices sit idle waiting for the first or last micro-batch to traverse the pipeline.

## Key Proponents / Critics
- [[google-research]] — GPipe (2018) introduced pipeline parallelism with synchronous gradient updates across stages
- [[microsoft-research]] — PipeDream and 1F1B schedule improved pipeline efficiency by reducing memory and bubble overhead
- [[meta-ai]] — Implemented pipeline parallelism in PyTorch's PipelineParallel API and used it in training LLaMA models

## Related Concepts
- [[data-parallelism]] — typically combined with pipeline parallelism in hybrid parallelism schemes
- [[tensor-parallelism]] — splits individual tensors horizontally, often paired with pipeline parallelism for 3D parallelism
- [[distributed-training]] — the overarching paradigm pipeline parallelism belongs to
- Micro Batching — the technique of splitting a batch into micro-batches to fill the pipeline and reduce bubbles
- [[activation-checkpointing]] — reduces memory per stage, enabling deeper models on fewer devices
- [[communication-bandwidth]] — inter-stage communication cost depends heavily on the chosen partition boundaries
- [[model-parallelism]] — the general class of strategies pipeline parallelism falls under

## Related Entities
- [[pytorch]] — provides `torch.distributed.pipelining` APIs for pipeline parallelism
- [[deepspeed]] — includes pipeline parallelism stages in its ZeRO-based training framework
- Megatron Lm — NVIDIA's framework that combines tensor, pipeline, and data parallelism

## Sources
- [[training-extremely-large-neural-networks]] — covers pipeline parallelism as part of large-scale training strategies
- [[how-to-scale-neural-networks]] — discusses pipeline parallelism in the context of scaling laws

## Evolution
- **2018**: GPipe (Huang et al., Google) introduces synchronous pipeline parallelism with micro-batches
- **2019**: PipeDream (Microsoft) proposes asynchronous pipeline parallelism with 1F1B scheduling
- **2020**: PipeDream-2BW reduces memory footprint by allowing stale weight updates
- **2021**: Megatron-LM v2 combines pipeline, tensor, and data parallelism ("3D parallelism")
- **2023**: PyTorch introduces stable pipeline parallelism APIs; used in training LLaMA 2 at Meta
