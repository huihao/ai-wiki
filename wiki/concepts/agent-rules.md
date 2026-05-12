---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 0
---

# Agent Rules

## Definition

Soft constraints and policies that an AI agent must follow during task execution. Unlike hard gates (which block execution), Rules are policies that eliminate chaos and enforce consistency. The agent may forget, selectively ignore, or lazy-bypass rules as task complexity grows — failure modes that increase with rule set size.

## Related Concepts

- [[harness-engineering]] — Rules are the L1 foundation of harness engineering
- [[harness-maturity-model]] — L1 introduces Rules for solo developers
- [[agent-skill]] — Skills tell the AI *how* to do something; Rules tell it *what* must be done
- [[guardrails]] — related concept: safety constraints that prevent harmful outputs

## Sources

- [[ryo-kusnadi-harness-engineering]] — Rules as L1 of the harness maturity model

## Evolution

- **Pre-Rules (L0)**: Throwaway prompts with no constraints. Each task starts from scratch with inconsistent behavior
- **Rules (L1)**: Introduce soft constraints for solo developers. Rules eliminate chaos and enforce consistency. But three failure modes emerge with increasing complexity:
  1. **Forgetfulness**: The model simply forgets to apply a rule
  2. **Selective irrelevance**: The model deems a rule irrelevant to the current context
  3. **Lazy bypass**: The model skips a rule to save computation
  All three increase with rule set size and task complexity
- **Skills (L2)**: Addresses rule failure by converting recurring operations into deterministic playbooks — "If a Rule tells the AI 'this must be done,' a Skill tells the AI 'here is exactly how to do it'"
