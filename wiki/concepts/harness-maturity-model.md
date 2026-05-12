---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# Harness Engineering Maturity Model

## Definition

A 5-level framework (L0–L4) for progressively adopting AI engineering harnesses, from throwaway scripts to platform-scale autonomy. Each level introduces new constraints and mechanisms, building on the previous level rather than replacing it.

## Key Proponents / Critics

- Geoffrey Huntley — originated the broader harness engineering concept
- [[ryo-kusnadi]] — practical implementation guide with Go project example

## Related Concepts

- [[harness-engineering]] — the overall practice
- [[agent-rules]] — L1: soft constraints/policies
- [[agent-skill]] — L2: SOPs/playbooks for repeated operations
- [[subagents]] — L3: role division for complex systems
- [[model-context-protocol]] — L4: external tool integration via MCP

## Sources

- [[ryo-kusnadi-harness-engineering]] — practical implementation guide

## Evolution

- **L0 (Throwaway scripts)**: Ad-hoc prompts, no structure. Each task starts from scratch
- **L1 (Solo dev constraints)**: Introduce Rules — soft constraints that eliminate chaos and enforce consistency. Policies the AI follows but may selectively ignore as complexity grows
- **L2 (Production startup feedback loops)**: Add Skills — SOPs/playbooks that turn recurring operations (compile, test, validate) into deterministic, repeatable workflows
- **L3 (Multi-service specialization)**: Introduce Sub-Agents — split AI roles (planner, coder, tester) when a single agent can't hold all context. Prevents regression and manages complexity
- **L4 (Platform-scale autonomy)**: MCP integration — connect AI agents to external tools and services, enabling autonomous operation at platform scale
- **Key progression**: Rules → Skills → Sub-Agents → MCP. Build in this order; each level is prerequisite for the next
