---
created: 2026-04-28
updated: 2026-05-09
tags: [entity, tool]
sources: 0
---

# LiteLLM

## Summary
LiteLLM is an open-source library that provides a unified OpenAI-compatible API for calling over 100 LLM providers. It normalizes API differences across providers, enabling developers to switch between models and providers with minimal code changes, and includes features like fallback routing, load balancing, and spending tracking.

## Key Attributes
- **Type**: LLM proxy / unified API library
- **Notable for**: Single interface for 100+ LLM providers with OpenAI-compatible format
- **Key features**: Provider-agnostic API, automatic retries and fallbacks, cost tracking, spending budgets, callback hooks
- **Supported providers**: OpenAI, Anthropic, Azure, Google, AWS Bedrock, Cohere, Hugging Face, Ollama, and many more
- **Deployment**: Can run as a local library, proxy server, or Docker-based deployment
- **License**: MIT

## Related Entities
- [[openai]] — OpenAI API format is the standard LiteLLM normalizes to
- [[anthropic]] — one of the many providers supported through the unified interface
- [[langchain]] — can be used as an LLM provider within LangChain applications
- [[ollama]] — local model serving supported by LiteLLM

## Related Concepts
- [[llm-inference]] — LiteLLM simplifies the process of calling LLMs across providers
- [[model-serving]] — acts as a proxy layer for model serving
- [[api-development]] — provides a developer-friendly API abstraction layer

## Sources
- (no source pages reference LiteLLM)

## Contradictions / Open Questions
- How does LiteLLM's proxy approach compare to dedicated API gateways like those offered by cloud providers in terms of latency overhead?
