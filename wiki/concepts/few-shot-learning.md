---
created: 2026-04-28
updated: 2026-05-09
tags: [machine-learning, meta-learning, nlp]
sources: 3
---

# Few-shot learning

## Definition

Few-shot learning is the ability of a model to learn or adapt to new tasks given only a small number of examples. In the context of large language models, it refers specifically to in-context learning, where the model is provided with a few input-output examples in the prompt and generalizes to new inputs without any weight updates. This contrasts with traditional machine learning, which requires thousands of labeled examples. Few-shot capability emerged as an emergent property of sufficiently large [[transformers|transformer]] models and was dramatically demonstrated by GPT-3, where performance improved with the number of examples in the context.

## Key Proponents / Critics

- [[peter-norvig]] — co-author of "AI: A Modern Approach," contributor to few-shot learning research
- [[david-silver]] — deep reinforcement learning researcher whose work on meta-learning relates to few-shot adaptation
- [[jeremy-howard]] — fast.ai founder who popularized practical few-shot and transfer learning techniques

## Related Concepts

- [[in-context-learning]] — the mechanism by which LLMs perform few-shot learning without gradient updates
- [[gpt]] — GPT-3 demonstrated that large language models exhibit strong few-shot capabilities
- [[natural-language-processing]] — few-shot learning is a paradigm shift in NLP task adaptation
- [[transfer-learning]] — few-shot learning is an extreme case of transfer learning with minimal target examples
- [[chain-of-thought]] — few-shot examples that include reasoning steps improve model performance
- [[prompt-engineering]] — few-shot learning is a core prompt engineering technique
- [[one-shot-ai]] — the even more extreme case of learning from a single example
- [[few-shot-learning|zero-shot]] — performing tasks with no examples at all, just a natural language instruction

## Related Entities

- [[openai]] — GPT-3 (2020) was the landmark demonstration of few-shot learning in LLMs
- [[anthropic]] — Claude models exhibit strong few-shot learning across diverse tasks
- [[deepmind]] — research on meta-learning algorithms for few-shot adaptation
- [[google]] — PaLM and Gemini models continue to improve few-shot capabilities

## Sources

- [[gpt-3]] — the paper that demonstrated large language models' few-shot learning capabilities
- [[learn-llms-roadmap]] — educational overview of few-shot learning within LLM capabilities
- [[introduction-to-machine-learning]] — foundational material contrasting few-shot learning with traditional supervised approaches

## Evolution

- **2017**: Matching Networks introduce few-shot learning in the deep learning context using attention mechanisms
- **2019**: Meta-learning algorithms (MAML, Prototypical Networks) formalize few-shot learning frameworks
- **2020**: GPT-3 demonstrates in-context few-shot learning at scale, showing emergent capability from large pre-trained models
- **2022**: Few-shot chain-of-thought prompting shows that structured examples dramatically improve reasoning
- **2023**: Instruction tuning reduces the need for few-shot examples, with models performing well in zero-shot settings
- **2024-2025**: Few-shot learning remains important for specialized domain adaptation and production systems
