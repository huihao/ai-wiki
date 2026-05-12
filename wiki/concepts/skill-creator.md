---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# Skill Creator

## Definition

Anthropic's meta-skill for engineering [[agent-skill]] with ML-like iteration discipline. Applies the design philosophy "like ML for prompt engineering" — using train/test splits, evaluation metrics, iteration loops, and anti-overfitting measures to build and refine Skills systematically rather than ad hoc.

## Key Proponents / Critics

- [[anthropic]] — creator of Skill-Creator as a meta-skill

## Related Concepts

- [[agent-skill]] — the artifact Skill-Creator produces
- [[context-engineering]] — Skills as a context engineering pattern
- [[three-layer-loading]] — loading mechanism Skill-Creator's outputs follow

## Sources

- [[agent-skill-spec-design-patterns]] — primary source

## Evolution

- **Manual skill creation**: Writing SKILL.md files ad hoc, testing by hand, no systematic improvement process
- **Skill-Creator (Anthropic)**: Meta-skill that treats skill engineering like ML — create train/test splits of use cases, define evaluation metrics for skill quality, iterate with the same discipline as model training. Core insight: "Explain WHY, don't just堆砌 MUST" — modern LLMs respond better to reasoning about constraints than rigid ALWAYS/NEVER rules. Also extracts repeated patterns: if test cases independently write similar helper scripts, that's a signal to move the script into `scripts/`
