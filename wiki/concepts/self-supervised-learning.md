---
created: 2026-04-28
updated: 2026-05-09
tags: [machine-learning, representation-learning, training]
sources: 0
---

# Self-supervised learning

## Definition

Self-supervised learning is a machine learning paradigm where models learn useful representations from unlabeled data by creating supervisory signals from the data itself. Rather than requiring human-annotated labels, the system constructs pretext tasks (such as predicting masked tokens, next-token prediction, or reconstructing corrupted inputs) that force the model to learn meaningful structure. Self-supervised learning is the foundation of modern large language models, where next-token prediction on massive text corpora pretrains models that can then be fine-tuned for specific tasks.

## Key Proponents / Critics

- [[yann-le-cun]] — one of the strongest advocates for self-supervised learning as the path to better AI representations
- [[geoffrey-hinton]] — pioneer of deep learning whose work on representation learning underpins self-supervised methods
- [[ilya-sutskever]] — championed large-scale self-supervised pretraining at OpenAI

## Related Concepts

- [[next-token-prediction]] — the self-supervised objective used to train autoregressive language models
- [[pre-trained-models]] — the models produced by self-supervised learning on large corpora
- [[transfer-learning]] — self-supervised pretraining followed by supervised fine-tuning is the standard transfer learning paradigm
- [[neural-networks]] — the architecture class used for self-supervised learning
- [[deep-learning]] — self-supervised learning is a subfield of deep learning
- [[llm-training]] — large language model training begins with self-supervised pretraining
- [[language-modeling]] — language modeling is the self-supervised pretext task for text
- [[causal-attention]] — BERT-style masked token prediction as a self-supervised objective
- [[embeddings]] — self-supervised learning learns useful token and sentence embeddings

## Related Entities

- [[openai]] — GPT series uses self-supervised next-token prediction at scale
- [[google-deepmind]] — BERT popularized masked language modeling as self-supervised learning
- [[meta-ai]] — FAIR under Yann LeCun has been a leading center for self-supervised learning research

## Sources

- No source pages currently link to this concept

## Evolution

- **2018**: ELMo and BERT demonstrate that self-supervised pretraining on text dramatically improves downstream NLP
- **2018**: GPT shows that autoregressive next-token prediction is a powerful self-supervised objective
- **2020**: GPT-3 demonstrates that scaling self-supervised pretraining leads to emergent capabilities
- **2023**: Self-supervised pretraining extends to multimodal domains (vision, audio, video)
- **2025**: Self-supervised learning remains the foundational paradigm for building large foundation models
