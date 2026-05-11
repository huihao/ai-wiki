---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# 一文讲透：Harness Engineering即控制论！

## Metadata

- **Author**: 邬俊杰
- **Date**: 2024-09-26
- **URL**: https://mp.weixin.qq.com/s/_Yn-PRW2kmoOusUbTbi3vQ
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/harness/一文讲透：Harness Engineering即控制论！.md`

## Summary

An essay arguing that Harness Engineering is fundamentally an engineering implementation of cybernetics (控制论). Drawing on Norbert Wiener's 1948 work and Qian Xuesen's Engineering Cybernetics (used in China's "Two Bombs, One Satellite" program), the author maps control theory concepts (information, control, feedback) directly onto AI programming practices. OpenAI's harness engineering report and George's analysis are used as anchors. The article covers progressive disclosure, architectural constraints, observable systems, and the sensor/actuator model for AI coding.

## Key Takeaways

- **Harness Engineering origin**: OpenAI's Feb 2026 report on Codex harness; 3 engineers, 5 months, 1,500 PRs, 100% AI-written, 1M-line system, 90% time saved vs. manual.
- **Seven OpenAI harness principles**: (1) directory not whole manual (progressive disclosure); (2) rules in repo; (3) architectural constraints; (4) AI-observable systems; (5) waiting cost > correction cost; (6) auto cleanup of bad code; (7) human advice in repo.
- **Cybernetics core**: control = information acquisition + feedback + system regulation to achieve goals.
- **Information** eliminates uncertainty; **control** narrows possibility space; **feedback** (especially negative feedback) expands control capability.
- **AI coding as control loop**: [Set goal] → [Sense deviation] → [Apply intervention] → [Eliminate deviation].
- **Three things to tell AI**: what to do (requirements), how to do it (frameworks/constraints reducing possibility space), what tools to use (MCP/skills as sensors/actuators).
- **Domain modeling will not disappear** — it becomes more important as the best way to communicate requirements to AI.
- **Sensors for AI coding**: business-agnostic (lint, compile, security scan) and business-specific (testable business rules).
- **Self-reproducing systems risk**: bad code gets copied by AI reference; like nuclear chain reactions, small initial errors compound exponentially.

## Entities Mentioned

- [[openai]] — published the harness engineering Codex report
- [[mitchell-hashimoto]] / [[hashicorp]] — not explicitly named but HashiCorp co-founder credited with term in some sources (article says HashiCorp co-founder coined term)
- Qian Xuesen (钱学森) — introduced cybernetics to Chinese engineering; wrote Engineering Cybernetics
- [[bert|Norbert Wiener]] — founder of cybernetics, 1948 book
- George (odysseus0z) — X user who wrote "Harness Engineering Is Cybernetics"

## Concepts Mentioned

- [[harness-engineering-overview|Harness Engineering]] — explicitly framed as cybernetics applied to coding
- [[harness-engineering|Cybernetics]] — control theory as theoretical foundation for harness design
- [[progressive-disclosure]] — keeping AGENTS.md ~100 lines as index, loading deep knowledge on demand
- [[model-context-protocol|MCP]] — tools as "Type-C interface" for AI
- [[understanding-spec-driven-development-kiro-spec-kit-tessl|Spec-Driven Development]] — structured requirements as controller inputs
- Negative Feedback — core mechanism for self-correcting AI systems
- [[self-attention|Self-Reproducing Systems]] — control theory concept applied to code quality degradation

## Raw Notes

- The author notes they had the "AI programming = cybernetics" thought independently before seeing OpenAI's article and George's post.
- Three historical parallels for control: centrifugal governor (workers became governor designers), Kubernetes (engineers write descriptors instead of manual ops), Harness Engineering (engineers design environments instead of writing code).
- The曹冲称象 (Cao Chong weighs elephant) story illustrates conjugate control: L (transform problem) → A (solve tractable problem) → L⁻¹ (transform back).
- Lag/overshoot discussion: phase transitions in engineering may require "矫枉过正" (overshoot to correct). AI coding transition may be a leap, not gradual.

## Questions / Follow-ups

- How rigorously can control theory mathematics (transfer functions, stability analysis) be applied to LLM-based systems?
- Does the cybernetics framing suggest new harness design principles not yet explored?
- How does the "waiting cost > correction cost" principle apply in safety-critical domains?
