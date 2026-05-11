---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure, machine-learning]
sources: 1
---

# Managed ML Service

## Definition

A managed ML service is a cloud-based platform that handles the infrastructure, tooling, and operational concerns of deploying and running machine learning models, abstracting away the complexity of model serving, scaling, monitoring, and maintenance. These services allow teams to focus on model development while the platform manages the operational lifecycle.

## Key Aspects

- Platforms provide end-to-end ML lifecycle management: data preparation, model training, deployment, monitoring, and governance
- Key components include model registries, feature stores, experiment tracking, and automated retraining pipelines
- Examples include AWS SageMaker, Google Vertex AI, Azure Machine Learning, and Databricks MLflow
- Abstract infrastructure concerns: GPU provisioning, auto-scaling, A/B testing, and canary deployments
- Model gateway pattern: unified API wrapper for multiple model providers with access control, cost management, fallback policies, load balancing, and logging
- Production requirements: observability (throughput, latency, cost metrics), logging (configs, queries, outputs), and tracing (execution path visualization)
- Chip Huyen's architecture progression: start simple (query, model, response), then add context, guardrails, routing, caching, and orchestration as needed

## Related Concepts

- [[llm-training-cost]]
- [[llm-sdk]]
- [[machine-learning-education]]

## Sources

- [[machine-learning-platform]]
