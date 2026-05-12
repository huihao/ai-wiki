---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept/method]
sources: 1
---

# Instruction Tuning

## Summary
Instruction tuning is a fine-tuning technique where a language model is trained on a dataset of instruction-input-output triples, teaching it to follow natural language instructions and produce desired outputs. It bridges the gap between pre-training (which learns language patterns) and practical usability (which requires following user intent). Instruction-tuned models like FLAN, Alpaca, and Vicuna demonstrate significantly better zero-shot and few-shot performance on unseen tasks.

## Key Attributes
- **Type**: concept/method
- **Notable for**: making large language models useful as general-purpose assistants that can follow diverse instructions
- **Other facts**: key datasets include FLAN Collection, Self-Instruct, and OpenAssistant; typically applied after pre-training and before or alongside RLHF alignment; instruction tuning improves both task performance and safety alignment; it is a form of supervised fine-tuning (SFT) specifically structured around instruction-following examples

## Related Entities
- [[hugging-face]] -- Hugging Face hosts many instruction-tuned model weights and datasets
- [[databricks]] -- Databricks has released instruction-tuned models like Dolly

## Related Concepts
- [[supervised-fine-tuning]] -- instruction tuning is a specific form of supervised fine-tuning
- [[fine-tuning]] -- the broader practice of adapting pre-trained models to specific tasks
- [[reinforcement-learning-from-human-feedback]] -- reinforcement learning from human feedback, often applied after instruction tuning
- [[alignment]] -- the process of making models follow human intent, of which instruction tuning is one stage
- [[few-shot-learning]] -- instruction tuning improves a model's few-shot capabilities
- [[in-context-learning]] -- instruction-tuned models are better at learning from in-context examples
- [[prompt-engineering]] -- instruction tuning reduces the need for elaborate prompt engineering

## Sources
- [[llms-practical-guide-mooler0410]] -- covers practical approaches to LLM training including instruction tuning

## Contradictions / Open Questions
- Whether instruction tuning teaches genuine instruction-following ability or merely pattern-matches to instruction formats is debated. Research shows instruction-tuned models can struggle with instructions that deviate significantly from their training distribution.
