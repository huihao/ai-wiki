---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Human Discipline

## Definition

Human discipline is the deliberate practice of maintaining rigorous oversight, architectural control, and quality standards when working with AI coding agents. As articulated by Mario Zechner, human discipline is the essential counterweight to AI speed — without it, agents compound errors at unsustainable rates, introduce architectural complexity, and produce brittle, unmaintainable systems.

## Key Aspects

- **Bottleneck Role**: Humans serve as the rate limiter in agent-assisted development; removing the human from the loop removes the only mechanism for catching compounding errors
- **Architecture by Hand**: Core architecture, API design, and system gestalt should be written by humans; the friction of manual design forces deeper understanding of what is being built
- **Evaluation Responsibility**: Every agent output must be evaluated by a human; agents make errors like humans but lack the self-awareness to detect them
- **Scope Discipline**: Good agent tasks are scoped, don't require full system understanding, have a clear evaluation function, and are not mission-critical
- **Slow Down to Speed Up**: Taking time to think about what to build yields maintainable systems, products that spark joy, and fewer but correct features
- **Anti-Pattern**: Orchestrating armies of autonomous agents without oversight leads to zero understanding of the resulting codebase and unrecoverable mess

## Related Concepts
- [[groupthink]]
- [[harness-engineering-is-cybernetics]]

## Sources
- [[slowness-agent-coding]]
