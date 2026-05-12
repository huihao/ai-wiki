---
created: 2026-04-29
updated: 2026-05-09
tags: [entity]
sources: 2
---

# GPT-Neo

## Summary
GPT-Neo is an open-source large language model series developed by EleutherAI as a publicly available alternative to proprietary GPT-style models. Trained on The Pile dataset, GPT-Neo models (1.3B and 2.7B parameters) have been used in research investigating how LLMs encode linguistic knowledge, including studies on in-context learning, structured prompting, and the effects of data contamination on model behavior.

## Key Aspects

- Open-source decoder-only transformer models from EleutherAI, available for research and commercial use
- Trained on The Pile, a large diverse dataset containing web content, GitHub code, academic papers, and more
- Used as experimental subjects for probing LLM linguistic knowledge: GPT-Neo can perform POS tagging and named entity recognition via structured prompting
- In-context learning enables task performance from prompts alone, without parameter updates
- Prompt success is sensitive to label choices: shuffled labels hurt performance, but proxy labels do not as much, suggesting models rely heavily on pretraining knowledge
- Data contamination is significant: The Pile contains many POS/NER examples from GitHub, arXiv, and Stack Overflow, meaning models may have seen evaluation data during training
- Larger models show improved ability to learn from conflicting or shuffled labels, suggesting scaling enhances in-context learning flexibility

## Related Concepts

- [[gpt-2]]
- [[embeddings]]
- [[causal-attention]]

## Sources

- [[073_llms-know-about-linguistics]]
- [[what-do-llms-know-about-linguistics]]
