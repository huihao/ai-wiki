---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Safe-to-Fail Experiments

## Definition

Safe-to-fail experiments are small-scale, contained trials conducted in complex domains where outcomes cannot be predicted in advance. In the context of AI coding agents, they represent the appropriate methodology for adopting GenAI tools, recognizing that the cause-effect relationship between prompts and outcomes is inherently unpredictable and can only be understood in retrospect.

## Key Aspects

- Core methodology for operating in complex domains (as classified by the Cynefin framework), where cause-effect is only understood in retrospect
- Contrast with complicated domains (like traditional software engineering) where expert analysis and established procedures suffice
- GenAI coding agents are complex domain tools: small prompt changes produce disproportionate results, outputs are probabilistic, and practices are unstable as models evolve
- Organizations must manage two simultaneous complexities: the software system itself AND the complexity of using agents to build it
- Automated testing replaces manual policy as the primary governance mechanism
- Require fast-flow development model, real-time observability, and human-in-the-loop checkpoints
- Platform strategy should be a "learning amplifier" not a "policy factory": enable experiments, share patterns, provide guardrails, accelerate collective learning
- Leadership must move from illusion of top-down control to culture of continuous discovery, embracing variance rather than eliminating it

## Related Concepts

- [[cynefin]] -- Decision-making framework identifying complex vs complicated domains
- [[complex-domain]] -- Domain category requiring experimentation over analysis
- [[fast-flow-development]] -- Development model supporting rapid experimentation
- [[context-engineering]] -- Practice for optimizing coding agent interactions

## Sources

- [[cynefin-coding-agents]]
