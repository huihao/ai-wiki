---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, context, memory]
sources: 1
---

# Context Window Management

## Definition

Treating the context window as limited memory (like Commodore 64) rather than infinite storage. More allocation to context window = worse performance and outcomes. Key principle: use context window for one activity only, clear between tasks.

## Key Principles

- Advertised context ≠ usable context: Sonnet advertised 200k, actual ~176k usable
- System prompt + harness overhead consume tokens before you start
- Excessive MCP tool allocation can eat 76k+ tokens
- More allocation → worse performance (needle in haystack problem)
- One activity per session: don't mix backend API + meerkat research + website redesign

## Failure Modes

- Autoregressive queens of failure: mixing unrelated activities in same session
- Context rot: deteriorating outcomes as context grows
- MCP overallocation: installing too many servers without considering token cost
- Aggregate tool consumption: single MCP can expose many tools

## Best Practices

- Clear context window after each task/activity
- Less is more: minimal MCP servers, minimal tool exposure
- Separate sessions for separate activities
- Don't reuse sessions across unrelated tasks

## Related Concepts

- [[context-window]] — the limited memory buffer
- [[model-context-protocol]] — tools consume context space via descriptions
- [[autoregressive-failure]] — mixing activities causes contamination
- [[harness-engineering]] — harness manages context allocation

## Sources

- [[how-to-build-coding-agent-workshop]] — Geoffrey Huntley's context principles
- [[ghuntley-gutter]] — autoregressive queens of failure
- [[ghuntley-allocations]] — when to use MCP, when not to

## Practical Examples

- Backend API session + meerkat research → meerkats appear in website redesign
- Installing many MCP servers → only 100k usable instead of 176k
- Commodore 64 analogy: think of context as 64KB RAM