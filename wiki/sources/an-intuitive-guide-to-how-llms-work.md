---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# An Intuitive Guide to How LLMs Work

## Metadata

- **Author**: Jeremiah Lowin
- **Date**: 2024-10-06
- **URL**: https://www.jlowin.dev/blog/an-intuitive-guide-to-how-llms-work
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/An Intuitive Guide to How LLMs Work.md

## Summary

An accessible, probability-first explanation of large language models that builds intuition through coin flips, normal distributions, and conditional probability, then shows how next-token prediction, sampling, temperature, and context windows emerge from these foundations. The guide explains that LLMs are "fancy probability engines" and demonstrates how common techniques (prompt engineering, chain-of-thought, RAG, fine-tuning, ReAct) are all methods of manipulating probability distributions.

## Key Takeaways

- LLMs are fundamentally probability engines: they model distributions of words, not knowledge databases
- Three foundational concepts: probability distributions, conditional probability distributions, sampling
- LLMs generate text by iteratively sampling from conditional distributions, adding each sampled word to context
- "You know a word by the company it keeps" — models learn word relationships from co-occurrence patterns, not explicit definitions
- Context window is the maximum text length an LLM can process; longer conversations may truncate early parts
- Temperature controls sampling randomness: low temperature favors high-probability words (more predictable), high temperature introduces more randomness (more creative)
- Compounding errors: once an unlikely word is chosen, it becomes context for future words, potentially leading to gibberish
- Chat interfaces work by treating the entire conversation history as growing context for probabilistic text generation
- Training builds a sophisticated model of word relationships without explicit rules or definitions
- Limitations explained: correlation not causation, bias in bias out, hallucination on rare topics, difficulty with explicit rules
- All common LLM techniques are probability manipulation:
  - Prompt engineering: shaping likelihood of response types
  - Chain-of-thought: breaking large probabilistic leaps into smaller, more probable jumps
  - Fine-tuning: nudging probability distribution toward specialized domains
  - RAG: biasing output probabilities toward specific retrieved information
  - ReAct agents: providing specific format to make tool use more probable
  - Structured output: constraining allowable tokens to enforce format compliance
  - Temperature/sampling parameters: controlling randomness in sampling process

## Entities Mentioned

- [[jeremiah-lowin|Jeremiah Lowin]] — Author of the intuitive LLM guide
- [[adam-azzam|Adam Azzam]] — Colleague credited with "company it keeps" insight

## Concepts Mentioned

- [[probability-distributions|Probability Distributions]] — Mathematical representation of likelihood across possible outcomes
- [[conditional-probability-distributions|Conditional Probability Distributions]] — Distributions that incorporate additional context or knowledge
- [[sampling-from-distributions|Sampling from Distributions]] — Drawing specific outcomes from probability models
- [[llm-fundamentals|LLM Fundamentals]] — Core operating principles of large language models as probability engines
- [[context-window|Context Window]] — Maximum amount of text an LLM can process at once
- [[temperature-parameter|Temperature Parameter]] — Control for randomness in LLM sampling (low = predictable, high = creative)
- [[iterative-text-generation|Iterative Text Generation]] — Process of sampling word, adding to context, computing new distribution, repeating
- [[compounding-errors-in-llms|Compounding Errors in LLMs]] — Self-reinforcing nature where unlikely choices influence future probabilities
- [[word-co-occurrence|Word Co-Occurrence]] — Pattern of words appearing together, used by LLMs to learn relationships
- [[prompt-engineering-as-probability|Prompt Engineering as Probability]] — Shaping likelihood of desired response types through prompt design
- [[chain-of-thought-reasoning|Chain-of-Thought Reasoning]] — Technique that breaks large probabilistic leaps into smaller, more probable steps
- [[rag-probability-bias|RAG Probability Bias]] — Using retrieved information to bias output probabilities toward factual content
- [[llm-hallucination|LLM Hallucination]] — Generating plausible-sounding but incorrect information due to limited training context

## Raw Notes

The guide emphasizes that LLMs don't "understand" in human sense—they excel at recognizing correlations without grasping causality. This explains hallucination: models generate probable word sequences based on limited relevant context, not factual verification. Training doesn't encode definitions; it builds multidimensional models of word relationships from billions of examples. The "company it keeps" principle explains polysemy (bank = financial vs. river): models distinguish meanings via surrounding word patterns. Compounding errors create self-reinforcing behavior: models favoring certain styles continue favoring them; models drifting into nonsense continue drifting. Temperature is crucial—always picking most probable word creates repetitive text; sampling introduces needed variability.

## Questions / Follow-ups

- How do modern LLMs maintain coherence over longer sequences despite compounding error risk?
- What probability manipulation techniques improve factual accuracy without sacrificing creativity?
- How do different architectures (decoder-only, encoder-decoder) affect probability modeling?