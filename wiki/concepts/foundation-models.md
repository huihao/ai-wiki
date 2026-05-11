---
created: 2026-04-29
updated: 2026-05-09
tags: [llm, machine-learning]
sources: 1
---

# Foundation Models

## Definition

Foundation models are large-scale AI models trained on broad, unlabeled data (typically via self-supervised learning on internet-scale text, images, or multimodal data) that can be adapted to a wide range of downstream tasks through fine-tuning, prompt engineering, or in-context learning. They represent a paradigm shift from task-specific ML models to general-purpose AI systems that serve as the "foundation" for diverse applications.

## Key Aspects

- Training foundation models requires massive resources: LLaMA 65B cost approximately $4M, PaLM 540B cost approximately $27M in compute alone, plus data collection and ML expertise
- Only large tech firms (Meta, Google, OpenAI) and well-funded startups can afford to train foundation models from scratch; most businesses should customize pre-trained models instead
- The training pipeline includes: dataset collection (e.g., The Pile for text), data preparation and cleaning, tokenization, training configuration, distributed training across GPU clusters, evaluation, and deployment
- Customization strategies range from lightweight (prompt engineering, few-shot learning) to heavyweight (full fine-tuning, continued pre-training), with Parameter Efficient Fine Tuning (PEFT) offering a middle ground
- Foundation model capabilities scale with model size, training data, and compute — but so do costs, creating a tension between capability and accessibility
- The term was coined by the Stanford Institute for Human-Centered AI (HAI) to emphasize that these models are substrates for many applications, not end products themselves
- Foundation models have sparked debate about whether the "bitter lesson" applies: scale and compute may matter more than architectural innovation, but this creates barriers to entry and concentration of power

## Related Concepts

- [[fine-tuning]]
- [[parameter-efficient-fine-tuning]]
- [[llm-training]]

## Sources

- [[what-it-takes-to-train-foundation-model]]
