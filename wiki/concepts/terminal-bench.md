---
created: 2026-04-29
updated: 2026-05-09
tags: [benchmarking, coding-agent]
sources: 1
---

# Terminal Bench

## Definition

Terminal Bench (Terminal-Bench) is a benchmark suite designed to evaluate the real-world coding performance of AI coding agents by testing them on practical terminal-based development tasks. Unlike benchmarks that measure narrow capabilities, Terminal Bench assesses agents on holistic developer workflows — writing code, debugging, running tests, and iterating on solutions — providing a more realistic measure of coding agent utility.

## Key Aspects

- **Real-world task focus**: Tasks are drawn from practical software development scenarios rather than synthetic puzzles, testing agents on their ability to navigate codebases, understand context, and produce working solutions.
- **Terminal-native evaluation**: Tasks are executed in terminal environments, testing agents on their ability to use command-line tools, read file contents, run builds and tests, and iterate based on output — mirroring actual developer workflows.
- **Multi-trial protocol**: Benchmark results are typically averaged across multiple trials (e.g., 5 trials per task) to account for the stochastic nature of LLM generation, providing more reliable performance estimates.
- **Competitive landscape**: Terminal Bench results have shown that minimal, well-designed agents (like pi with 4 core tools and <1000 token prompts) can compete with much more complex systems (Claude Code, Codex, Cursor, Windsurf), suggesting that prompt and tool design matter more than feature count.
- **Agent comparison**: The benchmark enables fair comparison across agent architectures — minimal agents, full-featured IDEs, and hybrid approaches — on a level playing field with standardized task definitions and evaluation criteria.
- **Tool-agnostic assessment**: By focusing on task completion rather than specific tool usage patterns, Terminal Bench measures outcome quality regardless of the agent's internal architecture or approach.

## Related Concepts

- [[coding-agent]]
- [[llm-benchmarks]]
- [[evaluation]]

## Sources

- [[what-i-learned-building-minimal-coding-agent]]
