---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, framework, agent]
sources: 0
---

# LangChain

## Summary

LangChain is an open-source framework for building applications with large language models through composable chains and agents. Founded by Harrison Chase, it popularized the pattern of chaining LLM calls with tools, memory, and retrieval. LangChain's ecosystem includes LangGraph (orchestration runtime), LangSmith (observability), and the Agent Builder platform.

## Key Attributes

- **Founder**: Harrison Chase
- **Type**: Open-source LLM application framework
- **Key products**: LangChain (framework), LangGraph (runtime), LangSmith (observability), LangServe (deployment)
- **Core paradigm**: Composable chains of LLM calls, tools, and data retrievers
- **Notable contributions**: 8-Factor Agent framework, agent taxonomy (frameworks vs. runtimes vs. harnesses)

## Related Entities

- [[huggingface-skills|Hugging Face]] — partner in the open-source LLM ecosystem
- [[openai]] — model provider heavily used with LangChain
- [[anthropic]] — model provider; LangChain integrates Claude
- [[n8n]] — workflow automation platform sometimes compared to LangGraph
- [[n8n-vs-dify-vs-coze|Dify]] — competitor in LLM app development

## Related Concepts

- [[llm-agents]] — LangChain's core abstraction
- [[retrieval-augmented-generation]] — LangChain popularized RAG patterns
- [[agent-engineering-source|Agent Engineering]] — LangChain's 8-Factor Agent Breakdown
- [[model-context-protocol]] — LangChain integrates MCP servers
- [[harness-engineering-overview|Harness Engineering]] — LangSmith Agent Builder uses file-based memory

## Sources

- [[8-factor-agent-breakdown|The 8-Factor Agent Breakdown]] — LangChain's agent framework taxonomy
- [[agent-frameworks-runtimes-and-harnesses|Agent Frameworks, Runtimes, and Harnesses—oh my!]] — Harrison Chase's taxonomy proposal
- [[agent-builder-memory-system|How We Built Agent Builder's Memory System]] — LangSmith's memory architecture
- [[agentic-reasoning-layer|The Agentic Reasoning Layer]] — LangChain's reasoning framework

## Contradictions / Open Questions

- LangChain has faced criticism for over-abstraction; how does it evolve as agents become more capable natively?
- Is LangGraph converging with or diverging from general-purpose workflow engines like n8n and Temporal?
