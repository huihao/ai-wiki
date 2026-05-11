---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Automatic Code Refactoring with AI - Strumenta

## Metadata

- **Author**: Gabriele Tomassetti
- **Date**: 2025-03-28
- **URL**: https://tomassetti.me/automatic-code-refactoring-with-ai/
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/modernization/Automatic Code Refactoring with AI - Strumenta.md`

## Summary

An evaluation of AI-assisted code refactoring across five categories: renaming symbols, small repeated fixes, method implementation, whole-project changes, and foundational dependency migrations. The conclusion: AI helps with small-scale and prototype tasks but is unreliable for mass production refactoring; deterministic tools (OpenRewrite, parsers) remain superior for large-scale changes.

## Key Takeaways

- **Renaming / linting**: Deterministic IDE features (parsing, symbol resolution) are strictly better than AI.
- **Small fixes**: Local ML-based autocomplete (IntelliCode) is useful; cloud LLMs are overkill.
- **Method implementation**: Local and cloud models are "meh"—they can generate plausible code but often confabulate non-existent methods or mismatch interfaces.
- **Whole-project changes**: Cloud agents work eventually but need prodding; local models fail due to lack of project-wide context interfaces.
- **Foundational dependency changes**: AI alone is unreliable. The best approach is using AI to *author recipes* for deterministic tools like OpenRewrite/Spring Boot Migrator, then running those recipes at scale.
- **Legacy languages**: LLM coverage is poor for COBOL, SAS, and especially RPG. Even when syntax is known, lack of real-world training data and broken feedback loops (no compiler on AS/400) limit usefulness.

## Entities Mentioned

- Gabriele Tomassetti — Author; Strumenta.
- [[cursor]] — AI IDE used in experiments.
- [[mistral-ai]] — Codestral local model.
- [[anthropic]] — Claude Sonnet used for cloud experiments.
- Moderne — Maintains OpenRewrite.
- [[phi-4-microsoft-collection|Microsoft]] — Visual Studio, IntelliCode.
- [[ibm]] — Granite LLM; RPG and AS/400 mentioned.

## Concepts Mentioned

- [[automatic-code-refactoring-with-ai|Code refactoring]] — Restructuring code without changing behavior.
- [[automatic-code-refactoring-with-ai|Deterministic refactoring]] — Rule-based tools (OpenRewrite, parsers).
- [[agentic-engine-optimization-source|Agentic refactoring]] — Using LLM agents for project-wide changes.
- Legacy modernization — Refactoring old codebases (COBOL, RPG, SAS).
- [[f1-aws-generative-ai-race-day-resolution|Symbol resolution]] — Why traditional IDEs beat AI for renaming.
- Recipe authorship — Using AI to generate rules for deterministic tools.

## Raw Notes

- The article includes video demonstrations of Cursor attempting dependency updates.
- A key insight: AI is more accurate when the issue is identified first and only the relevant code snippet is provided.
- Local models lack good interfaces for providing whole-project context to agentic workflows.

## Questions / Follow-ups

- Will agentic IDEs improve enough to handle large-scale refactoring reliably, or will deterministic tools always dominate?
- How can organizations build proprietary LLMs fine-tuned on their legacy codebases?
