---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Compute Resources

## Definition

Compute resources refers to the GPU/TPU infrastructure, storage, and networking required to train and serve foundation models. Training large language models demands massive parallel compute (hundreds to thousands of GPUs), enormous datasets, and specialized expertise — costs that put foundation model training out of reach for all but the largest organizations.

## Key Aspects

- **Massive Scale**: LLaMA 65B cost ~$4M to train; PaLM 540B cost ~$27M
- **GPU Infrastructure**: NVIDIA GPUs (A100, H100) are the standard for LLM training
- **Distributed Training**: Requires data parallelism, tensor parallelism, and pipeline parallelism across hundreds of GPUs
- **High Bandwidth Interconnect**: NVLink (300GB/s) between GPUs is critical for tensor parallelism efficiency
- **Specialized Expertise**: Only large tech firms and well-funded startups can train from scratch
- **Recommendation for Most**: Use PEFT (Parameter Efficient Fine Tuning) to adapt pre-trained models rather than training from scratch
- **Training Steps**: Dataset collection → preparation → tokenization → training configuration → training → evaluation → deployment

## Related Concepts

- [[what-it-takes-to-train-foundation-model]]
- [[compute-bound]]
- [[communication-bandwidth]]
- [[foundation-model]]

## Sources

- [[what-it-takes-to-train-foundation-model]]
