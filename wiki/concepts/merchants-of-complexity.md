---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Merchants of Complexity

## Definition

"Merchants of complexity" describes how AI coding agents inadvertently introduce immense architectural complexity into codebases through locally reasonable but globally harmful decisions. Because agents have seen many poor architectural patterns in training data, they tend to replicate complexity rather than simplify it.

## Key Aspects

- Agents make individual decisions that seem reasonable in isolation but compound into architectural chaos at the system level
- The term was coined by Mario Zechner in his 2026 essay on slowing down AI-assisted development
- Agents lack a global view of the codebase and tend to duplicate code, introduce inconsistencies, and miss existing implementations
- Complexity accumulates rapidly -- weeks of agentic coding can reach enterprise-level complexity levels without human oversight
- The solution is keeping a human in the loop as a bottleneck and rate limiter, reviewing architectural decisions before they compound
- Architecture, API design, and system-level decisions should be written by hand to maintain understanding and control

## Related Concepts

- [[mental-model]]
- [[merchants-of-complexity]]

## Sources

- [[slowness-agent-coding]]
- [[index]]
