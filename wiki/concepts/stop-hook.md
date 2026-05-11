---
created: 2026-05-11
updated: 2026-05-11
tags: [agent, hooks, tooling]
sources: 0
---

# Stop Hook

## Definition

A mechanism in Claude Code that intercepts the agent's exit attempt and checks whether stopping is allowed. If the completion criteria are unmet (e.g., no completion signal, tests failing, required files missing), the hook blocks the exit and re-injects the original prompt, effectively turning "the model decided to stop" into "the system checks whether stopping is allowed."

## Key Aspects

- Fires when the main agent finishes responding
- Uses exit code 2 to block Claude from stopping
- Re-injects the original prompt when criteria unmet
- Enforces loop continuation at the tooling level
- Different from pure bash loops (independent context windows vs continuous session)

## Related Concepts

- [[ralph-loop]] — Ralph implementations use Stop hooks for run-until-done behavior
- [[hooks]] — event-driven automation in Claude Code

## Sources

- [[what-is-ralph-loop-bash-coding-pattern]] — Stop hook mechanics in Ralph loops
