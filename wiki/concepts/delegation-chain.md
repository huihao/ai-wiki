---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, security]
sources: 2
---

# Delegation Chain

## Definition
A delegation chain in agent systems is an identity and authorization chain that tracks which human or agent delegated authority to a given tool call, enabling zero-trust security, auditing, and accountability. It ensures every action taken by an agent can be traced back through the chain of trust to an authorized human operator.

## Key Aspects
- Agent Persona provides a workload identity for each agent, enabling access control at the agent level
- The delegation chain records the full path of authorization from human to agent to tool call
- Critical for compliance with SOC2 Type II, ISO 27001, and GDPR requirements
- Prevents unauthorized tool use by verifying that every call has a valid delegation path
- Enables fine-grained access control: different agents can have different tool permissions based on their delegation context
- Every tool call is verified against the delegation chain, implementing zero-trust principles
- In Claude Code, MCP tools require isSourceAdminTrusted verification before execution

## Related Concepts
- [[agent-permissions]]
- [[fail-closed]]

## Sources
- [[understanding-agent-tools]]
- [[volcano-engine]]
