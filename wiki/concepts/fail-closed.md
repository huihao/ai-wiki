---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, security]
sources: 2
---

# Fail-Closed

## Definition
Fail-closed is a security design principle where the system denies access or halts operation by default when faced with uncertainty, errors, or missing information, rather than allowing potentially dangerous actions to proceed. It ensures that the absence of an explicit permission results in the most restrictive behavior.

## Key Aspects
- In Claude Code's harness engineering, isReadOnly defaults to false (fail-closed for write operations)
- isConcurrencySafe defaults to false, preventing unsafe concurrent execution unless explicitly declared
- Declaring nothing is more restrictive than declaring something -- a conservative default posture
- The LLM Permission Classifier only examines tool_use blocks, not natural language, for authorization decisions
- Five permission layers provide defense in depth: settings rules, hooks, tool attributes, LLM classifier, and circuit breakers
- Circuit breakers everywhere: compression fails after 3 consecutive failures, permissions after 3 or 20 refusals
- Error messages are withheld during recovery loops to prevent cascading failures to dependent systems
- Prevents "death spirals" where API errors trigger hooks that trigger more errors in infinite loops

## Related Concepts
- [[ebpf-verifier]]
- [[delegation-chain]]

## Sources
- [[harness-engineering-claude-code]]
- [[index]]
