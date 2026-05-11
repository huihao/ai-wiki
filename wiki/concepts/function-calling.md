---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, llm, tool]
sources: 0
---

# Function Calling

## Definition

Function calling (also known as tool use) is the capability of large language models to generate structured outputs that invoke external functions, APIs, or tools. The model receives a schema describing available tools and their parameters, then decides which tool to call and with what arguments. Function calling is the foundational mechanism enabling LLM agents to interact with the external world.

## Key Proponents / Critics

- **Pioneers**: [[openai]] (introduced function calling in GPT-4), [[anthropic]] (tool use in Claude)
- **Standardization**: [[model-context-protocol]] — standardizes tool schema and execution
- **Frameworks**: [[comprehensive-rag-ollama-langchain|LangChain]], [[dspy-framework|DSPy]], [[building-cli-coding-agent-pydantic-ai|Pydantic-AI]] — abstract function calling patterns
- **Critics**: Excessive tool schemas bloat context windows; [[fastmcp]] CodeMode addresses this by letting LLMs write scripts instead of sequential calls

## Related Concepts

- [[model-context-protocol]] — standardized protocol for tool exposure
- [[llm-agents]] — agents require function calling to act
- [[claude-code|Tool Use Pattern]] — the broader pattern of LLM-driven tool invocation
- [[genai-output-control-design-patterns|Structured Output]] — function calling requires schema-constrained generation
- [[agentic-rag]] — function calling enables RAG agents to query multiple sources

## Sources

- [[hugging-face|Function Calling · Hugging Face]] — Hugging Face documentation on tool schemas and structured outputs
- [[stop-calling-tools-start-writing-code-mode|Stop Calling Tools, Start Writing Code (Mode)]] — FastMCP's critique of naive function calling
- [[ai-coding-agent-design|AI Coding Agent Design (Gemini-CLI Source Analysis)]] — how coding agents register and invoke tools
- [[8-factor-agent-breakdown|一文读懂 Agent Tools，拒绝复杂化、碎片化、黑盒化]] — enterprise-scale tool design and governance

## Evolution

- **2023**: OpenAI introduces JSON-mode function calling; ad-hoc tool schemas dominate
- **2024**: MCP standardizes tool interfaces; Pydantic-based structured outputs improve reliability
- **2025**: Multi-turn tool calling, parallel tool execution, and error recovery become standard
- **2026**: FastMCP CodeMode and agent script generation reduce per-call token overhead
