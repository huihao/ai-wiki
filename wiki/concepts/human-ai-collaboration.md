---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Human-AI Collaboration

## Definition

Human-AI collaboration refers to the partnership between developers and AI tools (such as LLMs and coding assistants) where humans retain ownership of reasoning, planning, and architectural decisions while leveraging AI to accelerate specific tasks like code generation, review, and problem exploration.

## Key Aspects

- Humans must stay in the driver's seat, adding context and reasoning to every AI-generated artifact rather than passively accepting outputs
- Three common anti-patterns undermine collaboration: treating LLMs as oracles ("Magic Bandaid"), letting AI-generated work overwhelm reviewers ("Review Time Sink"), and losing product coherence through unguided generation ("Context Fragmentation")
- Effective collaboration requires understanding the problem before invoking AI; describing a problem in one sentence is a litmus test for readiness
- AI-generated PRs, commits, and code should always include human reasoning about *why* decisions were made, not just *what* was generated
- Self-review before tagging teammates preserves review bandwidth and team trust
- Planning before execution lets humans compare their own ideas with LLM recommendations rather than replacing the planning step entirely

## Related Concepts

- [[llm-anti-patterns]] -- Common mistakes creating technical debt in AI-assisted development
- [[ai-development-workflow]] -- Best practices for integrating LLMs into team processes

## Sources

- [[how-to-use-llms-without-driving-your-team-mad]]
- [[jimmy-thigpen]]
- [[llm-anti-patterns]]
