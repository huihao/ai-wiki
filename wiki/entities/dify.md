---
created: 2026-04-27
updated: 2026-04-27
tags: [entity, product, ai-platform, low-code]
sources: 1
---

# Dify

## Summary

AI application development platform designed for building, deploying, and managing LLM-powered applications. Offers a low-code/no-code interface for creating chatbots, AI workflows, agents, and text-generation apps. Supports multiple model providers and provides features like prompt versioning, RAG/knowledge bases, and conversation management.

## Key Attributes

- **Type**: AI application development platform
- **Deployment**: Cloud (dify.ai) and open-source self-hosted (GitHub)
- **Interface**: Visual workflow builder + prompt IDE
- **Key features**:
  - Multi-model support (OpenAI, Anthropic, Azure, local models via Ollama, etc.)
  - RAG / knowledge base integration
  - Agent mode with tool use
  - Prompt versioning and A/B testing
  - Conversation analytics
- **Target users**: Product teams, startups, enterprises integrating LLMs

## Related Entities

- [[n8n]] — workflow automation; less AI-native
- [[n8n-vs-dify-vs-coze|Coze]] — chatbot-focused; more limited
- [[comprehensive-rag-ollama-langchain|LangChain]] — lower-level framework; Dify is higher-level
- [[welcome-to-llamaindex-ts|LlamaIndex]] — RAG framework; Dify bundles similar capabilities
- [[openai]] — primary model provider
- [[anthropic]] — model provider

## Related Concepts

- [[ai-engineering]] — core discipline
- [[llm-agents]] — agent mode with tool use
- [[retrieval-augmented-generation]] — built-in knowledge bases
- [[prompt-engineering]] — prompt IDE and versioning
- [[claude-code-source-leak-harness|Low-Code Development]] — primary interface paradigm

## Sources

- [[n8n-vs-dify-vs-coze|n8n vs. Dify vs. Coze]]

## Contradictions / Open Questions

- The comparison article claims Dify is cloud-only, but Dify does offer an open-source self-hosted version. The article may be outdated or referring to specific enterprise features.
- How does Dify compare to [[comprehensive-rag-ollama-langchain|LangChain]]/[[langgraph]] for production agent deployments?
