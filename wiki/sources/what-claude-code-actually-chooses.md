---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# What Claude Code Actually Chooses

## Metadata

- **Author**: Edwin Ong & Alex Vikati (Amplifying.ai)
- **Date**: 2026-02-17
- **URL**: https://amplifying.ai/research/claude-code-picks
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/What Claude Code Actually Chooses.md`

## Summary

A benchmark study running Claude Code 2,430 times across real repos with open-ended questions. The big finding: Claude Code builds custom/DIY solutions rather than recommending tools in 12 of 20 categories. When it does pick a tool, it picks decisively.

## Key Takeaways

- 3 models × 4 project types × 20 tool categories; 85.3% extraction rate.
- Custom/DIY is the most common single label (252 picks), appearing in 12 of 20 categories.
- When Claude picks a tool, it picks decisively: GitHub Actions 94%, Stripe 91%, shadcn/ui 90%.
- Default stack is JS-ecosystem heavy: Vercel for JS deployment, Railway for Python.
- Model personalities differ: Sonnet 4.5 picks established tools; Opus 4.6 builds custom most (11.4%).
- Recency gradient: newer models pick newer tools (e.g., Drizzle 100% in Opus 4.6 vs. Prisma 79% in Sonnet 4.5).
- Traditional cloud providers (AWS, GCP, Azure) got zero primary deployment picks.

## Entities Mentioned

- Edwin Ong — researcher
- Alex Vikati — researcher
- Amplifying.ai — benchmark platform
- [[anthropic]] — Claude Code

## Concepts Mentioned

- [[flask-vs-fastapi|Build vs buy]] — Claude Code prefers building custom solutions
- Default stack — tools Claude recommends by default
- Recency gradient — newer models prefer newer tools
- [[full-ai-automation-requirements-to-deployment|Deployment split]] — Vercel for JS, Railway for Python
- [[llm-leaderboard-artificial-analysis|Tool leaderboard]] — ranking of AI agent tool preferences

## Questions / Follow-ups

- How do these preferences shift as Claude Code's training data is updated?
- What impact does Claude Code's default stack have on the broader tooling ecosystem?
