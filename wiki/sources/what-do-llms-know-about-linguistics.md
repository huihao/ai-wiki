---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# What Do LLMs Know About Linguistics? It Depends on How You Ask

## Metadata

- **Author**: Terra Blevins
- **Date**: 2023-07-09
- **URL**: https://thegradient.pub/what-do-llms-know-about-linguistics-it-depends-on-how-you-ask/
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/What Do LLMs Know About Linguistics_ It Depends on How You Ask.md

## Summary

Research investigation into how LLMs encode linguistic knowledge and the sensitivity of in-context learning to prompting variations. The study develops "structured prompting" to probe LLMs for linguistic structure (POS tagging, NER) and discovers that models rely heavily on prior knowledge from pretraining data contamination. LLM performance varies dramatically based on label choices, with models ignoring prompts that conflict with learned knowledge.

## Key Takeaways

- In-context learning enables LLMs to perform tasks via prompts instead of parameter updates
- Structured prompting extends in-context learning to produce multiple labels for structured prediction tasks
- GPT-Neo models can perform POS tagging and NER from few examples, with errors being reasonable (related tags confused)
- Prompting success depends critically on label choices: shuffling labels hurts performance significantly, proxy labels less so
- Models ignore prompts that contradict prior knowledge learned during pretraining
- Data contamination is widespread: the Pile contains many POS/NER examples from GitHub, arXiv, Stack Overflow
- Universal Dependencies datasets "trained" GPT-NeoX for POS tagging during pretraining
- Using category names (not abbreviations) as labels performs nearly as well as original labels
- Models combine in-context examples with prior knowledge, but prioritize learned knowledge when conflicting
- Larger models better at learning from shuffled/substitute labels, suggesting improved in-context learning capabilities

## Entities Mentioned

- [[terra-blevins|Terra Blevins]] — PhD student at University of Washington NLP group, specializing in multilingual NLP and language model analysis
- [[gpt-neo|GPT-Neo]] — Open-source LLM series from EleutherAI used for experiments
- [[eleutherai|EleutherAI]] — Open-source AI research organization creating GPT-Neo models
- [[universal-dependencies|Universal Dependencies]] — Standardized linguistic annotation framework for POS tagging

## Concepts Mentioned

- [[in-context-learning|In-Context Learning]] — Paradigm where LLMs learn tasks from prompts without parameter updates
- [[structured-prompting|Structured Prompting]] — Extension of in-context learning for structured prediction tasks
- [[pos-tagging|Part-of-Speech Tagging]] — Identifying grammatical categories (noun, verb, etc.) for words
- [[named-entity-recognition|Named Entity Recognition (NER)]] — Identifying and labeling entities (people, locations, etc.)
- [[data-contamination|Data Contamination]] — Including evaluation task examples in pretraining data
- [[probing|Probing]] — Testing information stored in model weights via behavioral or diagnostic methods
- [[structured-prediction|Structured Prediction]] — ML tasks requiring multiple interdependent outputs
- [[prompt-sensitivity|Prompt Sensitivity]] — LLM performance variability based on prompting variations

## Raw Notes

The research reveals a critical limitation in understanding LLM behavior: we cannot determine if models truly learn in-context or rely on memorized examples. Data contamination pervades modern LLMs because pretraining datasets (like the Pile) scrape vast web content including GitHub repositories hosting NLP datasets. The authors cleverly control contamination by substituting labels (using "proper noun" instead of "PROPN"), demonstrating models can still perform tasks when prompts align with learned structures. The tension between prior knowledge and in-context learning raises fundamental questions about evaluation validity. Larger models (540B parameters) show better in-context learning from conflicting labels, suggesting scaling improves flexibility.

## Questions / Follow-ups

- How can we systematically detect and prevent data contamination?
- What percentage of LLM benchmark performance comes from memorization vs. generalization?
- Can structured prompting extend to syntax trees, dependency parsing, or semantic role labeling?
- How does the frequency of pretraining examples affect prompting sensitivity?