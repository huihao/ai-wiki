---
created: 2026-04-27
updated: 2026-04-28
tags: [entity, benchmark, software-engineering, ai-evaluation]
sources: 2
---

# SWE-bench

## Summary

SWE-bench is the standard benchmark for evaluating large language models on real-world software engineering tasks. It consists of GitHub issues and their corresponding pull requests from popular Python repositories, testing whether an LLM or agent can understand a bug report, locate the relevant code, and generate a correct patch. It has become the de facto leaderboard for AI software engineering capabilities.

## Key Attributes

- **Full name**: SWE-bench (Software Engineering Benchmark)
- **Launched**: 2023–2024
- **Maintainers**: Princeton NLP group, with contributions from OpenAI and the broader community
- **Variants**:
  - **Full**: 2,294 instances
  - **Verified**: 500 human-filtered instances (Aug 2024, with OpenAI)
  - **Lite**: Low-cost evaluation subset (Mar 2024)
  - **Multilingual**: 300 tasks across 9 languages
  - **Multimodal**: Visual-element issues (Oct 2024)
- **Metric**: % Resolved
- **Key tools**:
  - [[8-factor-agent-breakdown|SWE-agent]] — open-source agent, SOTA on Lite
  - [[8-factor-agent-breakdown|mini-SWE-agent]] — minimal 100-line implementation, 65% on Verified
  - [[swe-bench|SWE-smith]] — training framework for SE agents
  - CodeClash — goal-oriented developer evaluation
- **Sponsors**: Open Philanthropy, AWS, Modal, Andreessen Horowitz, OpenAI, Anthropic

## Related Entities

- [[openai]] — collaborated on Verified subset
- [[university-of-washington|Princeton University]] — originating research group
- [[8-factor-agent-breakdown|SWE-agent]] — leading open-source agent for the benchmark
- [[anthropic]] — sponsor and participant

## Related Concepts

- [[agent-engineering-source|Software engineering benchmark]] — the category of evaluation
- [[llm-agents]] — autonomous systems evaluated on SWE-bench
- [[code-generation-with-llms]] — core capability tested
- Benchmark saturation — as models improve, benchmarks need expansion

## Sources

- [[official-leaderboards|SWE-bench Official Leaderboards]] — current rankings and variant descriptions
- [[official-leaderboards]] — additional variant details and news

## Contradictions / Open Questions

- Rapid benchmark expansion (5 variants in 18 months) suggests the original benchmark may be approaching saturation or was too costly for routine evaluation.
- The 65% score on Verified by a 100-line agent (mini-SWE-agent) raises questions about whether the benchmark is becoming too easy or whether agent design has dramatically improved.
