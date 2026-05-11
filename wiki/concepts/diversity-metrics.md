---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Diversity Metrics

## Definition

Diversity metrics are quantitative measures used to evaluate how varied, heterogeneous, or non-repetitive the outputs of a system are. In the context of machine learning and recommendation systems, they measure whether a model produces sufficiently diverse results rather than converging on a narrow set of outputs, which is critical for user satisfaction and system fairness.

## Key Aspects

- In recommendation systems, diversity metrics evaluate whether recommendations span multiple categories, genres, or user interests rather than clustering around a single type
- Common metrics include intra-list diversity (dissimilarity between items in a single recommendation list), coverage (proportion of the item catalog recommended), and novelty (proportion of long-tail items surfaced)
- The Artificial Hivemind problem (NeurIPS 2025) highlights the importance of diversity: LLMs exhibit intra-model repetition and inter-model homogenization that threatens long-term value plurality
- Mode collapse in generative models is a diversity failure where the model produces limited variation in outputs
- Trade-off exists between accuracy and diversity: highly accurate recommendations may be very similar, while diverse recommendations may sacrifice immediate relevance
- Evaluation requires both quantitative metrics and qualitative assessment, as automated judges may not capture human preferences for variety
- Diversity metrics are increasingly important for LLM evaluation as models are deployed in open-ended generation tasks

## Related Concepts

- [[llm-evaluation]]
- [[recommendation-systems]]
- [[artificial-hivemind]]
- [[mode-collapse]]
- [[fairness-metrics]]

## Sources

- [[writing-eugene-yan]]
