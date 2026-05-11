---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Prompt Template

## Definition
A prompt template is a reusable, structured format for constructing AI prompts that consistently produces better results by organizing instructions, constraints, examples, and edge cases into a predictable layout. In disciplined AI coding workflows, prompt templates replace ad-hoc prompts with standardized forms that improve reliability and reproducibility.

## Key Aspects
- A well-designed prompt template includes: goal (one sentence), rules (3-7 bullets), examples (2 input-output pairs), and edge cases (2 failure scenarios)
- The template structure forces the human to think through the problem before engaging the AI, shifting value from typing speed to problem decomposition
- Templates should request one small, focused piece rather than an entire application to reduce verification burden
- Including test assertions (e.g., Node assert) in the template ensures the AI produces verifiable output
- When tests fail, the template prompts reflection: "Which rule was unclear, missing, or contradictory?" enabling iterative improvement
- Prompt templates in the AI Coding Loop workflow: goal, rules, examples, edge cases, deliverable specification, and pre-code sanity check
- The "Before giving code, list possible mistakes and confirm rules" instruction adds a safety check before generation

## Related Concepts
- [[ai-coding-loop]]
- [[verification]]
- [[incremental-development]]

## Sources
- [[ai-coding-loop]]
