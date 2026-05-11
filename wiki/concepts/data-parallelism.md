---
created: 2026-04-28
updated: 2026-05-09
tags: [deep-learning, distributed-training, parallelism]
sources: 2
---

# Data Parallelism

## Definition
Data parallelism is a distributed training strategy in which the full model is replicated onto every device (GPU), and each device processes a different mini-batch of data independently. After the forward and backward passes, gradients from all devices are aggregated (typically via all-reduce) and used to update the model parameters identically on each device. It is the simplest and most widely used form of parallelism, scaling naturally when the model fits in a single device's memory but training is bottlenecked by data throughput.

## Key Proponents / Critics
- [[microsoft-research]] — developed DeepSpeed, which extends data parallelism with ZeRO memory optimization stages
- [[meta-ai]] — PyTorch's DistributedDataParallel (DDP) is the canonical implementation
- [[nccl]] — NVIDIA Collective Communications Library underpins efficient gradient synchronization for data parallelism

## Related Concepts
- [[distributed-training]] — the broader paradigm within which data parallelism operates
- [[pipeline-parallelism]] — alternative strategy that partitions the model by layers rather than data
- [[tensor-parallelism]] — splits individual weight tensors across devices, complementary to data parallelism
- [[gradient-accumulation]] — simulates larger batches when memory is limited, often combined with data parallelism
- [[gradient-descent]] — the optimization algorithm whose gradient aggregation step is central to data parallelism
- [[synchronization-overhead]] — the communication cost that grows with the number of data-parallel devices
- [[batch-size]] — directly related, as data parallelism increases the effective global batch size

## Related Entities
- [[pytorch]] — provides DDP and FSDP (Fully Sharded Data Parallel) implementations
- [[deepspeed]] — Microsoft's library extending data parallelism with ZeRO optimizer states
- [[nccl]] — high-performance collective communication library used for all-reduce operations

## Sources
- [[training-extremely-large-neural-networks]] — discusses data parallelism as the foundation of large-scale training
- [[the-ultra-scale-playbook]] — covers practical deployment of data parallelism at scale

## Evolution
- **2012**: Data parallelism used informally in AlexNet training across two GPUs
- **2017**: Horovod (Uber) popularizes efficient data parallelism with ring-allreduce
- **2019**: PyTorch introduces DistributedDataParallel (DDP) as the standard approach
- **2020**: ZeRO (DeepSpeed) decouples optimizer state, gradient, and parameter sharding from pure data parallelism
- **2023**: PyTorch FSDP (Fully Sharded Data Parallel) merges ideas from ZeRO-3 into the core framework
