---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Benchmarking

## Definition

Systematic evaluation and comparison of model performance against standardized datasets and metrics. Provides objective measures for model selection, progress tracking, and capability assessment.

## Key Proponents / Critics

- **Proponents**: Academic research community, industry practitioners
- **Criticism**: Benchmark saturation concerns, data contamination issues

## Related Concepts

- [[evaluation-metrics|Evaluation Metrics]] — quantitative performance measures
- [[mmlu|MMLU]] — common LLM benchmark
- [[benchmark-saturation|Benchmark Saturation]] — models reaching near-perfect scores
- [[data-contamination|Data Contamination]] — training data overlap with benchmarks

## Sources

- [[livebench|LiveBench]] — LLM leaderboard platform
- [[swe-bench-leaderboard|SWE-bench Leaderboard]] — code generation benchmark
- [[epoch-ai-benchmarks]] — comprehensive benchmark index with 50+ evaluations

## Evolution

- From academic evaluation tools to production decision frameworks
- Shift toward task-specific benchmarks (coding, reasoning, domain-specific)
- Growing concern about benchmark representativeness and contamination
- Real-world task performance vs. synthetic benchmark performance debate

## Key Benchmarks

- **General**: MMLU, HellaSwag, ARC
- **Coding**: SWE-bench, HumanEval
- **Reasoning**: GSM8K, MATH
- **Domain-specific**: Medical, legal, financial benchmarks emerging

## Practical Considerations

- Multiple benchmarks needed for comprehensive evaluation
- Contamination testing essential for validity
- Production evaluation differs from benchmark evaluation
- Leaderboard dynamics influence model development priorities