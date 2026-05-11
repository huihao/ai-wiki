---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, company, observability, open-source]
sources: 0
---

# Langfuse

## Summary

Langfuse is an open-source LLM observability platform that provides tracing, cost monitoring, latency analysis, and evaluation for AI applications. It supports OpenTelemetry ingestion and can be self-hosted.

## Key Attributes

- **Type**: Open-source observability platform
- **Founders**: Marc Klingen, Clemens Rawert, Max Deichmann
- **Key features**: LLM tracing, cost monitoring, latency metrics, LLM-as-a-judge evaluators, prompt management, experiment tracking
- **Integration**: OpenTelemetry compatible, works with any framework (LangChain, LlamaIndex, CrewAI, etc.)
- **Deployment**: Cloud-hosted or self-hosted (AWS Terraform module available)

## Related Entities

- [[amazon-bedrock-agentcore-langfuse|AWS]] — Bedrock integration partner
- [[welcome-to-llamaindex-ts|LlamaIndex]] — framework integration
- [[anthropic]] — model provider monitored via Langfuse

## Related Concepts

- [[8-factor-agent-breakdown|Agent Observability]] — tracing agent execution
- [[opentelemetry]] — standardized telemetry
- [[hugging-face|LLM Tracing]] — hierarchical execution recording
- Cost Monitoring — tracking AI infrastructure spend

## Sources

- [[amazon-bedrock-agentcore-langfuse]] — Bedrock AgentCore + Langfuse tutorial

## Contradictions / Open Questions

- How does Langfuse compare to alternatives like Weights & Biases, LangSmith, or Phoenix?
