---
created: 2026-04-28
updated: 2026-04-28
tags: [source, llm, evaluation, benchmark]
sources: 1
---

# Personal LLM Coding Benchmark (source)

## Metadata

- **Author**: Edward Z. Yang (ezyang)
- **Date**: 2025-04-04
- **URL**: https://blog.ezyang.com/2025/04/why-you-should-maintain-a-personal-llm-coding-benchmark/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/ezyang's blog.md`

## Summary

Article advocating for maintaining personal LLM coding benchmarks based on real problems you've encountered. The author argues that popular benchmarks (LiveCodeBench, SWE-bench) measure tasks different from actual user needs, and demonstrates how to build benchmarks incrementally from failed LLM interactions.

## Key Takeaways

- Popular benchmarks measure contest programming and bug fixes, but miss real-world use cases
- Personal benchmarks provide short-term benefits (test prompt changes) and long-term benefits (evaluate new models)
- Strategy: vibe code normally, but when a SOTA LLM fails a task you expected it to pass, add it to benchmark
- Three benchmark types: one-shot tasks (existing), codebase tasks (git commit snapshots), transcript tasks (conversation history)
- Nicholas Carlini's Yet Another Applied LLM Benchmark proves this works: nearly 100 tests from actual conversation history
- Community opportunity: Wikipedia of Coding Benchmarks where everyone publishes personal benchmarks

## Entities Mentioned

- [[ezyang]] — author, maintains ezbench benchmark
- [[nicholas-carlini]] — creator of Yet Another Applied LLM Benchmark, inspiration for personal benchmarks

## Concepts Mentioned

- [[personal-benchmark]] — custom benchmark based on real problems you encounter
- [[llm-evaluation]] — evaluating models on tasks relevant to your actual use
- [[vibe-coding]] — normal coding workflow with LLM assistance
- [[transcript-tasks]] — benchmarks from conversation transcripts for evaluating prompts/rules
- [[context-engineering]] — transcript tasks useful for testing prompt changes

## Raw Notes

- The author's frustration with Reddit/Twitter discourse: people ask "best model" without testing on their actual problems
- Writing tests is labor-intensive but can be vibe-coded: you have failing implementation and evaluation criteria
- Example task: converting asciinema agg (gif output) to plain text frames — frame batching behavior nuance
- Transcript tasks work best for testing if changing prompts or rules improves performance
- Warning: transcript tasks require AI coding systems that don't obscure how it assembles prompts (rules out most closed-source editors)
- Potential to help open-source models: high-quality benchmark data directly from OSS vibe coding community