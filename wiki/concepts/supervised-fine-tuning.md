---
created: 2026-04-28
updated: 2026-05-09
tags: [fine-tuning, llm, training]
sources: 0
---

# Supervised Fine-Tuning

## Definition

Supervised Fine-Tuning (SFT) is the process of further training a pretrained language model on labeled, task-specific data to adapt it to particular downstream applications. The pretrained model is updated using standard supervised learning (typically cross-entropy loss) on pairs of inputs and desired outputs. SFT is a critical step in the LLM training pipeline: it bridges the gap between a general-purpose pretrained model and a model that follows instructions or performs a specific task well. It is typically the first stage before alignment techniques like RLHF or DPO are applied.

## Key Proponents / Critics

- [[sebastian-raschka]] — author of widely-used educational content on fine-tuning techniques
- [[anthropic]] — uses supervised fine-tuning as a foundational step in Claude's training pipeline
- [[openai]] — InstructGPT established SFT as the critical first stage of the alignment pipeline

## Related Concepts

- [[fine-tuning]] — the general process of adapting pretrained models to downstream tasks
- [[instruction-finetuning]] — SFT specifically using instruction-response pairs to teach the model to follow instructions
- [[reinforcement-learning-from-human-feedback]] — the alignment stage that follows SFT in the full training pipeline
- [[dpo]] — can be applied after SFT for further preference alignment
- [[lora]] — parameter-efficient fine-tuning technique that reduces the cost of SFT
- [[transfer-learning]] — SFT is a specific application of transfer learning to language models
- [[continued-pretraining]] — a related technique that continues pretraining on domain-specific data before SFT
- [[llm-training]] — SFT is one of the key stages in the LLM training pipeline

## Related Entities

- [[openai]] — demonstrated the importance of SFT in the InstructGPT pipeline
- [[anthropic]] — applies SFT as part of Claude's training process
- [[sebastian-raschka]] — widely recognized for fine-tuning educational resources

## Sources

- No source pages currently link to this concept

## Evolution

- **2018**: ULMFiT (Howard and Ruder) popularizes fine-tuning pretrained language models for downstream NLP tasks
- **2020**: GPT-3 shows that in-context learning can reduce the need for fine-tuning, but SFT remains essential for alignment
- **2022**: InstructGPT establishes SFT as the critical first stage of the RLHF alignment pipeline
- **2023**: LoRA, QLoRA, and other parameter-efficient methods make SFT accessible on consumer hardware
- **2025**: SFT remains a core component of the standard LLM post-training pipeline across the industry
