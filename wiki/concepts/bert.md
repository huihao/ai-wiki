---
created: 2026-04-28
updated: 2026-05-09
tags: [nlp, pretraining, transformer]
sources: 5
---

# BERT

## Definition

Bidirectional Encoder Representations from Transformers (BERT) is a pre-training method for [[natural-language-processing|NLP]] introduced by [[google]] in 2018. Unlike autoregressive models that read text in one direction, BERT uses a bidirectional [[transformers]] encoder that processes the full context of a word from both left and right simultaneously. It is pre-trained on two tasks: masked language modeling (predicting randomly hidden tokens) and next sentence prediction. BERT's key insight is that bidirectional context produces richer word representations, substantially improving performance on downstream NLP tasks such as question answering, sentiment analysis, and named entity recognition.

## Key Proponents / Critics

- [[jakob-uszkoreit]] — co-author of the original BERT paper at Google
- [[ashish-vaswani]] — co-author of "Attention Is All You Need" which introduced the transformer architecture underlying BERT
- [[sebastian-raschka]] — ML researcher who has published educational material explaining BERT's architecture and training
- [[jay-alammar]] — created widely-used visual explanations of BERT's architecture and the transformer family

## Related Concepts

- [[transformers]] — the encoder-only transformer architecture BERT is built on
- [[attention-mechanisms]] — BERT uses bidirectional self-attention to capture full context
- [[self-attention]] — the specific attention mechanism enabling each token to attend to all other tokens
- [[few-shot-learning]] — BERT's pre-training paradigm enabled effective few-shot and zero-shot transfer
- [[natural-language-processing]] — BERT's primary application domain
- [[word-embeddings]] — BERT produces contextualized embeddings superior to static word embeddings like [[word2vec]]
- [[masked-self-attention]] — related concept; BERT uses bidirectional attention (unlike masked/causal attention)
- [[encoder-decoder-architecture]] — BERT is encoder-only, distinct from encoder-decoder models like T5
- [[gpt]] — the autoregressive counterpart to BERT's bidirectional approach
- [[pre-trained-models]] — BERT pioneered the pre-train then fine-tune paradigm

## Related Entities

- [[google]] — organization that developed and released BERT
- [[hugging-face]] — platform that democratized access to BERT and thousands of variants via the Transformers library
- [[tensorflow]] — the framework used to implement the original BERT
- [[pytorch]] — framework most commonly used for BERT implementations in research

## Sources

- [[transformers-hugging-face]] — Hugging Face documentation on using BERT and transformer models
- [[hugging-face-llm-course-intro]] — Hugging Face course covering BERT as a foundational architecture
- [[the-illustrated-transformer]] — visual guide to the transformer architecture underlying BERT
- [[everything-about-transformers]] — comprehensive overview of transformer models including BERT
- [[deep-learning-fundamentals]] — foundational material on pre-training and fine-tuning paradigms

## Evolution

- **2017**: Vaswani et al. publish "Attention Is All You Need," introducing the [[transformers]]
- **2018 (June)**: OpenAI releases GPT-1, demonstrating the power of unsupervised pre-training
- **2018 (October)**: Google releases BERT, achieving state-of-the-art on 11 NLP benchmarks
- **2019 (May)**: Google releases BERT-large (340M parameters) and BERT is adopted across the NLP community
- **2019**: RoBERTa, ALBERT, and DistilBERT variants improve efficiency and performance
- **2020**: T5 and GPT-3 shift focus toward generative and instruction-following models
- **2022-2023**: DeBERTa and other BERT variants remain competitive on classification tasks; encoder models persist in production systems
