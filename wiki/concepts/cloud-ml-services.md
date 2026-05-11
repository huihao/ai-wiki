---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Cloud ML Services

## Definition
Cloud ML services are managed platforms provided by cloud vendors that offer infrastructure, tools, and services for building, deploying, and operating machine learning models at scale. They abstract away hardware management, providing managed runtimes, observability, model hosting, and scaling capabilities for production ML workloads.

## Key Aspects
- Amazon Bedrock AgentCore provides managed agent runtime with any framework (CrewAI, LangGraph, LlamaIndex, Strands) and any foundation model
- Built-in observability via OpenTelemetry integration with tools like Langfuse for cost monitoring, latency analysis, and usage tracking
- Langfuse dashboards provide per-model, per-user cost breakdowns, P95 latency metrics, and output tokens/sec measurements
- Full observability suite includes LLM-as-a-judge evaluators, data labeling, experiment tracking, and prompt version control
- Managed services handle scaling, security, compliance (SOC2 Type II, ISO 27001, GDPR), and infrastructure provisioning
- Reduces operational burden: developers focus on agent logic while the platform handles runtime, monitoring, and scaling

## Related Concepts
- [[ai-infrastructure]]
- [[api-integration]]

## Sources
- [[amazon]]
- [[machine-learning-platform]]
