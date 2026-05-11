---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Harness Engineering：AI 能在真正"出事会炸"的后端系统里写代码吗？

## Metadata

- **Author**: 腾讯程序员 / lancelotluo (Tencent)
- **Date**: 2024-09-26
- **URL**: https://mp.weixin.qq.com/s/VJgVPeJ5GZhVwbRtneEk_Q
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/harness/Harness Engineering：AI 能在真正_出事会炸_的后端系统里写代码吗？.md`

## Summary

Tencent's CDN LEGO team explores AI coding in high-risk backend systems serving billions of users. With 1M+ lines of core C++ code and 3M+ lines of modified third-party libraries, LEGO faces combinatorial complexity of 13,824×N theoretical paths. The article documents their Harness Engineering five-layer architecture, adversarial multi-model code review, and systematic feedback loops that achieved ~20% overall efficiency gains while maintaining safety.

## Key Takeaways

- LEGO's answer is not "use AI" but **"harness AI"** — the starting point of Harness Engineering.
- In 20 days, one engineer + AI built the `nonstop` Rust proxy framework (L4/L7, HTTP/3 QUIC, WAF, V8 JS Workers) with 42,052 QPS, 0 errors at 5,000 concurrency, P50 1.1ms latency.
- Catalogued 13典型问题 from 57真实案例 across two projects, with 5 root causes: AI lacks "uncertainty awareness" and "global vision."
- **Five-layer Harness Architecture** around three core elements: context, constraints, and feedback.
- **Four-layer context system**: Agent.md (project constitution) → Security discipline → Domain knowledge (pattern library) → Professional Skills (RFCs, competitor implementations).
- **Three-layer constraint architecture**: Permission security base → Code rules as compiler → Process constraints (tests block subsequent stages).
- **Adversarial multi-model CR**: 3 models parallel review + cross-validation + debate-style discussion (agree/oppose/maintain) + auto-convergence. Solves knowledge blind spots, attention blind spots, and confirmation bias.
- **Feedback loop**: real hooks → pitfall journal → inline `.md` feedback. Real pitfall → rule → skill → A/B validation → retention or annotation.
- Efficiency gains: competitor research 3 person-days → 1 day; protocol security testing 3–5 days → 1 day; code review wait 1–3 days → 30 minutes.

## Entities Mentioned

- [[tencent]] — parent company; LEGO is their CDN core access layer
- LEGO — Tencent CDN's core distributed system (not the toy company)
- OpenSSL — third-party dependency modified in LEGO
- QUIC — protocol supported by both LEGO and nonstop
- Nginx — competitor implementation referenced by research agents

## Concepts Mentioned

- [[harness-engineering-overview|Harness Engineering]] — explicit five-layer architecture for constraining AI in production
- [[understanding-spec-driven-development-kiro-spec-kit-tessl|Spec-Driven Development]] — structured project constitution and skill documents
- [[claude-code-source-leak-harness|Adversarial Code Review]] — multi-model parallel review with cross-validation
- [[context-engineering]] — four-layer context system for AI decision-making
- [[genai-output-control-design-patterns|Deterministic Control]] — constraints下沉到系统层
- [[self-attention|Self-Verification]] — automated testing and feedback loops
- [[answer-ai-source|AI Safety]] — security discipline with positive/negative examples

## Raw Notes

- The nonstop proxy framework is designed with "never stop serving" philosophy — zero-downtime hot reload.
- RFCs are固化 locally (38,068 lines) because AI training data contains outdated RFCs (e.g., RFC 7230/7231 replaced by 9110/9112).
- Competitor research agent team automates investigation: what does RFC say, what does industry do, what's LEGO's difference?
- Misreport rate of adversarial CR is 36%: 9 code issues → only 1 real P0. Document explosion: 8 requirements → 99 files.
- Team capability degradation risk identified: engineers' professional and documentation skills may decline with overuse of AI.
- Role evolution: junior dev → AI operator; senior dev → Harness engineer; architect → human-AI collaboration architect.

## Questions / Follow-ups

- How does the adversarial CR debate mechanism handle cases where models disagree fundamentally?
- What is the long-term maintenance burden of 31 skills and 34 pitfall rules?
- Can the LEGO harness architecture transfer to other high-risk systems (e.g., financial, medical)?
