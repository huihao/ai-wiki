---
created: 2026-04-29
updated: 2026-04-29
tags: [source, linguistics, llm-evaluation, structured-prompting, probing, data-contamination]
sources: 1
url: "https://thegradient.pub/what-do-llms-know-about-linguistics-it-depends-on-how-you-ask/"
title: "What Do LLMs Know About Linguistics? It Depends on How You Ask"
---

# What Do LLMs Know About Linguistics? It Depends on How You Ask

## Summary

Research exploring whether LLMs have learned linguistic structure through pretraining, using a technique called "structured prompting" to probe GPT-Neo models on POS tagging and NER tasks. The key finding: LLMs use both in-context examples and prior knowledge from pretraining, but will ignore prompts that conflict with what they learned. Data contamination in pretraining data (e.g., POS/NER examples from GitHub in the Pile) significantly influences results.

## Key Takeaways
- Structured prompting extends in-context learning to produce multiple outputs per example (linguistic annotations)
- LLMs can perform POS tagging and NER with just a few examples via structured prompting
- Performance degrades significantly when labels are shuffled, but the model often predicts the original (correct) labels anyway - it ignores conflicting in-context examples
- Proxy (integer) labels hurt performance much less than shuffled labels
- Data contamination is a major factor: POS/NER examples exist in the Pile from GitHub, Stack Overflow, and arXiv
- Larger models (up to 540B parameters) are better at learning from shuffled/substitute labels
- How you prompt LLMs matters enormously - slight phrasing changes lead to drastically different outputs

## Entities Mentioned
- [[terra-blevins]]
- [[eleutherai]]
- [[openai]]

## Concepts Mentioned
- [[in-context-learning]]
- [[data-contamination]]
- [[positional-bias]]
- [[exposure-bias]]
- [[the-pile]]
- [[gpt-neo]]
- [[bert]]
- [[structured-prompting]]
- [[prompt-engineering]]
