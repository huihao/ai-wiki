---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# 一场泄露看懂 Claude Code：Harness 是让 Agent 干活靠谱的关键

## Metadata

- **Author**: Bojie Li (李博杰)
- **Date**: 2026-04-02
- **URL**: https://01.me/2026/04/blog-claude-code/
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/一场泄露看懂 Claude Code：Harness 是让 Agent 干活靠谱的关键.md`

## Summary

A deep technical analysis of Claude Code's leaked source code (510K lines TypeScript). Bojie Li argues that the true engineering challenge is not "making the model call tools" but everything outside the model — the Harness. The article systematically dissects Claude Code's environment capabilities and constraint/verification systems.

## Key Takeaways

- **Harness Engineering** = everything outside the model: context, tools, error recovery, caching, parallelism, memory.
- Evolution: Prompt Engineering → Context Engineering → Harness Engineering (Prompt ⊂ Context ⊂ Harness).
- LangChain experiment: changing only Harness improved accuracy from 52.8% to 66.5% on Terminal Bench 2.0.
- Main loop: 1700-line state machine with 7 named continue branches, not a simple while loop.
- **Prompt Cache** is an architecture constraint, not an optimization: determines message serialization, fork behavior, tool result storage.
- Five-layer context compression: Tool Result Budget → HISTORY_SNIP → Microcompact → CONTEXT_COLLAPSE → Autocompact.
- **Side Query**: lightweight non-streaming LLM calls for permission classification, memory retrieval, tool summaries, agent summaries, prompt suggestions.
- **Dream**: background memory consolidation system (Orient → Gather → Consolidate → Prune) triggered after 24h + 5 sessions.
- Five-layer permission system: Settings → PreToolUse Hook → Tool properties → LLM Auto-Classifier → Rejection circuit breaker.
- Speculative execution with overlay filesystem: predicts next action, executes on overlay, promotes on accept.
- Multi-agent capability partitioning: identity defined by tool surface, not role prompts.
- Anti-distillation: fake tools injection + connector text summarization with encrypted signatures.
- Double feature flags: compile-time (Bun macro, DCE) + runtime (GrowthBook).

## Entities Mentioned

- [[bojie-li]] — author
- [[anthropic]] — Claude Code creator
- [[comprehensive-rag-ollama-langchain|LangChain]] — Terminal Bench harness experiment
- [[openai]] — 3 engineers + Agent = ~1M lines in 5 months
- GrowthBook — A/B testing and feature flag platform

## Concepts Mentioned

- [[harness-engineering-overview|Harness Engineering]] — model-adjacent infrastructure for reliable agents
- [[understanding-coding-kv-cache-raschka|Prompt Cache]] — architecture constraint for cache hit rate
- [[context-engineering|Context compression]] — five-layer pipeline
- [[grouped-query-attention|Side Query]] — lightweight parallel LLM calls
- Dream — background memory consolidation
- [[ai-agents-fail-on-bad-context|Fail-closed]] — conservative tool defaults
- [[speculative-decoding|Speculative execution]] — overlay filesystem prediction
- [[on-policy-distillation-source|Anti-distillation]] — protecting model outputs from training extraction
- Circuit breaker — preventing infinite retry loops
- [[why-genai-based-coding-agents-are-a-complex-domain-in-cynefin|Capability-based identity]] — tool surface defines agent identity

## Questions / Follow-ups

- How transferable are Claude Code's harness patterns to other agent frameworks?
- What is the engineering cost of maintaining a harness at this sophistication level?
