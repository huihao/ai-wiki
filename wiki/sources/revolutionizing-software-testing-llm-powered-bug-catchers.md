---
created: 2026-04-28
updated: 2026-04-28
tags: [source, research]
sources: 1
---

# Revolutionizing Software Testing: Introducing LLM-powered Bug Catchers

## Metadata

- **Author**: Christopher Foster, Abhishek Gulati, Mark Harman, Inna Harper, Ke Mao, Jillian Ritchey, Hervé Robert, Shubho Sengupta (Meta)
- **Date**: 2025-02-05
- **URL**: https://engineering.fb.com/2025/02/05/security/revolutionizing-software-testing-llm-powered-bug-catchers-meta-ach/
- **Fetched**: 2026-04-24
- **Raw file**: `raw/Revolutionizing software testing_ Introducing LLM-powered bug catchers.md`

## Summary

Meta's Automated Compliance Hardening (ACH) tool uses mutation-guided, LLM-based test generation. It creates targeted mutants and tests that catch specific fault types, moving beyond coverage-focused testing.

## Key Takeaways

- ACH generates mutants (faults) and tests to catch them, guided by plain-text descriptions of concerns.
- Combines LLM-based mutant generation with LLM-based test generation for the first time at industrial scale.
- Applied to Facebook Feed, Instagram, Messenger, and WhatsApp.
- Provides verifiable assurances that tests catch the described faults.
- Targeted fault detection is more effective than coverage-only test generation.

## Entities Mentioned

- [[meta]] — developer of ACH
- Facebook, Instagram, Messenger, WhatsApp — platforms hardened

## Concepts Mentioned

- [[revolutionizing-software-testing-llm-powered-bug-catchers|Mutation testing]] — generating faults to assess test quality
- [[hugging-face|LLM-based test generation]] — automated test creation
- [[revolutionizing-software-testing-llm-powered-bug-catchers|Assured LLM-based software engineering]] — verifiable testing

## Questions / Follow-ups

- Can ACH-style mutation testing be applied to open-source codebases?
