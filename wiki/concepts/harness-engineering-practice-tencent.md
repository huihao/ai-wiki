---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 1
---

# Harness Engineering Practice at Tencent

## Definition

Harness Engineering Practice at Tencent refers to the SDD-RIPER methodology adopted by Alibaba (Tencent's peer in the Chinese tech ecosystem) for large-model programming, which operationalizes harness engineering principles through a Spec-Driven Development (SDD) framework paired with the RIPER state machine. The methodology constrains model execution order through approval gates, achieving bug rate reductions of 18-37% and requirement cycle compression from 1-2 weeks to 3-4 days.

## Key Aspects

- **RIPER State Machine**: Research (fact-locking) -> Innovate (multi-option design) -> Plan (atomic implementation checklist) -> Execute (strict plan adherence) -> Review (three-axis quality check) -> Archive (knowledge persistence)
- **SDD Core Tenets**: No Spec, No Code; Spec is Truth; Reverse Sync (fix docs before code when discrepancies arise)
- **Three-Layer Context Strategy**: Spec (task-level truth) -> CodeMap (single-project index) -> ProjectMap (multi-project navigation) for managing complex codebases
- **Key Team Rule**: No code changes without Plan approval; this human gate prevents autonomous agents from diverging from specifications
- **Token Economics**: Using cheap input tokens (1-10% of output cost) to replace expensive output tokens and reduce conversation rounds from 20 to 3-5
- **Three-Phase Team Capability Building**: Month 1-2 (can use), Month 2-4 (can build skills), Month 4-12 (can evolve harness automatically)

## Related Concepts
- [[harness-engineering-is-cybernetics]]
- [[git-workflows]]

## Sources
- [[sdd-riper-team-guide]]
