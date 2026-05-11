---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Bottleneck

## Definition
A bottleneck in the context of AI-assisted coding is the primary constraint limiting the speed and quality of software development, and correctly identifying whether the bottleneck is human or AI is essential for knowing when to slow down versus when to accelerate. The central insight is that when the human is the bottleneck (thinking, reviewing, deciding), adding more AI agents makes things worse; when AI is the bottleneck (execution), automation helps.

## Key Aspects
- **Human bottleneck**: When the human needs to think, make architectural decisions, or review carefully, more agents create more noise and distraction without improving throughput
- **AI bottleneck**: When the constraint is execution speed (writing boilerplate, generating tests, scaffolding), AI acceleration genuinely helps
- **"Merchants of complexity" problem**: Agents make local decisions that compound into global architectural mess; the human's role is to prevent complexity explosion through deliberate design
- **Low recall in agentic search**: Big codebases lead to agents missing existing code, duplicating functionality, and introducing inconsistencies -- the human's system knowledge compensates
- **Good agent tasks**: Scoped work that doesn't require full system understanding, tasks where the evaluation function is clear, non-mission-critical work, rubber ducking
- **Architecture by hand**: API design, system architecture, and core abstractions should be written by humans where friction aids understanding and taste matters

## Related Concepts
- [[slowness-agent-coding]] -- the broader argument for deliberate slowness in AI-assisted development
- [[harness-engineering-overview]] -- the discipline of designing agent systems that respect bottleneck boundaries
- [[autoregressive-failure]] -- analogous compounding problem in model generation

## Sources
- [[slowness-agent-coding]]
