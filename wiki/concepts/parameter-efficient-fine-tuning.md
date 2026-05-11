---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Parameter-Efficient Fine-Tuning (PEFT)

## Definition

Parameter-efficient fine-tuning is a suite of techniques for adapting large pre-trained foundation models to specific tasks by updating only a small fraction of parameters (typically 0.1-5%), dramatically reducing the compute, memory, and data requirements compared to full model fine-tuning.

## Key Aspects

- **Why PEFT**: Training foundation models from scratch costs millions of dollars (LLaMA 65B ~$4M, PaLM 540B ~$27M); most organizations should adapt pre-trained models rather than train new ones
- **Core Methods**: LoRA (low-rank adaptation of attention layers), adapters (small bottleneck layers inserted between frozen layers), prefix tuning (learnable prompt vectors), and prompt tuning (soft embeddings prepended to input)
- **Frozen Base Weights**: The majority of the pre-trained model remains frozen during training, with only the PEFT modules receiving gradient updates, reducing memory to a fraction of full fine-tuning
- **Task Specialization**: Enables a single large base model to be efficiently specialized for dozens of downstream tasks, each requiring only a small set of task-specific parameters
- **Training Data Efficiency**: PEFT methods often perform well with limited labeled data because the frozen base model provides strong general representations that only need minor task-specific adjustment
- **Deployment Simplicity**: PEFT adapters can be swapped at inference time, enabling multi-task serving from a single base model with task-specific adapter hot-swapping

## Related Concepts

- [[parameter-efficiency]] -- Broader principle of minimizing parameter count
- [[fine-tuning]] -- The general process that PEFT makes efficient
- [[neural-network-training]] -- Training process where PEFT reduces resource requirements
- [[open-source-llm]] -- Open models that PEFT is commonly applied to

## Sources

- [[what-it-takes-to-train-foundation-model]]
