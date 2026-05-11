---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Self-Repairing

## Definition

Self-repairing is a design capability in agent tool systems where tools, instead of throwing opaque exceptions on failure, return structured error responses with built-in recovery suggestions and allow automatic retry mechanisms. This pattern enables AI agents to recover from failures gracefully and adjust their strategy when tools encounter problems.

## Key Aspects

- Tools return structured errors with `recovery_suggestions` instead of throwing raw exceptions
- Plugins like `ReflectAndRetryToolPlugin` enable automatic retry with adjusted strategies
- A qualified agent tool should be "understandable, safe, and fault-tolerant"
- Tools are the "senses and limbs" connecting LLMs to the real world; their reliability determines agent effectiveness
- Self-repairing capability is the fourth stage in the agent tool design lifecycle (after type safety, LLM-friendly interfaces, and OpenAPI integration)
- Enables agents to learn from tool failures and adapt their approach without human intervention
- Critical for enterprise deployments where manual intervention for every tool failure does not scale
- Complements human-in-the-loop mechanisms (the fifth stage) for critical actions that still require human confirmation

## Related Concepts

- [[agent-tools]] -- Tools connecting LLMs to real-world operations
- [[self-healing]] -- Broader concept of automatic system recovery
- [[human-in-the-loop]] -- Safety mechanism for critical actions
- [[error-handling]] -- Software engineering practice underlying self-repair

## Sources

- [[understanding-agent-tools]]
