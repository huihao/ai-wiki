---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool]
sources: 4
---

# QLoRA

## Summary

QLoRA (Quantized Low-Rank Adaptation) is a fine-tuning technique that combines 4-bit quantization with LoRA adapters, enabling efficient fine-tuning of large language models on consumer GPUs with drastically reduced memory requirements.

## Key Attributes

- Combines 4-bit NormalFloat quantization with LoRA adapters
- Enables fine-tuning 65B parameter models on a single 48GB GPU
- Developed by Tim Dettmers et al. at University of Washington
- Supports Paged Optimizers for memory spike management
- Used in instruction fine-tuning and domain adaptation workflows

## Related Entities

- [[tim-dettmers]] — creator of QLoRA

## Related Concepts

- [[model-quantization|Quantization]] — QLoRA's 4-bit quantization component
- [[parameter-efficient-fine-tuning|PEFT]] — QLoRA as a PEFT method

## Sources

- [[continued-pretraining]]
- [[huy]]
- [[instruction-finetuning]]
- [[teaching-llm-niche-diagraming-language]]
