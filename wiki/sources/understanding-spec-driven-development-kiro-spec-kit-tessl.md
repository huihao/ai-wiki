---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Understanding Spec-Driven-Development: Kiro, spec-kit, and Tessl

## Metadata

- **Author**: Birgitta Böckeler
- **Date**: 2025-10-15
- **URL**: https://martinfowler.com/articles/exploring-gen-ai/sdd-3-tools.html
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/Understanding Spec-Driven-Development_ Kiro, spec-kit, and Tessl.md`

## Summary

Thoughtworks technologist Birgitta Böckeler evaluates three tools claiming to implement Spec-Driven Development (SDD): Kiro, GitHub spec-kit, and Tessl. She identifies three levels of SDD (spec-first, spec-anchored, spec-as-source) and finds all three tools still immature, with open questions about real-world usefulness.

## Key Takeaways

- SDD definition still in flux; closest consistent definition compares specs to Product Requirements Documents.
- Three levels: spec-first (write spec then code), spec-anchored (spec lives as source of truth), spec-as-source (human only edits spec, not code).
- **Kiro**: simplest/lightest; Requirements → Design → Tasks workflow; mostly spec-first.
- **spec-kit**: GitHub's CLI-driven SDD; Constitution → Specify → Plan → Tasks; heavily uses checklists.
- **Tessl**: only tool explicitly aspiring to spec-anchored/spec-as-source; 1:1 spec-to-code mapping with `// GENERATED FROM SPEC - DO NOT EDIT`.
- Key concerns: one workflow doesn't fit all sizes, reviewing markdown can be worse than reviewing code, false sense of control despite templates, functional/technical spec separation is hard, MDD parallels suggest spec-as-source may face inflexibility + non-determinism.
- Author's conclusion: spec-first principle is valuable, but term is already semantically diffused.

## Entities Mentioned

- [[birgitta-boeckeler|Birgitta Böckeler]] — author, Thoughtworks
- [[james-h-martin|Martin Fowler]] — publisher/series host
- [[github-nousresearch-hermes-agent|GitHub]] — creator of spec-kit
- [[thoughtworks]] — author's employer

## Concepts Mentioned

- [[understanding-spec-driven-development-kiro-spec-kit-tessl|Spec-driven development]] — documentation-first AI coding approach
- [[spec-rag-ai-programmer|spec-first]] — write spec before code
- [[spec-rag-ai-programmer|spec-anchored]] — spec maintained as living artifact
- [[claude-code-source-leak-harness|spec-as-source]] — spec is the primary editable artifact
- [[agent-builder-memory-system|Memory bank]] — general context files vs. task-specific specs
- [[diffusion-meets-flow-matching|Semantic diffusion]] — term becoming diluted in meaning

## Questions / Follow-ups

- Have any of these three tools matured since this October 2025 evaluation?
- What empirical studies exist on SDD adoption in production teams?
