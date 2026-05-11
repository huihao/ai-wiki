---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 1
---

# Self-Improving Agents

## Definition

Self-improving agents are AI systems that continuously enhance their own performance through systematic learning from past experiences, feedback loops, and architectural evolution. In the context of harness engineering, these agents are wrapped in control systems that manage perception, planning, action, and reflection cycles, enabling progressive improvement without human intervention.

## Key Aspects

- Built on the PPAF cognitive loop: Perception, Planning, Action, Feedback/Reflection -- each cycle produces learnings
- Harness engineering provides the control system (the "harness") that wraps non-deterministic LLM "brains" and manages their lifecycle
- State separation principle: treat LLM as stateless CPU; all cross-turn state lives in external harness-managed persistence
- Six design principles enable self-improvement: Design for Failure, Contract-First, Secure by Default, Decision/Execution Separation, Everything Measurable, Data-driven Evolution
- R.E.S.T. model ensures improvement is reliable: Reliability (recoverable, idempotent), Efficiency (token budget, latency), Security (least privilege), Traceability (full-chain tracking)
- Memory tiers (working, short-term, long-term) enable agents to retain and build on past learnings
- Data-driven evolution: metrics on task effectiveness, quality of service, resource efficiency, and security guide continuous improvement
- As models improve, some harness layers will be internalized into models, while new applications create new harness needs

## Related Concepts

- [[harness-engineering]] -- The systematic discipline of building reliable agent control systems
- [[reflection]] -- The cognitive process enabling agents to learn from mistakes
- [[ppaf-loop]] -- Perception-Planning-Action-Feedback cycle
- [[agent-memory]] -- Tiered memory systems enabling persistent learning

## Sources

- [[harness-engineering]]
