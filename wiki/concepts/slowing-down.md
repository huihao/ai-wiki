---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, software-engineering]
sources: 2
---

# Slowing Down

## Definition

Slowing down is the deliberate practice of maintaining human discipline and pace in AI-assisted software development, resisting the temptation to let autonomous agents make all architectural and design decisions at full speed. It argues that rapid, unchecked agentic coding produces brittle, unmaintainable software, and that friction and deliberate thinking are essential for building systems that last.

## Key Aspects

- Agents make errors like humans but do not learn from mistakes, and no bottleneck limits the error rate without human oversight
- Compounding errors accumulate at unsustainable rates when agents are left unchecked -- "tiny harmless booboos compound into monsters"
- Agents have seen many bad architectural decisions in training data, making them "merchants of complexity" that introduce enterprise-level complexity rapidly
- Agentic search has low recall in large codebases -- agents miss existing code, duplicate logic, and introduce inconsistencies
- Architecture, API design, and system gestalt should be written by hand -- friction helps developers understand what they want
- Good agent tasks are scoped, have a closed evaluation function, are not mission-critical, and benefit from rubber-ducking
- Slowing down enables learning, growth, and the development of taste and experience
- The alternative (orchestrated army of autonomous agents with no human in the loop) produces software where nobody knows what is going on

## Related Concepts

- [[agent-loop]]
- [[agent-error-handling]]
- [[compounding-errors]]
- [[human-discipline]]
- [[agent-guardrails]]

## Sources

- [[index]]
- [[slowness-agent-coding]]
