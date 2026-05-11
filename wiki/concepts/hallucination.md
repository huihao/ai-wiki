---
created: 2026-04-28
updated: 2026-05-09
tags: [failure-mode, llm, reliability]
sources: 5
---

# Hallucination

## Definition

Hallucination (also called confabulation) in AI refers to when a language model generates text that is fluent, confident, and superficially plausible but factually incorrect, unsupported by the input context, or nonsensical. It arises because language models are trained to produce statistically likely text rather than to verify factual accuracy. Hallucinations can be intrinsic (contradicting the source material) or extrinsic (introducing information not grounded in the training data). It remains one of the most significant challenges for deploying LLMs in high-stakes applications like medicine, law, and engineering.

## Key Proponents / Critics

- [[nicholas-carlini]] — researcher studying LLM failure modes including memorization and hallucination
- [[sebastian-raschka]] — has written about understanding and mitigating hallucination in language models
- [[simon-willison]] — prolific blogger who regularly documents and analyzes LLM hallucination in practice
- [[matt-pocock]] — practitioner who has shared practical strategies for reducing hallucination in production

## Related Concepts

- [[large-language-models]] — the model class in which hallucination is most commonly observed
- [[next-word-prediction]] — the generative mechanism whose statistical nature causes hallucination
- [[context-window]] — methods using retrieval within the context window can reduce hallucination
- [[retrieval-augmented-generation|retrieval-augmented generation (RAG)]] — grounding model output in retrieved documents to reduce hallucination
- [[hallucination-translation-arxiv]] — research on hallucination in machine translation
- Grounding — anchoring model outputs to external verified sources
- [[alignment]] — training techniques that reduce tendency to hallucinate
- [[evaluation-metrics]] — metrics for detecting and measuring hallucination in model outputs
- [[llm-evaluation]] — broader evaluation frameworks that include hallucination measurement
- [[adversarial-attacks]] — adversarial inputs can increase hallucination rates

## Root Causes

- **Probability Over Truth**: LLMs model correlations between words, not causation; they generate probable sequences, not factually verified statements
- **Limited Context Problem**: When few training examples cover a topic, the model fills gaps with statistically plausible but fabricated details
- **Compounding Errors**: Once an incorrect token is sampled, it becomes context for subsequent generation, potentially leading the model further from factual territory
- **Correlation Not Causation**: Models excel at recognizing patterns without grasping underlying mechanisms; this makes them confident but wrong on edge cases
- **Bias Amplification**: Training data biases are encoded in probability distributions and can be amplified during generation

## Related Entities

- [[anthropic]] — Claude models designed with reduced hallucination through constitutional training
- [[openai]] — GPT models with ongoing work on grounding and hallucination reduction
- [[google]] — Gemini models with retrieval capabilities to reduce hallucination
- [[deepseek]] — open-source models where hallucination mitigation is an active area

## Sources

- [[hallucination-translation-arxiv]] — research on hallucination phenomena in neural machine translation
- [[hallucination]] — detailed overview of hallucination types, causes, and mitigations
- [[ai-agents-fail-bad-context]] — analysis of how poor context contributes to hallucination in agent systems
- [[how-llms-generate-text-conditional-probability]] — explains the probabilistic generation mechanism underlying hallucination
- [[llm-evaluation]] — evaluation frameworks for measuring hallucination in language models

## Evolution

- **2022**: Hallucination identified as a key challenge as ChatGPT gains mainstream adoption
- **2023**: Research intensifies on detection methods; RAG becomes the primary mitigation strategy
- **2024**: "Hallucination leaderboards" emerge to benchmark models on factual accuracy; models improve but do not eliminate hallucination
- **2025**: Focus shifts to hallucination in agentic systems, where factual errors can cascade into harmful actions
- **2025**: Retrieval grounding, tool use, and structured outputs emerge as complementary approaches to reduce hallucination
