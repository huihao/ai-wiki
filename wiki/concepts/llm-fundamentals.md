---
created: 2026-04-28
updated: 2026-04-28
tags: []
---

# LLM Fundamentals

Core operating principles of large language models, understanding them as "fancy probability engines" that model distributions of words rather than knowledge databases. Based on probability theory foundations: distributions, conditional distributions, and sampling.

## Core Principle

LLMs don't "understand" in human sense—they excel at recognizing correlations in word co-occurrence patterns without grasping causality. Training builds sophisticated models of word relationships from billions of examples without explicit definitions or rules.

## Three Foundational Concepts

1. **Probability Distributions**: Mathematical representation of likelihood across possible outcomes (words/tokens)
2. **Conditional Probability Distributions**: Distributions incorporating additional context (previous words in sequence)
3. **Sampling from Distributions**: Drawing specific outcomes from probability models with controlled randomness

## Text Generation Process

Iterative cycle of:
1. Compute conditional distribution over next tokens given current context
2. Sample one token from distribution
3. Append sampled token to context
4. Repeat

Key mechanism: [[compounding-errors-in-llms|Compounding Errors]] — once unlikely token chosen, it influences future probabilities, potentially leading to gibberish.

## Key Parameters

- **Context Window**: Maximum text length LLM can process; longer conversations truncate early parts
- **Temperature**: Sampling randomness control
  - Low temperature: favor high-probability tokens (predictable, coherent)
  - High temperature: allow lower-probability tokens (creative, potentially less coherent)

## Common Techniques as Probability Manipulation

All standard LLM techniques manipulate probability distributions:
- **Prompt Engineering**: Shape likelihood of desired response types
- **Chain-of-Thought**: Break large probabilistic leaps into smaller, more probable steps
- **Fine-Tuning**: Nudge entire distribution toward specialized domains
- **RAG**: Bias output probabilities toward specific retrieved information
- **ReAct Agents**: Provide specific format to make tool use more probable
- **Structured Output**: Constrain allowable tokens to enforce format compliance

## Limitations Explained

- **Hallucination**: Generating plausible but incorrect information due to limited relevant training context
- **Bias Propagation**: Training data biases reflected in outputs (correlation not causation)
- **Difficulty with Explicit Rules**: Implicit pattern learning vs. rule following

## Key Insight

"You know a word by the company it keeps" — models learn word relationships from co-occurrence patterns (credited to [[adam-azzam|Adam Azzam]]). Example: "bank" meaning (financial vs. river) distinguished by surrounding word patterns (money/deposit/loan vs. river/stream/grassy).

## Source

- [[an-intuitive-guide-to-how-llms-work|An Intuitive Guide to How LLMs Work]] — probability-first explanation

## Related Concepts

- [[probability-distributions|Probability Distributions]]
- [[conditional-probability-distributions|Conditional Probability Distributions]]
- [[sampling-from-distributions|Sampling from Distributions]]
- [[context-window|Context Window]]
- [[temperature-parameter|Temperature Parameter]]
- [[iterative-text-generation|Iterative Text Generation]]
- [[word-co-occurrence|Word Co-Occurrence]]
- [[hallucination|LLM Hallucination]]