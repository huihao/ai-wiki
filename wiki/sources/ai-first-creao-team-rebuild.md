---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# 你的 AI-First 大概率是假的：一个 25 人团队拆掉流程重建的完整样本

## Metadata

- **Author**: Kinpoe
- **Date**: 2024-09-26
- **URL**: https://mp.weixin.qq.com/s/wPtZ7zqZb3Ce9yn4HoO-rQ
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/harness/你的 AI-First 大概率是假的：一个 25 人团队拆掉流程重建的完整样本.md`

## Summary

A case study of CREAO, a 25-person agent-platform startup (10 engineers), that rebuilt its entire engineering workflow around AI as the primary builder. Unlike "AI-assisted" teams that merely add AI tools to unchanged processes, CREAO re-architected for AI-first: 99% production code written by AI, feature cycles collapsed from 6 weeks to hours, and 3–8 daily production deploys. The article details their harness stack (monorepo, GitHub Actions CI/CD, Claude Opus CR, feature flags, automated triage) and organizational transformation (Architect + Operator roles).

## Key Takeaways

- **AI-assisted vs. AI-first**: Most teams add AI to existing sprints/Jira/QA; AI-first assumes AI is the primary builder and redesigns everything around it. The difference is multiplicative, not incremental.
- **Harness engineering** was independently discovered by CREAO before OpenAI named it; Stanford Meta-Harness research shows same model with different harnesses can vary 6x in performance.
- **Monorepo decision**: moved all code to a single repo so AI can see everything — fragmented codebases are invisible to agents.
- **CI/CD pipeline**: 6-stage GitHub Actions (verify → build dev → test dev → deploy prod → test prod → release), all mandatory, no manual override.
- **AI Code Review**: Claude Opus 4.6 runs 3-round parallel review on every PR as a gate, not a suggestion.
- **Automated ops loop**: 9:00 UTC health workflow → 10:00 triage engine clustering errors → Linear tickets with severity, logs, investigation paths → auto-close on fix verification.
- **Role collapse**: Architect (1–2 people, design SOPs and harness) + Operator (everyone else, investigate/validate/approve). Junior engineers adapt faster than seniors.
- **One-person companies**: CTO predicts they will become common if one Architect + agents can do the work of 100 people.

## Entities Mentioned

- [[creao]] — 25-person agent platform startup; subject of the case study
- [[openai]] — named the harness engineering concept in Feb 2026
- [[anthropic]] — Claude Opus 4.6 used for code review
- [[github-nousresearch-hermes-agent|GitHub]] — Actions, PRs, merge queue via Graphite
- [[positional-encoding|Linear]] — issue tracker used as human interface layer
- Sentry — error monitoring cross-referenced with CloudWatch
- Statsig — feature flag and A/B testing platform
- Graphite — PR stacking and merge queue tool
- [[aws]] — infrastructure (auto-scaling, CloudWatch, rollback)
- Business Insider — journalist quoted

## Concepts Mentioned

- [[harness-engineering-overview|Harness Engineering]] — explicit practice; core to CREAO's workflow
- [[ai-first]] — organizational redesign assuming AI is primary builder
- [[vibe-coding-is-dead-heres-what-replaced-it|Vibe Coding]] — criticized as prototype-only, insufficient for production
- Monorepo — architectural choice to make codebase visible to agents
- [[claude-code|Feature Flags]] — Statsig gating for safe deployment
- Automated Triage — self-healing production error loop
- [[context-engineering]] — structured signals for AI observability

## Raw Notes

- Three bottlenecks forcing rebuild: product management (weeks of planning for hours of AI building), QA (3 days testing for 2 hours of AI delivery), and headcount (25 vs. competitors' 100x).
- All three lines — design, implementation, testing — must run AI speed; any manual step becomes the bottleneck.
- Management collapsed from 60% to <10% of CTO's time; they became a builder again.
- Key principle: don't fire engineers for production bugs; fix the harness (review, testing, guardrails) instead.
- AI-native extended beyond engineering: release notes auto-generated, feature videos AI-generated, social media auto-published.
- Transition cost was real: employee uncertainty, CTO working 18-hour days, senior engineers questioning their value, 2 weeks of拆旧建新 unverified.

## Questions / Follow-ups

- How does CREAO's harness handle security and compliance requirements?
- What is the attrition rate during such a radical workflow transition?
- How does the "Architect" role differ from traditional Tech Lead or Staff Engineer?
