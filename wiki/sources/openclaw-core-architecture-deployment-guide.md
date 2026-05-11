---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# 玩转OpenClaw，你需要了解的：核心架构、运作原理、Agent部署步骤

## Metadata

- **Author**: 冰以东 (Tencent Programmer / Bing Yidong)
- **Date**: 2026-03-04
- **URL**: https://mp.weixin.qq.com/s/Q0CC0p5e-DQEYEk5ErQB1Q
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/玩转OpenClaw，你需要了解的：核心架构、运作原理、Agent部署步骤.md`

## Summary

A detailed Chinese guide to OpenClaw's core architecture, communication mechanisms, and multi-agent deployment. The author emphasizes that OpenClaw's value is not technical complexity but consensus-building around agent architecture standards.

## Key Takeaways

- OpenClaw's advantage: standardizing agent architecture so users can focus on tasks, not infrastructure.
- Two deployment options: cloud VM (Tencent Cloud officially supported) or self-hosted (Mac Mini recommended).
- Agent workspace files: AGENTS.md (capabilities), SOUL.md (persona), TOOLS.md (tool whitelist/blacklist), IDENTITY.md (name/avatar), USER.md (preferences), HEARTBEAT.md (cron), BOOTSTRAP.md (onboarding), MEMORY.md (RAG source).
- Agent is per-session transient instance, not a常驻进程.
- Session management: compaction (persistent summary), pruning (temporary tool result clearing), history limit.
- Multi-agent communication: `sessions_send` (message to existing session, persists memory) and `sessions_spawn` (subagent for independent task).
- Skills use progressive disclosure: only metadata injected into system prompt, full content read on demand.
- ClawHub: skills marketplace for OpenClaw.
- Security warning: treat OpenClaw as "data fully open" — do not send sensitive content.

## Entities Mentioned

- [[openclaw]] — agent platform
- [[peter-steinberger]] — creator of OpenClaw
- [[mario-zechner]] — creator of Pi (OpenClaw's engine)
- [[tencent|Tencent Cloud]] — official cloud deployment partner
- ClawHub — skills marketplace

## Concepts Mentioned

- [[openclaw]] — agent platform built on Pi
- [[8-factor-agent-breakdown|Agent workspace]] — configuration files defining agent identity
- sessions_send — agent-to-agent messaging via existing sessions
- sessions_spawn — subagent delegation
- [[agent-skills|Skills]] — progressively disclosed capabilities
- [[chrome-devtools-mcp-debug-browser-session|Session compaction]] — summarizing old messages
- [[chrome-devtools-mcp-debug-browser-session|Session pruning]] — temporary removal of old tool results

## Questions / Follow-ups

- How does OpenClaw's multi-agent model compare to Claude Code's agent teams?
- What is the practical upper limit on agent count before IM rate limits become prohibitive?
