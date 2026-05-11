---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Claude Code 原始碼外洩，究竟 Anthropic 是如何實現 Harness，讓 coding agent 可以穩定長時間運作？

## Metadata

- **Author**: 手哥 Handbro (硬是要學)
- **Date**: 2026-03-31
- **URL**: https://www.soft4fun.net/tech/ai/claude-code-sourrce-code-leaked.htm
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/harness/Claude Code 原始碼外洩，究竟 Anthropic 是如何實現 Harness，讓 coding agent 可以穩定長時間運作？ - 硬是要學.md`

## Summary

Following the Claude Code source code leak, the developer community quickly shifted focus from prompt secrets to the deeper engineering lesson: reliable coding agents are not built on better models or prompts alone, but on a thick "harness" of execution environment, permission systems, tool interfaces, memory mechanisms, verification loops, and task orchestration. The article synthesizes community consensus on what makes a mature harness.

## Key Takeaways

- The most valuable insight from the leak: mature AI coding products are "model as one component in a complete system," not "model plus shell."
- A good harness is a system for managing uncertainty, not a collection of feature plugins.
- **Long-task solution is not bigger context windows but state externalization**: task state must be written outside chat history via feature lists, progress logs, plan files, init scripts, and structured docs like `CLAUDE.md`/`AGENTS.md`.
- **Deterministic controls must sink to the system layer**, not live only in prompts: hooks, permissions, checkpoints, policy engines, and classifiers enforce rules that prompts merely describe.
- Permission design is core architecture, not a UX detail: a three-tier permission model (safe auto / scoped auto / high-risk manual or classifier) is necessary for commercial autonomy.
- **Verification ability matters more than generation ability**: without test, browser automation, log/metric/trace access, and evaluator agents, humans remain the single-point bottleneck.
- **Multi-agent value is context firewalling**: subagents with independent context prevent debugging noise from polluting the main conversation.

## Entities Mentioned

- [[anthropic]] — Claude Code's creator; source code leak subject
- [[claude-code-source-leak-harness|Claude Code]] — the coding agent product whose internals were leaked
- [[openai]] — mentioned as competitor with Codex

## Concepts Mentioned

- [[harness-engineering-overview|Harness Engineering]] — the core theme: wrapping models in execution infrastructure
- [[context-rot]] — model degradation as context grows
- [[genai-output-control-design-patterns|Deterministic Control]] — system-layer enforcement vs. prompt-based guidance
- [[context-engineering|Context Firewall]] — using subagents to isolate debugging noise from main context
- [[self-attention|Self-Verification]] — verification loops as more important than generation
- [[the-real-ai-coding-skill-isnt-prompting-its-architecture|Permission Architecture]] — tiered permission models for agent autonomy

## Raw Notes

- Key community consensus: restrict agent behavioral boundaries, persist task state, enable self-verification, and make flows reversible/auditable.
- The article compares harness components to failure mode catalogs, state models, tool contracts, verification loops, and permission architectures — these are portable, prompts are not.
- Subagent roles emphasized: planner, generator, evaluator — splitting cognitive labor reduces self-affirmation bias and focus loss.

## Questions / Follow-ups

- Has Anthropic officially confirmed or commented on any specific harness architecture details post-leak?
- How does Claude Code's harness compare to OpenAI's Codex harness in terms of architecture?
- What open-source tools exist today that implement similar context-firewalling subagent patterns?
