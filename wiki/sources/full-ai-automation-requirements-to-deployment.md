---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# 从提需求到部署发布，全AI全自动化后，研发效能全面跃升

## Metadata

- **Author**: jacksondeng, yuxuanlai, gcchaoguo (Tencent)
- **Date**: 2024-09-26
- **URL**: https://mp.weixin.qq.com/s/fLiyW2t4CBOnWjx2Km8d8g
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/harness/从提需求到部署发布，全AI全自动化后，研发效能全面跃升.md`

## Summary

Tencent's "审核" team describes their journey from L1 (manual) → L2 (human-AI collaboration) → L3 (full automation) in software delivery. The article details their OpenClaw/CodeBuddy-based pilot covering 6 requirements with 80+ score on both requirement and technical plan quality, 90%+ code adoption rate, and 80%+ AI generation rate. They outline the dual framework needed for L3: AI Full-Auto Delivery Framework + AI Full-Auto Governance Framework.

## Key Takeaways

- **Three-stage evolution**: L1纯人工 → L2人机协同 (current, "tech plan generates code") → L3全自动 (target: end-to-end demand to deployment).
- **Four core challenges for L3**: standardized delivery process, structured requirement descriptions, high-quality searchable knowledge base, standardized reusable Skills.
- **L2 achievements**: AI tech specs + templated execution lists + MCP tool integration + AI self-summarization. Cross-platform reduction: 6 platforms → CodeBuddy internal闭环; steps: 12 → 5 (ideal: 2); test env creation: 60%+ time saved; deployment: 50% time saved.
- **L3 formula**: AI Full-Auto Delivery = LLM + Harness Engineering (workflow + knowledge base + skills management) + Business Engineering (skills + knowledge base沉淀).
- **Dual framework architecture**: Delivery Framework (demand → design → dev → test → release with gates and self-repair) + Governance Framework (runtime logs + metrics + Spec knowledge + auto-inspection + auto-fix).
- **PRD-Agent**: requirement writing, clarification, and scoring agent with standardized templates and quality gates.
- **Code knowledge base + business knowledge base**: enables high-quality tech plan generation and rapid code familiarization.
- **Current state**: delivery framework and skills management still offline/decentralized; governance framework still in planning. Migration to AMS unified platform planned.

## Entities Mentioned

- [[tencent]] — author's organization
- [[openclaw]] / CodeBuddy — AI coding platform used for pilots
- [[alibaba]] — AMS platform mentioned for future migration

## Concepts Mentioned

- [[harness-engineering-overview|Harness Engineering]] — explicit framework for full automation
- [[understanding-spec-driven-development-kiro-spec-kit-tessl|Spec-Driven Development]] — structured requirements and knowledge bases
- [[model-context-protocol|MCP]] — tool integration for test env, DDL, automated testing
- [[llm-agents]] — multi-agent "N Agent delivery mode" as L3 target
- [[answer-ai-source|AI Governance]] — runtime monitoring, auto-inspection, auto-fix
- [[claude-code|Feature Flags]] — not explicitly named but implied in safe deployment

## Raw Notes

- Six pilot requirements completed three iteration rounds with OpenClaw/CodeBuddy.
- Average conversation rounds: 2; code line adoption rate: 90%+; AI generation rate: 80%+.
- Test phase uses七彩石 config, DDL/DML tickets, 蓝盾 pipeline, lego environment creation via MCP.
- Deployment phase uses无人值守 (unattended) release for智研 release orders.
- Automated test case generation for existing and new APIs in申诉复审场景.
- Note: full end-to-end automated test case generation "not yet achieved; significant iteration space remains."

## Questions / Follow-ups

- What is the actual measured end-to-end time reduction from L1 to L2?
- How does the governance framework plan to handle production incidents without human intervention?
- What are the key blockers preventing migration from offline skills management to centralized AMS?
