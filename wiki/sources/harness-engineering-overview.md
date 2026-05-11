---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# 万字干货：理解 Harness Engineering，看这一篇就够了

## Metadata

- **Author**: TRAE
- **Date**: 2024-09-26
- **URL**: https://mp.weixin.qq.com/s/MzB8-B00GVdJy22j42CRgg
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/harness/万字干货：理解 Harness Engineering，看这一篇就够了.md`

## Summary

A comprehensive overview of Harness Engineering framed as systematic "AI engineering" or "AI infrastructure design." The article uses the "horse and harness" metaphor: AI Agent = SOTA model (wild horse) + Harness (control system) = reliable steed. It presents the R.E.S.T. model for reliable agents (Reliability, Efficiency, Security, Traceability), the PPAF cognitive loop (Perception-Planning-Action-Feedback), a strategic matrix for agent applications, and detailed architecture covering control/data planes, memory tiers, sandbox levels, policy gateways, and metrics.

## Key Takeaways

- **Harness Engineering is not new**: it's a systematic naming and summary of existing practices that emerged after Prompt Engineering and Context Engineering.
- **R.E.S.T. model** for agent reliability: Reliability (recoverable, idempotent, consistent), Efficiency (token budget, latency, throughput), Security (least privilege, sandbox, I/O filtering), Traceability (full-chain tracking, explainable decisions, auditable state).
- **PPAF loop**: Perception → Planning → Action → Feedback/Reflection. Harness Engineering couples four dimensions to this loop.
- **Strategic matrix**: x-axis = execution routing (static vs. dynamic); y-axis = state/context (implicit vs. explicit). Harness Engineering occupies Quadrant 1 (dynamic routing + explicit external state).
- **Harness as bounded REPL container**: wraps the non-deterministic LLM brain, managing full lifecycle from perception to action to reflection.
- **State separation principle**: treat LLM as stateless CPU; all cross-turn state lives in external Harness-managed persistence.
- **Six design principles**: Design for Failure, Contract-First, Secure by Default, Decision/Execution Separation, Everything Measurable, Data-driven Evolution.
- **Sandbox levels**: L1 process isolation → L2 container (Docker) → L3 micro-VM (Firecracker) → L4 full VM (KVM).
- **Policy gateway**: RBAC/ABAC permission check, PII/secret filtering, prompt injection defense, audit logging.

## Entities Mentioned

- [[openai]] — published harness engineering report; Codex reference
- [[mitchell-hashimoto]] — HashiCorp co-founder credited with coining the term
- [[hashicorp]] — Mitchell Hashimoto's company

## Concepts Mentioned

- [[harness-engineering-overview|Harness Engineering]] — the central subject; comprehensive definition and decomposition
- [[prompt-engineering]] — predecessor practice
- [[context-engineering]] — predecessor practice
- [[llm-agents]] — the systems being harnessed
- [[function-calling]] — bridge from text prediction to physical execution
- [[agent-builder-memory-system|Agent Memory]] — tiered memory systems (working/short-term/long-term)
- [[Sandbox Execution]] — levels of isolation for agent actions
- [[on-policy-distillation-source|Policy Gateway]] — security/compliance checkpoint before execution
- [[observability]] — logs, metrics, traces for agent systems

## Raw Notes

- The article notes that as models improve, some harness layers will be internalized into models, while new applications will create new harness needs.
- Token transformation pipeline: information collection → relevance ranking → compression/summarization → budget allocation → template assembly.
- Planning modes mentioned but not fully elaborated in the source text.
- Metrics categories: Task Effectiveness, Quality of Service, Resource Efficiency, Security & Compliance.

## Questions / Follow-ups

- Which specific harness layers are most likely to be internalized by next-generation models?
- How does the R.E.S.T. model compare to other agent evaluation frameworks?
- What are concrete examples of "data-driven evolution" in production harness systems?
