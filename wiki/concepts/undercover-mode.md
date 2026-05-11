---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Undercover Mode

## Definition

Undercover Mode is a leak-prevention mechanism in Claude Code that detects when the agent is operating in a non-internal (external or public) repository and automatically strips internal codenames, architecture details, and proprietary information from the system prompt and tool outputs before they enter the context window.

## Key Aspects

- When Claude Code detects that the current repository is not an internal Anthropic repo (via excluded-strings.txt canary detection), it activates Undercover Mode to sanitize outputs.
- The mode can be forced ON but cannot be forced OFF by external configuration, ensuring that Anthropic's proprietary information is never leaked through agent interactions in public codebases.
- This was demonstrated during the Claude Code source leak incident (April 1, 2026): internal codenames and architecture details were present in the source but sanitized in production deployments.
- The mechanism reflects a broader harness engineering principle: the environment layer (what the model can see and do) must enforce constraints that the model itself cannot be trusted to maintain.
- Undercover Mode is part of Claude Code's five-layer context compression system, operating at the layer where tool results are filtered before storage in the context window.
- The canary detection approach (checking for known internal strings) is a pragmatic solution that avoids complex semantic analysis while catching most accidental disclosures.

## Related Concepts

- [[harness-engineering]] -- the discipline of building reliable environments around AI models
- [[context-engineering]] -- managing what information enters the model's context
- [[ai-safety]] -- the broader field of preventing unintended model behaviors

## Sources

- [[harness-engineering-claude-code]]
