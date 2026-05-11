---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, performance]
sources: 2
---

# Side Query

## Definition

A side query is a lightweight, non-streaming API call made in parallel with the main model's reasoning process, used to perform auxiliary tasks like permission classification, memory retrieval, or summarization without blocking the primary generation. It enables the agent system to gather supplementary information or perform background work while the main model continues generating, improving overall throughput and responsiveness.

## Key Aspects

- Side queries run in parallel during main model reasoning, not blocking the primary generation path
- Lightweight models (e.g., Haiku) handle side queries while the main model (e.g., Sonnet) thinks
- Use cases include permission classification, memory retrieval, context summarization, and tool use summarization
- Side queries reduce latency by overlapping auxiliary computation with primary reasoning
- Tool Use Summary pattern: a smaller model summarizes tool results while the main model continues working
- Permission classification via side query determines whether a tool call requires user approval
- Memory retrieval as a side query loads relevant past context without interrupting the main generation
- The approach requires careful orchestration to avoid race conditions and ensure data consistency

## Related Concepts

- [[agent-loop]]
- [[agent-permissions]]
- [[agent-memory]]
- [[parallel-computation]]
- [[speculative-execution]]

## Sources

- [[harness-engineering-claude-code]]
- [[index]]
