---
created: 2026-04-27
updated: 2026-04-27
tags: [source, benchmark, leaderboard, software-engineering, ai-evaluation]
sources: 1
---

# SWE-bench Official Leaderboards

## Metadata

- **Maintainer**: SWE-bench team (with OpenAI, Princeton, etc.)
- **Date**: 2024–present
- **URL**: https://www.swebench.com/
- **Fetched**: 2026-04-24
- **Raw file**: `raw/Official Leaderboards.md`

## Summary

Official leaderboards for SWE-bench, the standard benchmark for evaluating language models on real-world software engineering tasks drawn from GitHub issues and pull requests. The page tracks performance across multiple benchmark variants and reports the percentage of resolved instances.

## Key Takeaways

- **SWE-bench Full**: 2,294 instances — the original benchmark.
- **SWE-bench Verified**: 500 human-filtered instances; created in collaboration with OpenAI (Aug 2024).
- **SWE-bench Lite**: Curated subset for less costly evaluation (Mar 2024).
- **SWE-bench Multilingual**: 300 tasks across 9 programming languages.
- **SWE-bench Multimodal**: Issues containing visual elements (Oct 2024).
- **Key tooling**:
  - **SWE-agent** — open-source agent achieving SOTA on SWE-bench Lite (Mar 2025: SWE-agent 1.0).
  - **mini-SWE-agent** — 100-line Python implementation scoring 65% on Verified (Jul 2025).
  - **SWE-smith** — framework for training custom SE agent models (May 2025).
  - **CodeClash** — new evaluation of LMs as goal-oriented developers (Nov 2025).
- **Metric**: % Resolved — percentage of instances successfully solved.
- **Sponsors**: Open Philanthropy, AWS, Modal, Andreessen Horowitz, OpenAI, Anthropic.

## Entities Mentioned

- [[swe-bench]] — the benchmark itself
- [[openai]] — collaborator on Verified subset
- [[university-of-washington|Princeton University]] — original research institution
- [[8-factor-agent-breakdown|SWE-agent]] — open-source SOTA agent
- [[anthropic]] — sponsor
- Andreessen Horowitz — sponsor

## Concepts Mentioned

- [[agent-engineering-source|Software engineering benchmark]] — evaluating LLMs on real coding tasks
- [[llm-agents]] — autonomous systems for code repair and generation
- [[code-generation-with-llms]] — the underlying capability being measured
- Benchmark saturation — concern as models approach high resolution rates

## Raw Notes

Timeline of major releases preserved in raw file. The benchmark has rapidly expanded from a single full set to five variants (Full, Verified, Lite, Multilingual, Multimodal) within ~18 months, reflecting both growing demand for SE evaluation and efforts to make evaluation more accessible.
