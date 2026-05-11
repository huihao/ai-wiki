---
created: 2026-04-28
updated: 2026-05-09
tags: [deep-learning, distributed-training, parallelism]
sources: 2
---

# Tensor Parallelism

## Definition
Tensor parallelism is a model-parallel training strategy that splits individual weight tensors (matrices) across multiple devices, allowing a single layer's computation to be distributed. For example, a linear layer's weight matrix can be column-partitioned or row-partitioned across GPUs, with each device computing a partial result that is then combined via all-reduce. Unlike pipeline parallelism which splits by layers, tensor parallelism operates within a single layer, reducing latency per layer and enabling fine-grained parallelism for very large models.

## Key Proponents / Critics
- [[nvidia]] — Megatron-LM pioneered practical tensor parallelism for Transformer training
- [[meta-ai]] — Used tensor parallelism in training LLaMA models and contributed implementations to PyTorch
- [[microsoft-research]] — DeepSpeed-Megatron integration brings tensor parallelism to the broader ecosystem

## Related Concepts
- [[pipeline-parallelism]] — splits by layers; often combined with tensor parallelism for hybrid parallelism
- [[data-parallelism]] — the third axis in "3D parallelism" alongside tensor and pipeline parallelism
- [[distributed-training]] — tensor parallelism is one of the core strategies for distributed training
- [[communication-bandwidth]] — tensor parallelism requires high-bandwidth interconnects (e.g., NVLink) due to frequent all-reduce within layers
- [[matrix-multiplication]] — tensor parallelism partitions matrix multiplications, the dominant operation in Transformers
- [[synchronization-overhead]] — inter-device communication happens within every layer, not just between training steps

## Related Entities
- Megatron Lm — NVIDIA's framework that first demonstrated practical tensor parallelism
- [[nccl]] — the communication library enabling efficient all-reduce across GPUs
- [[nvlink]] — NVIDIA's high-bandwidth GPU interconnect critical for tensor parallelism performance
- [[pytorch]] — supports tensor parallelism via `torch.distributed.tensor`

## Sources
- [[training-extremely-large-neural-networks]] — covers tensor parallelism as part of 3D parallelism strategies
- [[the-ultra-scale-playbook]] — discusses practical tensor parallelism deployment considerations

## Evolution
- **2019**: Megatron-LM (NVIDIA) introduces column and row tensor parallelism for Transformer models
- **2020**: Megatron-LM v2 combines tensor, pipeline, and data parallelism into "3D parallelism"
- **2021**: Sequence parallelism (a variant of tensor parallelism for non-parallel regions) is introduced in Megatron-LM
- **2022**: DeepSpeed integrates tensor parallelism with ZeRO for broader accessibility
- **2023**: PyTorch adds native `DTensor` (Distributed Tensor) primitives for tensor parallelism
