---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Thoughts on Slowing the Fuck Down

## Metadata

- **Author**: Mario Zechner (badlogic)
- **Date**: 2026-03-25
- **URL**: https://mariozechner.at/posts/2026-03-25-thoughts-on-slowing-the-fuck-down/
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/agent/Thoughts on slowing the fuck down.md

## Summary

Reflections on the consequences of rapid AI-assisted coding after 12 months of widespread adoption, arguing for deliberate slowness and human discipline to avoid creating brittle, unmaintainable software.

## Key Takeaways

### The Current State

**Everything is Broken**:
- Software becoming brittle mess
- 98% uptime becoming norm
- User interfaces with weird bugs
- Services feeling less reliable

**Evidence from Industry**:
- AWS AI-caused outage, followed by 90-day reset
- Microsoft's 30% AI-written code correlating with Windows quality issues
- Companies claiming 100% AI code producing worst garbage
- Teams agentically coding themselves into corners

### Problems with Current Practices

**Compounding Booboos**:
- Agents make errors like humans
- But agents don't learn from mistakes
- No bottleneck limiting error rate
- Human pain delayed until too late

**Merchants of Complexity**:
- Agents seen many bad architectural decisions in training
- Local decisions lead to global mess
- Immense complexity emerges rapidly
- Weeks to reach enterprise-level complexity

**Agentic Search Has Low Recall**:
- Big codebases → low recall
- Agent misses existing code, duplicates, introduces inconsistencies
- Context window limits, but more fundamentally: agent only has local view
- Can't find all code needed for good job

### How We Should NOT Work

**What Not to Do**:
- Orchestrate army of autonomous agents
- Distribute, divide and conquer
- Remove yourself from loop
- Delegate architecture to agents
- Think software is solved in 6 months

**Consequences**:
- Zero idea what's going on
- Complexity explosion
- Unrecoverable mess
- Tests untrustworthy
- Manual testing becomes only reliable measure

### How We Should Work (For Now)

**Good Agent Tasks**:
- Scoped, don't need full system understanding
- Loop can be closed (evaluation function)
- Not mission critical
- Rubber ducking/bouncing ideas

**Principles**:
- Let agent do boring stuff
- Evaluate what it produces
- Take reasonable ideas and finalize
- Slow down and think about what you're building

**Hand-Writing Architecture**:
- Architecture, API, system gestalt → write by hand
- Friction helps you understand what you want
- Taste and experience matter
- Slowing down allows learning and growth

**Benefits**:
- Maintainable systems
- Products that spark joy
- Fewer but right features
- Understanding and agency
- Can fix problems when they arise

**Requires**:
- Discipline
- Humans

## Entities Mentioned

- [[mario-zechner|Mario Zechner]] — Author and pi creator
- [[andrej-karpathy|Andrej Karpathy]] — Mentioned for auto-research
- [[satya-nadella|Satya Nadella]] — Microsoft CEO
- [[amazon|Amazon]] — AWS outage case
- [[microsoft|Microsoft]] — Windows quality issues

## Concepts Mentioned

- [[compounding-errors|Compounding Errors]] — Agents repeating mistakes without learning
- [[merchants-of-complexity|Merchants of Complexity]] — Agents introducing architectural complexity
- [[agentic-search|Agentic Search]] — Finding relevant code in codebases
- [[low-recall|Low Recall]] — Missing relevant code in search
- [[slowing-down|Slowing Down]] — Deliberate pace in development
- [[human-discipline|Human Discipline]] — Essential for quality
- [[bottleneck|Bottleneck]] — Human as rate limiter
- [[evaluation-function|Evaluation Function]] — Metric for agent self-assessment

## Raw Notes

Key insight: "With an orchestrated army of agents, there is no bottleneck, no human pain. Tiny harmless booboos compound at unsustainable rate. You removed yourself from loop, don't know booboos formed monster."

## Questions / Follow-ups

- How do you measure when slowness is too slow?
- What's the right balance of agent vs human work?
- How do organizations enforce discipline?
- What training helps teams adopt these practices?
