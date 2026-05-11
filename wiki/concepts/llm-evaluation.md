---
created: 2026-04-30
updated: 2026-05-09
tags: [evaluation]
sources: 7
---

# LLM Evaluation

## Definition

LLM evaluation encompasses the methods, benchmarks, metrics, and methodologies used to assess the capabilities, performance, quality, and safety of large language models. It spans standardized benchmarks that rank models on leaderboard-style leaderboards (intelligence, speed, latency, cost), task-specific evaluations (code generation, reasoning, instruction following), and personalized benchmarks calibrated to individual use cases. Evaluation is critical for model selection, prompt engineering, fine-tuning validation, and tracking progress toward more capable AI systems.

## Key Aspects

- **Standardized leaderboards and benchmarks**: Large-scale comparison platforms rank 100+ models across dimensions including intelligence score, output speed (tokens/second), latency (time to first token), price, and context window size. Categories include reasoning models, open-weights models, and multimodal models. Examples include Artificial Analysis, LMSys Chatbot Arena, and MMLU.
- **Intelligence scoring**: Composite metrics that aggregate performance across multiple task types (reasoning, coding, math, knowledge, instruction following) into a single score. Top models like GPT-5.5, Claude Opus, and Gemini Pro are compared using these indices.
- **Personal and custom benchmarks**: Standardized benchmarks (SWE-bench, LiveCodeBench) measure tasks that may not align with real-world use cases. Maintaining personal benchmarks based on actual failed LLM interactions provides more actionable evaluation data. Three benchmark types are identified: one-shot tasks, codebase tasks (git commit snapshots), and transcript tasks (conversation history).
- **Eval-driven development**: Systematic approach where evaluation suites are developed alongside the application, enabling regression testing of prompt changes, model upgrades, and rule modifications. Ground-truth examples of expected outputs are maintained for continuous validation.
- **Evaluation dimensions**: Models are assessed on intelligence/capability, cost efficiency (price per million tokens), throughput (tokens per second), latency (time to first token), context window capacity, and safety/alignment properties. Different use cases weight these dimensions differently.
- **Methodology evolution**: Evaluation has shifted from static benchmarks to dynamic, contamination-resistant approaches. Personal benchmarks address the gap between leaderboard performance and production relevance. The "Wikipedia of Coding Benchmarks" concept proposes community-shared personalized evaluation suites.
- **Qualitative vs. quantitative evaluation**: Beyond numerical metrics, evaluation includes human preference ranking (ELO-style from Chatbot Arena), side-by-side comparisons, and subjective assessments of output quality, helpfulness, and safety.
- **Domain-specific evaluation**: Specialized benchmarks exist for code generation (SWE-bench), mathematical reasoning (MATH, GSM8K), scientific knowledge, multilingual capability, and long-context understanding. Domain-specific evaluation is essential because leaderboard rankings do not transfer uniformly across use cases.

## Related Concepts

- [[llm-benchmarks]] -- specific benchmark suites for language model evaluation
- [[ai-benchmarks]] -- broader AI evaluation frameworks
- [[model-evaluation]] -- general model assessment methodologies
- [[eval-driven-development]] -- systematic eval-first development practices
- [[personal-benchmark]] -- custom evaluation suites for individual workflows
- [[llm-leaderboards]] -- ranked comparison platforms
- [[model-comparison-platforms]] -- tools for side-by-side model evaluation
- [[arena-evaluation-methodology]] -- human preference ranking approaches
- [[llm-diversity-evaluation]] -- assessing model output diversity

## Sources

- [[llm-leaderboard-comparison-100-models]] -- comprehensive leaderboard ranking 100+ models across key metrics
- [[personal-llm-benchmark]] -- ezyang's case for maintaining personal coding benchmarks
- [[nicholas-carlini]] -- Yet Another Applied LLM Benchmark from real conversation history
- [[eugene-yan]] -- practical LLM evaluation patterns and eval-driven development
- [[writing-eugene-yan]] -- catalog including extensive evaluation methodology content
- [[ezyang]] -- blog posts on evaluation practices and model selection
- [[personal-benchmark]] -- custom benchmarking based on real problems encountered
