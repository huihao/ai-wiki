---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, prompt-engineering]
sources: 2
---

# Prompt Preprocessing

## Definition

Prompt preprocessing is the set of techniques applied to user inputs or system prompts before they reach the language model, transforming raw requests into optimized formats that improve model performance, reduce token usage, and enable more reliable tool use. It encompasses intent classification, context injection, schema selection, and input sanitization within AI agent frameworks.

## Key Aspects

- MCP (Model Context Protocol) servers define tools and schemas that are injected into prompts before the LLM processes user requests
- Context bloat from dumping all tool schemas into the prompt (e.g., 200 tools generating tens of thousands of tokens) is a key problem preprocessing addresses
- Gemini CLI and similar tools preprocess user queries to determine which tools and contexts are relevant
- Progressive disclosure loads tool information as needed rather than all at once, reducing prompt size
- Discovery tools (search, get schemas) allow lightweight tool selection before full schema loading
- Semantic parsers classify user intent to route to appropriate tool sets without exposing unnecessary schemas
- Input sanitization prevents injection attacks and ensures user text conforms to expected formats
- Preprocessing decisions (what context to include, how to structure the prompt) significantly affect model output quality

## Related Concepts

- [[prompt-builder]]
- [[context-engineering]]
- [[agent-tools]]
- [[model-context-protocol]]
- [[context-bloat]]

## Sources

- [[gemini-cli]]
- [[model-context-protocol]]
