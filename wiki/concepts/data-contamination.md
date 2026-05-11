---
created: 2026-04-28
updated: 2026-04-28
tags: [bias, evaluation, llm]
sources: 1
---

# Data Contamination

## Definition

The presence of evaluation task data or labeled examples in a model's pretraining corpus. When test sets or benchmark examples appear in training data, models may appear to generalize better than they actually do, leading to inflated performance estimates.

## Key Proponents / Critics

- **Researchers:** [[terra-blevins]] — studied contamination in The Pile for linguistic tasks
- **Industry:** [[openai]] — criticized for not disclosing training data, making contamination hard to assess

## Related Concepts

- [[benchmarks-epoch-ai|benchmark]] — evaluation datasets vulnerable to contamination
- [[ai-data-engineer-return-to-basics|pretraining data]] — the corpus where contamination occurs
- generalization — the true capability being measured
- [[in-context-learning]] — may rely on contaminated prior knowledge
- perplexity — proposed as proxy for estimating pretraining data overlap

## Sources

- [[llms-know-linguistics-blevins]]

## Evolution

- **Persistent problem:** Known issue since early LM benchmarking
- **2023:** Blevins et al. showed widespread contamination of linguistic benchmarks in The Pile
- **Current:** Methods being developed to detect contamination without access to pretraining data
