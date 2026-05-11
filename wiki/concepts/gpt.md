---
created: 2026-04-28
updated: 2026-05-09
tags: [autoregressive, llm, transformer]
sources: 5
---

# GPT

## Definition

Generative Pre-trained Transformer (GPT) is a family of autoregressive large language models developed by [[openai]]. GPT models are pre-trained on massive text corpora to predict the next token in a sequence ([[next-word-prediction]]), then fine-tuned or instruction-tuned for specific tasks. The architecture is based on the decoder component of the [[transformers]], using causal (masked) [[self-attention]] to process tokens left-to-right. The GPT line demonstrated that scaling pre-trained language models produces emergent capabilities including [[few-shot-learning]], reasoning, and code generation.

## Key Proponents / Critics

- [[ilya-sutskever]] — co-founder and chief scientist at [[openai]] during the development of GPT-2 and GPT-3
- [[andrej-karpathy]] — former director of AI at [[openai]], led development of GPT-related products and educational content
- [[jakub-pachocki]] — head of research at [[openai]], contributed to GPT-4 development
- [[sebastian-raschka]] — has published detailed analyses and from-scratch implementations of the GPT architecture
- [[jay-alammar]] — created widely-used visual guides explaining the GPT architecture

## Related Concepts

- [[transformers]] — the decoder-only transformer architecture that underpins GPT
- [[next-word-prediction]] — the pre-training objective that GPT models are trained to optimize
- [[attention-mechanisms]] — GPT uses causal self-attention to process sequences autoregressively
- [[cross-entropy-loss]] — the loss function used during GPT pre-training
- [[few-shot-learning]] — GPT-3 demonstrated that large autoregressive models exhibit emergent few-shot capabilities
- [[in-context-learning]] — the mechanism enabling GPT models to adapt to tasks from examples in the prompt
- [[large-language-models]] — GPT is the most prominent family of large language models
- [[bert]] — the bidirectional counterpart to GPT's unidirectional approach
- [[gpt-2]] — demonstrated that a sufficiently large language model can perform zero-shot tasks
- [[gpt-3]] — showed that scaling to 175B parameters enables few-shot learning and emergent capabilities
- [[gpt-4]] — multimodal model with significantly improved reasoning and instruction following

## Related Entities

- [[openai]] — the company that developed the GPT family of models
- [[anthropic]] — founded by former OpenAI researchers, develops the competing Claude model family
- [[microsoft]] — major investor in OpenAI and integrator of GPT models into Azure and Office products
- [[deepseek]] — developer of open-source models competitive with GPT
- [[nvidia]] — provides the GPU hardware that makes GPT-scale training and inference possible

## Sources

- [[an-intuitive-guide-to-how-llms-work]] — intuitive explanation of how GPT-style models generate text
- [[transformer-architecture-explained]] — visual and conceptual guide to the architecture behind GPT
- [[how-llms-generate-text-conditional-probability]] — explanation of the conditional probability mechanism in GPT
- [[llm-text-generation-conditional-probability]] — deep dive into the text generation process
- [[everything-about-transformers]] — comprehensive overview including the GPT family

## Evolution

- **2017**: Vaswani et al. publish "Attention Is All You Need," introducing the [[transformers]]
- **2018 (June)**: GPT-1 released with 117M parameters, demonstrating the pre-train/fine-tune paradigm
- **2019 (February)**: GPT-2 released with 1.5B parameters, deemed "too dangerous to release" initially
- **2020 (May)**: GPT-3 released with 175B parameters, demonstrating [[few-shot-learning]] and emergent capabilities
- **2022 (November)**: ChatGPT released, bringing GPT-3.5 to mainstream audiences and achieving 100M users in 2 months
- **2023 (March)**: GPT-4 released as a multimodal model with strong reasoning capabilities
- **2024-2025**: GPT-4o, o1, and o3 models expand into multimodal input, reasoning, and agentic capabilities
- **2025**: OpenAI releases GPT-4.1 with 1M token context and GPT-5 with improved reasoning
