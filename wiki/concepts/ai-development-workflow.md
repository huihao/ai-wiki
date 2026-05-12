---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# AI Development Workflow

## Definition
AI development workflow refers to the set of practices, anti-patterns, and team-level processes for integrating LLMs into software development in a way that maintains code quality, team productivity, and architectural coherence rather than introducing technical debt.

## Key Aspects
- **Three anti-patterns to avoid**: (1) Magic Bandaid—treating LLMs as oracles for instant fixes without understanding, (2) Review Time Sink—flooding reviewers with unprocessed AI-generated code, (3) Context Fragmentation—losing architectural coherence by auto-accepting AI output without documenting decisions.
- **Planning before execution**: Developers should explore the solution space independently first, then compare with LLM recommendations, rather than skipping the planning step entirely.
- **Human reasoning preservation**: Every AI-generated artifact should include human-written reasoning about "why" not just "what"—commit messages, PR descriptions, and code comments must carry decision context.
- **Self-review before team review**: Developers should proofread, trim, and understand AI-generated PRs before tagging teammates; reviewers should not be the first eyes on AI work.
- **Context documentation**: Include notes on what approaches did not work and why, so future developers (and agents) avoid repeating dead ends.
- **Team communication first**: AI tools amplify individual capabilities but do not replace human collaboration; five-minute conversations with coworkers often solve problems better than prompt engineering.

## Related Concepts
- [[coding-agent]]
- [[agents-md]]
- [[ai-in-education]]

## Sources
- [[how-to-use-llms-without-driving-your-team-mad]]
- [[jimmy-thigpen]]
- [[llm-anti-patterns]]
