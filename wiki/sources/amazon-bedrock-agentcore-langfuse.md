---
created: 2026-04-28
updated: 2026-04-28
tags: [source, aws, observability, agents, langfuse]
sources: 1
---

# Amazon Bedrock AgentCore Observability with Langfuse

## Metadata

- **Author**: Richa Gupta, Ishan Singh, Yanyan Zhang, Madhu Samhitha, Marc Klingen (AWS / Langfuse)
- **Date**: 2025-12-11
- **URL**: https://aws.amazon.com/cn/blogs/machine-learning/amazon-bedrock-agentcore-observability-with-langfuse/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Amazon Bedrock AgentCore Observability with Langfuse _ Amazon Web Services.md`

## Summary

A technical tutorial demonstrating how to integrate Langfuse observability with Amazon Bedrock AgentCore using OpenTelemetry. Shows deployment of a Strands agent on AgentCore Runtime with full tracing, cost monitoring, latency analysis, and usage management.

## Key Takeaways

- **Amazon Bedrock AgentCore**: Comprehensive agentic platform with managed runtime, tools, and controls. Works with any framework (CrewAI, LangGraph, LlamaIndex, Strands) and any foundation model. Emits OTEL-compatible telemetry.
- **Langfuse as OTEL backend**: Receives traces via `/api/public/otel` endpoint, mapping to Langfuse's data model using generative AI conventions. Supports both streaming and non-streaming responses.
- **Architecture**: Strands agent → AgentCore Runtime → OTEL exporter → Langfuse. Must set `disable_otel=True` in AgentCore to use Langfuse instead of default observability.
- **Traces capture**: Agent invocation, tool calls (web search), model interactions with latency/token usage, request/response payloads. Hierarchical structure enables drilling down into specific interactions.
- **Langfuse dashboards**:
  - **Cost monitoring**: Per-model, per-user, per-function breakdowns
  - **Latency metrics**: P95 by level/use case, TTFT by prompt/model, output tokens/sec
  - **Usage management**: Traces, observations, scores across the system
- **Langfuse full suite**: LLM-as-a-judge evaluators, data labeling, experiment tracking, interactive prompt playground, prompt version control.

## Entities Mentioned

- [[amazon-bedrock-agentcore-langfuse|AWS]] — cloud provider
- [[amazon-bedrock-agentcore-langfuse|Amazon Bedrock]] — managed foundation model service
- [[amazon-bedrock-agentcore-langfuse|Langfuse]] — open-source LLM observability platform
- Strands — Python agent framework
- [[anthropic]] — Claude models via Bedrock
- [[opentelemetry]] — CNCF observability standard

## Concepts Mentioned

- [[8-factor-agent-breakdown|Agent Observability]] — tracing and monitoring agent execution
- [[opentelemetry]] — standardized telemetry collection
- [[hugging-face|LLM Tracing]] — hierarchical execution path recording
- Cost Monitoring — tracking AI infrastructure expenses
- [[llm-leaderboard-artificial-analysis|Latency Analysis]] — identifying performance bottlenecks
- [[stop-using-init-for-agents-md|Strands Agents]] — Python framework for LLM agents
- [[amazon-bedrock-agentcore-langfuse|AgentCore Runtime]] — managed agent hosting on AWS

## Raw Notes

- Requires AWS account, Bedrock model access, Python 3.10+, Docker, Langfuse account.
- Langfuse can be self-hosted on AWS via Terraform module.
- Example notebook available on GitHub: `amazon-bedrock-agentcore-samples`.

## Questions / Follow-ups

- How does this compare to native AWS CloudWatch observability for Bedrock agents?
- What are the performance overhead implications of OTEL tracing in production?
