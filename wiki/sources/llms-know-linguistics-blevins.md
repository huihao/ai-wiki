---
created: 2026-04-28
updated: 2026-04-28
tags: [source, llm, prompting, linguistics, in-context-learning]
sources: 1
---

# What Do LLMs Know About Linguistics? It Depends on How You Ask

## Metadata

- **Author:** [[terra-blevins]] (University of Washington)
- **Date:** 2023-07-09
- **URL:** https://thegradient.pub/what-do-llms-know-about-linguistics-it-depends-on-how-you-ask/
- **Access Date:** 2026-04-27
- **Raw File:** `raw/ai/What Do LLMs Know About Linguistics_ It Depends on How You Ask.md`

## Summary

An investigation into how LLM performance on linguistic tasks depends heavily on prompting choices. Blevins introduces "structured prompting" for probing linguistic knowledge in LLMs, testing GPT-Neo models on part-of-speech (POS) tagging and named-entity recognition (NER). Key finding: LLMs rely on both in-context examples and prior knowledge from pretraining, but will ignore in-context examples if they conflict with pretraining. Data contamination (labeled task examples in pretraining data) significantly affects results.

## Key Takeaways

- LLMs are highly sensitive to prompting format; slight variations can drastically change outputs
- "Structured prompting" extends in-context learning to produce many outputs composed into linguistic structure
- GPT-Neo models can perform POS tagging and NER from just a few in-context examples
- Larger models are better at in-context learning for structured tasks
- When labels are shuffled (conflicting with pretraining knowledge), models often ignore them and predict original labels
- When labels are replaced with proxy integers, performance drops less than with shuffling — LLMs can in-context learn from semantically neutral labels
- Data contamination is widespread: the Pile dataset contains many labeled POS and NER examples
- Universal Dependencies benchmarks in the Pile may have "trained" models for POS tagging during pretraining

## Entities Mentioned

- [[terra-blevins]] — PhD student at University of Washington, NLP researcher
- [[eleutherai]] — creators of GPT-Neo models
- [[openai]] — mentioned for GPT-4 data contamination concerns
- [[university-of-washington]] — author's institution
- [[university-of-washington|Columbia University]] — author's undergraduate institution

## Concepts Mentioned

- [[in-context-learning|ICL]] — learning from examples in the prompt without parameter updates
- [[the-real-ai-coding-skill-isnt-prompting-its-architecture|structured prompting]] — repeated prompting for linguistic tags over each word
- probing — testing what information is stored in model weights
- [[the-evolution-of-modern-rag-architectures|POS tagging]] — identifying grammatical categories of words
- NER — identifying and labeling named entities
- [[data-contamination]] — evaluation task data appearing in pretraining corpus
- [[machine-learning|few-shot learning]] — learning from a small number of examples
- perplexity — mentioned as a proxy for estimating pretraining data distribution

## Raw Notes

- Tested on GPT-Neo (1.3B, 2.7B) and GPT-NeoX (20B) models
- GPT-NeoX correctly labels ambiguous words (e.g., "end," "walk," "plants") 80%+ of the time
- Most POS errors: confusing proper nouns with regular nouns, auxiliary verbs with verbs
- Error patterns resemble human annotation errors
- Full category names as labels perform almost as well as original abbreviations on NER
- Pretraining data frequency correlates with math problem accuracy
- Non-English text in English pretraining data explains cross-lingual capabilities

## Questions / Follow-ups

- How do these findings generalize to newer models (GPT-4, Claude, Llama) with different training data?
- Can perplexity-based methods effectively estimate data contamination for closed-source models?
