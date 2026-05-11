---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Automation

## Definition
Automation in software delivery refers to the progressive elimination of manual steps in the development lifecycle, from requirements gathering through deployment. The maturity model progresses from L1 (fully manual) through L2 (human-AI collaboration) to L3 (full end-to-end automation), with each stage requiring its own governance and quality assurance frameworks.

## Key Aspects
- **Three-stage evolution**: L1 (manual) -> L2 (human-AI collaboration, e.g., AI generates code from tech specs) -> L3 (full automation from requirement to deployment)
- **Dual framework for L3**: Requires both a Delivery Framework (requirement -> design -> dev -> test -> release with gates and self-repair) and a Governance Framework (runtime logs, metrics, knowledge bases, auto-inspection, auto-fix)
- **Quality gates**: Automated scoring of requirements and technical plans (80+ scores in pilots), code adoption rates (90%+), and AI generation rates (80%+)
- **Harness Engineering integration**: L3 automation formula is LLM + Harness Engineering (workflow + knowledge base + skills management) + Business Engineering (skills and knowledge base sedimentation)
- **PRD-Agent**: Specialized agents for automated requirement writing, clarification, and scoring with standardized templates
- **Current limitations**: Full end-to-end automated test case generation and decentralized skills management remain open challenges

## Related Concepts
- [[harness-engineering-overview]] -- the infrastructure enabling reliable automation
- [[bitter-lesson-ai-native]] -- the principle that general methods leveraging computation outperform hand-crafted ones

## Sources
- [[workflow-automation]]
