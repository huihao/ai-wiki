---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# SDD-RIPER 团队落地指南：如何让整个团队在一周内跑通大模型编程

## Metadata

- **Author**: Alibaba tech blog (阿里妹)
- **Date**: 2024-09-26
- **URL**: https://mp.weixin.qq.com/s/7-9MkYxvt3brpssxv3tOvg
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/harness/SDD-RIPER 团队落地指南：如何让整个团队在一周内跑通大模型编程.md`

## Summary

A comprehensive team adoption guide for large-model programming using the SDD-RIPER methodology. SDD (Spec-Driven Development) provides persistent context and memory; RIPER is an approval-driven state machine constraining model execution order. The article claims bug rates drop 18% (Java) to 37% (non-primary languages) and requirement cycles compress from 1–2 weeks to 3–4 days. It covers the full RIPER workflow (Research → Innovate → Plan → Execute → Review), team deployment SOP, and a 7-day pilot rollout plan.

## Key Takeaways

- **Four engineering pain points** of team AI adoption: context rot, review paralysis, maintenance discontinuity, and code distrust.
- **SDD core tenets**: No Spec, No Code; Spec is Truth; Reverse Sync (fix docs before code).
- **RIPER workflow**: Research (fact-locking) → Innovate (multi-option design) → Plan (atomic implementation checklist) → Execute (strict Plan adherence) → Review (three-axis quality check) → Archive (knowledge沉淀).
- **Three-layer context strategy for complex projects**: Spec (task-level truth) → CodeMap (single-project index) → ProjectMap (multi-project index).
- **Code Map** is a long-term asset; **Context Bundle** is disposable per-task input; **Spec** is the core asset.
- **Key team rule**: 未经 Plan Approved 不得改代码 (no code changes without Plan approval).
- **Economics**: use input tokens (cheap: 1–10% of output cost) to replace expensive output tokens and reduce conversation rounds from 20 to 3–5.
- **Three-phase team capability building**: Month 1–2 (can use), Month 2–4 (can build skills), Month 4–12 (can evolve harness automatically).

## Entities Mentioned

- [[alibaba]] — publishing organization; practices described are from Alibaba teams
- [[qwen]] — mentioned as internal model for dual-mode collaboration
- [[openai]] — GPT-5.4 referenced as strong model for light version

## Concepts Mentioned

- [[understanding-spec-driven-development-kiro-spec-kit-tessl|SDD]] — document-driven development with Spec as "source of truth"
- [[sdd-riper-team-guide|RIPER]] — approval-driven state machine: Research, Innovate, Plan, Execute, Review
- [[harness-engineering-overview|Harness Engineering]] — the broader framework SDD-RIPER fits within
- [[context-engineering]] — structured context delivery via CodeMap/ProjectMap/Spec
- [[context-rot]] — AI forgetting constraints in long conversations
- [[claude-code-source-leak-harness|Code Map]] — function/project-level code topology index
- [[modernizing-project-files-with-ai-dotnet|Project Map]] — multi-project navigation layer for complex engineering
- Reverse Sync — fix Spec before fixing code when discrepancies found

## Raw Notes

- SDD-RIPER ≠ "fundamentalist SDD": the real kernel is the RIPER state machine managing "who decides what at which stage."
- Spec serves two roles: human-readable persistent task context, and model's on-demand attention focuser (loaded only at key nodes, not every round).
- Light version (sdd-riper-one-light) is ~800–1,000 tokens; standard version ~3,000–3,500 tokens. Both negligible vs. 128K–200K context windows.
- Three-axis review matrix: Spec achievement rate, code consistency diff, code quality & weaknesses.
- Archive produces two assets: human-view concise summary + LLM-view compressed context slice for next session recovery.
- Heavy validation: 1.08 billion production data processed, 4-window parallel development, 447x efficiency in some metrics.

## Questions / Follow-ups

- How does sdd-riper-one-light compare to other agent protocols like OpenAI's Codex harness?
- What is the maintenance burden of keeping CodeMaps current in rapidly evolving codebases?
- Can RIPER's approval gates be automated, or do they always require human review?
