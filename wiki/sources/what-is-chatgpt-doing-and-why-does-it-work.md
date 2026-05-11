---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# What Is ChatGPT Doing … and Why Does It Work?

## Metadata

- **Author**: Stephen Wolfram
- **Date**: 2023-02-14
- **URL**: https://writings.stephenwolfram.com/2023/02/what-is-chatgpt-doing-and-why-does-it-work/
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/What Is ChatGPT Doing … and Why Does It Work_.md

## Summary

Stephen Wolfram's comprehensive exploration of ChatGPT's inner workings, explaining how it generates meaningful text through next-word prediction. The article breaks down the fundamental mechanism (adding one word at a time based on probabilities), traces the evolution from simple n-gram models to neural networks, explains model training through machine learning, and discusses embeddings and transformers. Wolfram emphasizes that ChatGPT's success is empirical rather than theoretically derived.

## Key Takeaways

- ChatGPT fundamentally produces "reasonable continuations" by predicting next words based on text probabilities
- At each step, ChatGPT generates ranked lists of possible next words with probabilities, then selects based on "temperature" parameter
- Always picking highest-ranked word produces flat, repetitive text; randomness (temperature 0.8) yields more creative outputs
- Simple n-gram models fail because insufficient text exists to estimate probabilities for all possible sequences
- Models must generalize beyond observed examples—this is the core challenge LLMs solve
- Neural nets are mathematical functions with many parameters (ChatGPT has 175 billion) that approximate desired behavior
- Training involves finding weights that minimize "loss function" measuring distance from desired outputs
- Gradient descent through backpropagation adjusts weights progressively during training
- More weights paradoxically makes optimization easier (more directions to reach minimum)
- No "theory" explains why neural nets work for human-like tasks—it's empirically discovered
- The Principle of Computational Equivalence suggests simple programs can capture complex processes
- Neural nets trained end-to-end discover necessary intermediate features themselves rather than requiring explicit structuring

## Entities Mentioned

- [[stephen-wolfram|Stephen Wolfram]] — Physicist, mathematician, and creator of Wolfram Language and Mathematica
- [[openai|OpenAI]] — AI research organization that created ChatGPT
- [[chatgpt|ChatGPT]] — Conversational AI system based on GPT architecture
- [[gpt-2|GPT-2]] — Earlier open-source model used for demonstrations in article
- [[gpt-3|GPT-3]] — Larger successor model with better performance

## Concepts Mentioned

- [[next-word-prediction|Next-Word Prediction]] — Fundamental mechanism of language model text generation
- [[temperature-sampling|Temperature Sampling]] — Randomness parameter controlling word selection creativity
- [[n-gram-models|N-Gram Models]] — Statistical language models using sequences of n words
- [[neural-networks|Neural Networks]] — Computational models with layered neurons processing inputs
- [[loss-function|Loss Function]] — Metric measuring difference between model outputs and desired results
- [[gradient-descent|Gradient Descent]] — Optimization algorithm finding minimum loss through iterative steps
- [[backpropagation|Backpropagation]] — Algorithm computing gradients through neural net layers
- [[embeddings|Embeddings]] — Numerical representations capturing semantic relationships
- [[transformers|Transformers]] — Architecture using attention mechanisms for processing sequences
- [[machine-learning|Machine Learning]] — Training models from examples rather than explicit programming
- [[deep-learning|Deep Learning]] — Neural nets with many layers trained on large datasets
- [[computational-irreducibility|Computational Irreducibility]] — Concept that some processes cannot be summarized or predicted

## Raw Notes

Wolfram provides one of the clearest explanations of LLM fundamentals accessible to non-specialists. His use of Wolfram Language code demonstrations makes the concepts tangible. The article emphasizes that ChatGPT's capabilities emerge from empirical engineering rather than theoretical derivation—we don't know why it works, we just discovered it does. The philosophical implications (computational irreducibility, model interpretation) remain open questions. Wolfram's perspective from physics and mathematics provides unique framing: language as following "laws" that can be modeled statistically. The distinction between System 1 (intuitive) and System 2 (reasoned) thinking appears implicitly in the discussion of flat vs. creative outputs.

## Questions / Follow-ups

- Can computational irreducibility explain why we cannot interpret neural net behavior?
- How does temperature relate to creativity vs. coherence trade-offs mathematically?
- What would a "theory" of language models look like?
- Can Wolfram Language demonstrations extend to transformer attention mechanisms?