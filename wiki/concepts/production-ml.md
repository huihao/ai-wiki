---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning, systems]
sources: 2
---

# Production ML

## Definition

Production ML refers to the discipline of building, deploying, and maintaining machine learning systems in real-world environments, where models must serve predictions reliably at scale while handling data drift, feedback loops, and evolving business requirements. It emphasizes practical patterns over theoretical approaches and requires a shift from notebook experimentation to robust engineering.

## Key Aspects

- Requires treating ML systems as software systems with testing, versioning, monitoring, and CI/CD pipelines
- Data pipelines are often harder to maintain than the models themselves
- Evaluation-driven development: defining metrics and evals before building models
- Recommendation systems exemplify production ML complexity: real-time serving, bias management, diversity metrics
- LLM evaluation is an emerging and critical practice area for production deployments
- Includes career and organizational dimensions: team structure, leadership, and cross-functional collaboration
- Practical patterns include A/B testing, canary deployments, shadow mode, and gradual rollouts
- ML testing differs from traditional software testing -- requires testing data, models, and predictions, not just code

## Related Concepts

- [[production-deployment]]
- [[production-monitoring]]
- [[llm-evaluation]]
- [[recommendation-systems]]
- [[ml-testing]]

## Sources

- [[eugene-yan]]
- [[writing-eugene-yan]]
