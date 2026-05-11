---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# ML Testing

## Definition

ML testing refers to the specialized practices for validating machine learning systems, covering model evaluation, production monitoring, and the unique challenges of testing probabilistic systems where traditional software testing approaches are insufficient. It encompasses evaluation-driven development, metrics design, and systematic approaches to ensuring ML systems behave correctly in production.

## Key Aspects

- **Production ML focus**: Eugene Yan's work emphasizes practical testing patterns for deployed ML systems rather than academic evaluation alone
- **Evaluation-driven development** (2023-2025 shift): Recent emphasis on building evaluation frameworks as a core part of the ML development lifecycle
- **LLM evaluation**: Specialized metrics and methodologies for assessing large language model quality, including automated evaluators and human-in-the-loop assessment
- **Recommendation system testing**: Metrics like diversity, fairness, and engagement require different testing approaches than classification accuracy
- **Debugging probabilistic systems**: ML outputs are inherently stochastic, requiring statistical testing methods rather than deterministic assertions
- **Real-time monitoring**: Continuous validation of model performance in production to detect drift, degradation, and emergent failures
- **Test design principles**: Separate test data from training data, evaluate across diverse scenarios, and measure both technical metrics and business outcomes

## Related Concepts

- [[llm-evaluation]]
- [[model-evaluation]]
- [[eval-driven-development]]
- [[production-ml]]

## Sources

- [[writing-eugene-yan]]
