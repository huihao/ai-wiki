---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 1
---

# Token Optimization

## Definition

Token optimization refers to the set of techniques and strategies used to reduce the number of tokens consumed during LLM inference and training, thereby lowering latency, cost, and context window usage while maintaining output quality.

## Key Aspects

- Context window budgeting: carefully managing how many tokens are allocated to system prompts, tool schemas, user input, and output within a fixed context limit.
- Prompt compression: techniques such as summarization, deduplication, and abbreviation that reduce prompt token count without losing critical information.
- Tool schema optimization: progressive disclosure of tool definitions (brief names first, full schemas on demand) to avoid dumping hundreds of schemas into context at once.
- Caching and memoization: prompt caching reuses previously computed prompt prefixes to avoid re-processing unchanged tokens.
- CodeMode patterns: replacing sequential multi-tool calls with sandboxed code scripts that compose operations internally, keeping intermediate results outside the context window.
- Token cost awareness: understanding that different model providers charge per token, making optimization directly tied to operational cost.

## Related Concepts

- [[model-context-protocol]] -- tool protocol where schema bloat is a key token optimization challenge
- [[context-engineering]] -- broader discipline of managing what enters the model's context
- [[prompt-caching]] -- avoids reprocessing repeated prompt prefixes

## Sources

- [[cline-mcp-marketplace]]
