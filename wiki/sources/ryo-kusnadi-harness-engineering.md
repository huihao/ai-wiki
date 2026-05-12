---
created: 2026-05-12
updated: 2026-05-12
tags: [source]
sources: 1
---

# How To Implement Harness Engineering

## Metadata

- **Author**: Ryo Kusnadi
- **Published**: 2026-05-11
- **URL**: https://levelup.gitconnected.com/how-to-implement-harness-engineering-fe70c558bb7f
- **Accessed**: 2026-05-12

## Summary

Practical guide to implementing Harness Engineering using a minimal Go project (crypto snapshot API) as a running example. Introduces a 5-level maturity model (L0-L4) and breaks down the core components: Rules (soft constraints/policies), Skills (SOPs/playbooks), Sub-Agents (role division), and MCP (tool integration). Focuses on what to build first and in what order.

## Key Takeaways

- **5-level maturity model**: L0 (throwaway scripts) → L1 (constraints for solo devs) → L2 (feedback loops for production startups) → L3 (specialization for multi-service) → L4 (autonomy for platform-scale)
- **Rules = soft constraints, not hard gates**: Policies that eliminate chaos and enforce consistency, but the model may forget, selectively ignore, or lazy-bypass them as complexity grows
- **Skills = SOPs for AI**: Turn recurring operations (compile, test, validate) into deterministic playbooks. "If a Rule tells the AI 'this must be done,' a Skill tells the AI 'here is exactly how to do it'"
- **Sub-Agents = role division**: Split AI roles (planner vs coder vs tester) when a single agent can't hold all context. Prevents regression and manages complexity
- **Key progression**: Build Rules first → then Skills for repeated operations → then Sub-Agents for complex systems → MCP for external tool integration
- **Rules failure modes**: Forgetfulness, selective irrelevance, lazy bypass — all three increase with rule set size and task complexity
- **Practical insight**: The framework looks different surface-level (CI/CD heavy vs script-heavy vs multi-agent) but all solve the same core problem: making AI consistently, reliably deliver desired results

## Entities Mentioned

- (none explicitly named beyond the author)

## Concepts Mentioned

- [[harness-engineering]] — the overall practice
- [[harness-maturity-model]] — L0-L4 progression framework
- [[agent-skill]] — Skills as SOPs for AI agents
- [[agent-rules]] — Rules as soft constraints/policies
- [[subagents]] — role division for complex systems
- [[multi-agent-orchestration]] — multi-agent orchestration patterns

## Questions / Follow-ups

- How does this maturity model compare to Geoffrey Huntley's harness engineering framework?
- What are the quantitative metrics for determining when to advance from one level to the next?
