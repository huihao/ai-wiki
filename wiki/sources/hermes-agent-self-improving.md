---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# 深入源码：Hermes Agent 如何实现 "Self-Improving"

## Metadata

- **Author**: Not specified (tech blog)
- **Date**: 2024-09-26
- **URL**: https://mp.weixin.qq.com/s/Qi68ptxQRyiA932JU49SYQ
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/harness/深入源码：Hermes Agent 如何实现 _Self-Improving_.md`

## Summary

A deep-dive into Hermes Agent's source code (NousResearch), which has grown to 106k+ GitHub stars. Unlike OpenClaw's manually written Skills, Hermes implements a self-improving loop: after completing tasks, the agent automatically distills pitfall experience into reusable Skills. The article examines three subsystems — Memory (user/environment facts), Skill (procedural knowledge), and Nudge Engine (background review triggers) — with concrete code snippets and a three-session K8s deployment case study showing tool calls dropping from 12 to 6 and errors from 2 to 0.

## Key Takeaways

- **Three subsystems, one learning loop**: Memory (facts) + Skill (procedures) + Nudge Engine (triggers) = self-improving agent.
- **Memory design**: two files (`MEMORY.md` + `USER.md`), hard character limits (2,200 / 1,375). When full, `add` fails and returns entries to model for主动 compression — forcing reflective information curation.
- **Frozen snapshot**: memory is snapshotted at session start and never changes during the session, protecting prefix cache and preventing API re-billing.
- **Skill auto-creation threshold**: complex tasks with 5+ tool calls, errors overcome, user-corrected approaches, or non-trivial workflows discovered.
- **Skill self-patching**: fuzzy find-and-replace with security scan + automatic rollback on failure. Pitfalls are appended, not pre-written.
- **Progressive Skill loading**: lightweight index in system prompt (name + one-line description); full content loaded on-demand via `skill_view`.
- **Nudge Engine**: two counters (memory every 10 user turns, skill every 10 iterations). Triggers background forked review agent (max 8 tool calls, output to /dev/null, shared memory store).
- **Security**: memory content scanned for prompt injection, deception, system override, credential exfiltration. Skills scanned before install.
- **RDSHermes**: cloud version providing zero-config setup, WebUI, IM integration, encrypted DB credentials, Skill Hub with pre-loaded domain skills.

## Entities Mentioned

- [[github-nousresearch-hermes-agent|Hermes Agent]] — NousResearch's self-improving coding agent
- [[github-nousresearch-hermes-agent|NousResearch]] — research organization behind Hermes Agent
- [[openclaw]] — compared as needing manual Skill maintenance
- RDSHermes — cloud-hosted version for non-developers
- [[alibaba]] — RDSHermes available on Alibaba Cloud RDS AI marketplace
- [[kubernetes]] — used as running example for Skill evolution

## Concepts Mentioned

- [[harness-engineering-overview|Harness Engineering]] — the infrastructure enabling agent self-improvement
- [[self-improving-agent]] — agent that learns from experience and encodes it into Skills
- [[the-real-ai-coding-skill-isnt-prompting-its-architecture|Skill]] — procedural memory: reusable task recipes with Pitfalls
- [[session-memory]] — persistent facts across conversations
- [[progressive-disclosure]] — on-demand Skill loading to manage context
- [[security-boundaries-agentic-architectures|Security Scanning]] — automated checks on agent-generated memory/skill content
- [[Background Review]] — forked agent instance for non-blocking reflection

## Raw Notes

- Memory guidance prompt: "Write memories as declarative facts, not instructions to yourself." — e.g., "User prefers concise responses" ✓ vs "Always respond concisely" ✗.
- Tool schema boundary: "If you've discovered a new way to do something, save it as a skill." — Memory stores facts, Skill stores steps.
- Design tradeoff table included: memory limits force quality; frozen snapshots protect costs; background fork preserves user attention budget; patch > rewrite preserves validated parts.
- Future directions: Skill lifecycle management (last_used, use_count, success_rate), skill composition into workflows, creation transparency notifications, team governance with audit trails.

## Questions / Follow-ups

- How does Hermes handle conflicting Skills or outdated Skills that still match current tasks?
- What is the cold-start experience without pre-loaded Skills — how many sessions until significant improvement?
- How does RDSHermes's cloud Skill Hub avoid "one DBA's environment-specific Skill" being applied broadly?
