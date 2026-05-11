---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, automation, deployment]
sources: 1
---

# Full AI Automation Workflow

## Definition

Full AI automation workflow is the end-to-end automation of the software delivery lifecycle — from requirement gathering through design, development, testing, and deployment — using AI agents with minimal human intervention. Tencent's "full automation" pilot demonstrates the L1 (manual) to L2 (human-AI collaboration) to L3 (full automation) progression, where L3 achieves autonomous requirement-to-deployment delivery through a dual framework of delivery and governance.

## Key Aspects

- Three-stage evolution: L1 (pure manual) → L2 (human-AI collaboration: AI generates code from tech plans) → L3 (end-to-end autonomous delivery from requirements to deployment)
- The L3 formula: AI Full-Auto Delivery = LLM + Harness Engineering (workflow + knowledge base + skills management) + Business Engineering (skills + knowledge base sedimentation)
- Dual framework architecture: Delivery Framework (demand → design → dev → test → release with gates and self-repair) + Governance Framework (runtime logs + metrics + Spec knowledge + auto-inspection + auto-fix)
- Four core challenges for L3: standardized delivery process, structured requirement descriptions, high-quality searchable knowledge base, standardized reusable Skills
- PRD-Agent handles requirement writing, clarification, and scoring with standardized templates and quality gates — the first automated step in the pipeline
- L2 achievements from Tencent's pilot: cross-platform reduction (6 platforms → 1 internal loop), process steps (12 → 5, target 2), test environment creation (60%+ time saved), deployment (50% time saved)
- Key caveat: full end-to-end automated test case generation was "not yet achieved; significant iteration space remains" — governance and quality assurance remain the hardest parts to automate

## Related Concepts

- [[harness-engineering]]
- [[workflow-automation]]
- [[spec-driven-development]]

## Sources

- [[full-ai-automation-requirements-to-deployment]]
