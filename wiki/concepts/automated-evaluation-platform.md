---
created: 2026-05-11
updated: 2026-05-11
tags: [concept]
sources: 1
---

# Automated evaluation platform

## Definition

An AI-first platform where AI agents autonomously generate test sets, run evaluations (including UI testing via browser connectivity), submit evaluation reports, and iteratively optimize target systems — with human involvement limited to the initial natural-language task description. The platform restricts direct human operations at the API level, ensuring that the entire evaluation-to-optimization loop runs without human labor.

## Key Proponents / Critics

- [[feng-ling|凤聆]] — Built and demonstrated the platform with three case studies

## Related Concepts

- [[rubric]] — Graduated scoring criteria used for subjective quality assessment within the platform
- [[harness-engineering]] — The broader practice; the evaluation platform is a harness for quality assurance
- [[agent-evaluation]] — General frameworks for measuring Agent performance
- [[agent-loop]] — The platform orchestrates agent loops for test generation and evaluation

## Sources

- [[harness-engineering-auto-evaluation-platform]]

## Evolution

Traditional evaluation relies on human-curated test sets and manual execution. The AI-first approach inverts this: the human defines *what* to evaluate (goal + acceptance criteria), and the AI autonomously designs *how* to evaluate (test cases, rubrics, execution, reporting). The overnight optimization variant adds a closed loop where evaluation results feed directly into code changes, with scores improving across rounds (demonstrated: 90.7 → 97.4 → 99.1).
