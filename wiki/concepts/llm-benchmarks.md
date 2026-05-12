---
created: 2026-04-29
updated: 2026-05-12
tags: [evaluation, llm, metrics]
sources: 4
---

# LLM Benchmarks

## Definition

LLM benchmarks are standardized evaluation frameworks designed to assess and compare model performance on specific tasks. They provide quantitative rankings enabling practitioners to select appropriate models for specific use cases, with platforms like Artificial Analysis and LMArena tracking hundreds of models across multiple metrics.

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

1. **Intelligence Index**: Composite score measuring model capability across benchmarks (top: GPT-5.5 at 60, Claude Opus 4.7 at 57)
2. **Output speed**: Tokens per second throughput
3. **Latency (TTFT)**: Time To First Token — how quickly models begin generating
4. **Pricing**: Cost per 1M tokens, spanning $0.02 to $10.00+
5. **Context window**: Maximum tokens per request, up to 10M tokens (Llama 4 Scout)
6. **Safety**: Handling edge cases and adversarial inputs
7. **Alignment**: Following instructions accurately

## Limitations

- Benchmarks may saturate quickly as models improve
- Real-world performance differs from benchmark scores
- Data contamination can inflate scores
- Benchmarks don't capture all practical capabilities
- Cultural and domain biases in evaluation data

## Platforms

- LMArena — Crowdsourced comparisons from real user interactions
- Epoch AI — Maintains benchmark index and quarterly retrospectives
- Artificial Analysis — 341+ models tracked across intelligence, speed, latency, pricing
- Stanford HAI — Academic benchmark tracking
- Dr. Alan D. Thompson's LifeArchitect.ai — "Gold standard" for post-2020 AI capability tracking

## Related Concepts

- [[model-evaluation]]
- [[benchmarking]]
- [[llm-leaderboards]]
- [[inference-speed]]
- [[llm-pricing]]

## Related Entities

- [[llm-stats]] — Platform tracking benchmarks and releases
- [[epoch-ai]] — Maintains benchmark index
