---
created: 2026-04-28
updated: 2026-05-09
tags: [benchmark, evaluation, nlp]
sources: 0
---

# MMLU

## Definition

Massive Multitask Language Understanding (MMLU) is a benchmark that evaluates the knowledge and reasoning capabilities of language models across 57 academic subjects ranging from STEM fields (mathematics, physics, computer science) to humanities (history, philosophy, law) and professional domains (medicine, business). It consists of multiple-choice questions drawn from university-level exams, providing a standardized way to measure how broadly and accurately a model has learned. MMLU has been one of the most widely reported benchmarks for comparing large language models, though it has faced criticism for potential data contamination and ceiling effects as models approach human-expert performance.

## Key Proponents / Critics

- Dan Hendrycks — Lead author of the original MMLU paper, researcher at the Center for AI Safety
- Collin Burns — Co-author who contributed to the benchmark's development
- Several researchers have critiqued MMLU for data contamination issues, where benchmark questions appear in model training data

## Related Concepts

- [[ai-benchmarks]] — MMLU is one of the most prominent benchmarks in the AI evaluation ecosystem
- [[llm-evaluation]] — MMLU scores are a standard component of LLM evaluation suites
- [[natural-language-processing]] — MMLU tests language understanding capabilities developed through NLP research
- [[machine-learning]] — The benchmark draws on questions from diverse ML-relevant academic fields

## Related Entities

- [[meta]] — Models like LLaMA are commonly evaluated on MMLU
- [[deepseek]] — DeepSeek models report MMLU scores in their evaluations
- [[google-deepmind]] — Gemini models are benchmarked on MMLU

## Sources

- No wiki source pages currently cover MMLU directly.

## Evolution

- **2021**: MMLU paper published by Dan Hendrycks et al., establishing a new standard for broad knowledge evaluation
- **2023**: GPT-4 achieves approximately 86.4% on MMLU, approaching human-expert performance (~89.8%)
- **2024**: MMLU-Pro variant introduced with harder questions and 10-choice format to address saturation concerns; also MMLU-Redux improves question quality
- **2025**: MMLU remains widely reported but is increasingly supplemented by harder benchmarks like GPQA and ARC-AGI for frontier model evaluation
