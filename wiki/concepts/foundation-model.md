---
created: 2026-04-28
updated: 2026-04-28
tags: [llm, pretraining, scale]
sources: 2
---

# Foundation Model

## Definition

A large-scale AI model trained on broad data at scale such that it can be adapted to a wide range of downstream tasks. Foundation models are typically trained via self-supervised learning on massive unlabeled datasets and then fine-tuned or prompted for specific applications.

## Key Proponents / Critics

- **Term originators:** [[Stanford HAI]] — popularized the term in 2021
- **Practitioners:** [[meta]] (Llama), [[openai]] (GPT), [[google]] (Gemini) — build foundation models
- **Economics:** Training costs range from hundreds of thousands to tens of millions of dollars

## Related Concepts

- [[awesome-llm-post-training|pre-training]] — initial training on large corpus
- [[supervised-fine-tuning|fine-tuning]] — adapting to specific tasks
- [[transfer-learning]] — applying learned representations to new tasks
- [[machine-learning|self-supervised learning]] — training paradigm
- [[large-language-models|LLM]] — the most common type of foundation model
- compute — massive resources required for training
- [[on-policy-distillation-source|distillation]] — creating smaller models from foundation models

## Sources

- [[train-foundation-model-ruiz]]
- [[what-is-chatgpt-doing-wolfram]]

## Evolution

- **2018:** BERT and GPT-1 established the pre-train-then-fine-tune paradigm
- **2020:** GPT-3 showed prompting could replace fine-tuning for many tasks
- **2022+:** Open-weight foundation models (Llama, Mistral) democratized access
- **Current:** Most AI applications build on foundation models rather than training from scratch
