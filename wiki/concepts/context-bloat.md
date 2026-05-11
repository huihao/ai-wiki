---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Context Bloat

## Definition
Context bloat is the degradation of LLM performance caused by excessive, irrelevant, or poorly structured tokens in the context window—whether from tool schemas, retrieved documents, or accumulated conversation history—that consumes scarce context budget and confuses the model's reasoning.

## Key Aspects
- **Tool schema explosion**: An MCP server with 200 tools dumps 200 full JSON schemas into the context window before the model reads the user request—tens of thousands of tokens, most irrelevant to the current task.
- **Context rot**: Research (Chroma) demonstrates that LLM performance degrades non-uniformly as input length grows; distractors (topically related but incorrect information) amplify degradation, and even trivial replication tasks show declining accuracy at longer contexts.
- **Compounding overhead**: Every tool call passes intermediate results through the context window on every turn; in traditional MCP, this means dozens of round-trips where each intermediate result burns tokens.
- **CodeMode solution**: FastMCP's CodeMode replaces sequential tool calling with sandboxed Python script composition—reducing Amazon Ads MCP from 34K tokens to ~600 tokens per workflow by keeping intermediate results inside the sandbox.
- **Progressive disclosure pattern**: Tunable discovery tools (brief/detailed/full detail levels) load only the information needed at each step, avoiding upfront schema dumps.
- **Real-world impact**: Focused prompts (~300 tokens) consistently outperform full prompts (~113k tokens) across all tested models on conversational QA tasks, demonstrating that adding irrelevant context significantly hurts performance.

## Related Concepts
- [[agent-systems]]
- [[coding-agent]]
- [[auto-memory]]
- [[attention-is-all-you-need]]

## Sources
- [[code-mode]]
- [[index]]
- [[stop-calling-tools-code-mode]]
