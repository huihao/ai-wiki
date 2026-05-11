---
created: 2026-04-28
updated: 2026-04-28
tags: [machine-learning, training]
sources: 0
---

# Transfer Learning

## Definition

Transfer learning is a machine learning technique where a model developed for one task is reused as the starting point for a model on a different but related task. In deep learning and NLP, this typically means pre-training a large model on broad data (e.g., internet text) and then fine-tuning on a specific downstream task. Transfer learning is the foundational paradigm behind modern LLMs, computer vision backbones, and speech recognition.

## Key Proponents / Critics

- **Pioneers**: Yosinski et al. (2014, deep learning transferability); Howard & Ruder (2018, ULMFiT for NLP)
- **Modern standard**: Pre-train → fine-tune is the default pipeline for NLP and vision
- **Alternatives**: [[in-context-learning]] and [[comprehensive-rag-ollama-langchain|RAG]] reduce the need for task-specific fine-tuning
- [[nbdev-fastai|fast.ai]] — champions practical transfer learning through their course and library

## Related Concepts

- [[supervised-fine-tuning|Fine-tuning]] — the primary method of transfer learning in LLMs
- [[train-foundation-model-ruiz|Foundation Model]] — models designed specifically for downstream transfer
- [[in-context-learning]] — transfer without parameter updates
- [[on-policy-distillation-source|Distillation]] — transferring knowledge from teacher to student
- [[word-embeddings]] — early form of transfer in NLP (word2vec → downstream tasks)
- [[imagenet-source|ImageNet]] — the canonical pretraining dataset for computer vision transfer learning

## Sources

- [[deep-learning|Practical Deep Learning for Coders]] — fast.ai's top-down transfer learning methodology
- [[how-to-scale-your-model]] — scaling laws show transfer improves with model and data size
- [[imagenet-source|ImageNet]] — transfer learning revolution sparked by ImageNet pretraining
- [[machine-learning|Mathematics for Machine Learning]] — theoretical foundations

## Evolution

- **2012**: ImageNet pretraining + fine-tuning becomes standard in CV
- **2018**: ULMFiT demonstrates effective transfer learning for NLP
- **2019–2020**: BERT, GPT-2 show massive transfer from unsupervised pretraining
- **2022–2023**: Instruction tuning and RLHF as advanced transfer methods
- **2024–2026**: Transfer learning increasingly automated; agent-driven adaptation and synthetic fine-tuning
