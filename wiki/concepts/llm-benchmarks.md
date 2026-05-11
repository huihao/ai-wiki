---
name: LLM Benchmarks
type: concept
tags: [evaluation, llm, metrics]
---

# LLM Benchmarks

> Standardized evaluation systems measuring large language model capabilities across various tasks.

## Definition

LLM benchmarks are evaluation frameworks designed to assess and compare model performance on specific tasks. They provide standardized metrics for reasoning, code generation, language understanding, and other capabilities.

## Key Benchmarks

### Reasoning
- **GPQA** — Graduate-level reasoning problems requiring multi-step logical deduction
- **ARC-AGI** — Abstraction and reasoning corpus for general intelligence

### Code Generation
- **HumanEval** — Programming tasks measuring code correctness and functionality
- **MBPP** — Mostly Basic Python Problems benchmark

### Knowledge and Understanding
- **MMLU** — Massive Multitask Language Understanding across 57 subjects
- **HellaSwag** — Commonsense reasoning about everyday situations

### Language Tasks
- **WinoGrande** — Coreference resolution and commonsense reasoning
- **LAMBADA** — Long-range linguistic dependencies

### Specialized
- **SWE-bench** — Software engineering tasks from real GitHub issues
- **MathVista** — Mathematical reasoning with visual inputs

## Evaluation Dimensions

1. **Accuracy** — Correctness of outputs
2. **Robustness** — Performance across diverse inputs
3. **Efficiency** — Resource usage and speed
4. **Safety** — Handling edge cases and adversarial inputs
5. **Alignment** — Following instructions accurately

## Limitations

- Benchmarks may saturate quickly as models improve
- Real-world performance differs from benchmark scores
- Data contamination can inflate scores
- Benchmarks don't capture all practical capabilities
- Cultural and domain biases in evaluation data

## Usage

Benchmarks help developers:
- Compare model capabilities across providers
- Select appropriate models for specific tasks
- Track model improvements over time
- Identify model strengths and weaknesses

## Best Practices

- Use multiple benchmarks, not single scores
- Consider specific use case requirements
- Test on representative real-world tasks
- Account for benchmark limitations and biases

## Sources

- [[llm-news-today-april-2026]] — Benchmark tracking platform

## Related Entities

- [[llm-stats]] — Platform tracking benchmarks and releases
- [[epoch-ai]] — Maintains benchmark index

## Related Concepts

- [[model-evaluation]] — Systematic assessment of AI models
- [[benchmarking]] — Performance measurement methodology