# LLMs Practical Guide

> Curated list of practical guide resources for Large Language Models with evolutionary tree.

**Source:** [GitHub - Mooler0410/LLMsPracticalGuide](https://github.com/Mooler0410/LLMsPracticalGuide) by Mooler (April 23, 2023)

---

## Overview

Comprehensive curated list of practical [[Large Language Models|LLM]] resources based on survey paper: "Harnessing the Power of LLMs in Practice: A Survey on ChatGPT and Beyond" (arXiv:2304.13712).

Key features:

- **Evolutionary tree** of modern LLMs tracing development history
- **Usage restrictions** table for commercial/research purposes
- **Decision flow** for choosing LLMs vs. fine-tuned models
- **Practical guides** for models, data, and NLP tasks

---

## LLM Evolutionary Tree

### Encoder-Only Models

- **BERT** (2018) — Pre-training of Deep Bidirectional Transformers
- **RoBERTa** (2019) — Robustly Optimized BERT Pretraining
- **DistilBERT** (2019) — distilled version of BERT (smaller, faster)
- **ALBERT** (2019) — Lite BERT for Self-supervised Learning
- **UniLM** (2019) — Unified Language Model Pre-training
- **ELECTRA** (2020) — Pre-training as Discriminators Rather Than Generators
- **T5** (2019) — Unified Text-to-Text Transformer
- **GLM** (2022) — GLM-130B Open Bilingual Pre-trained Model
- **AlexaTM** (2022) — AlexaTM 20B Few-Shot Learning
- **ST-MoE** (2022) — Stable and Transferable Sparse Expert Models

---

### Decoder-Only Models

- **GPT** (2018) — Improving Language Understanding by Generative Pre-Training
- **GPT-2** (2018) — Language Models are Unsupervised Multitask Learners
- **GPT-3** (2020) — Language Models are Few-Shot Learners
- **OPT** (2022) — Open Pre-trained Transformer Language Models
- **PaLM** (2022) — Scaling Language Modeling with Pathways
- **BLOOM** (2022) — 176B-Parameter Open-Access Multilingual Language Model
- **MT-NLG** (2021) — Megatron-Turing NLG 530B
- **GLaM** (2022) — Efficient Scaling with Mixture-of-Experts
- **Gopher** (2021) — Scaling Language Models: Methods, Analysis & Insights
- **Chinchilla** (2022) — Training Compute-Optimal Large Language Models
- **LaMDA** (2021) — Language Models for Dialog Applications
- **LLaMA** (2023) — Open and Efficient Foundation Language Models
- **GPT-4** (2023) — GPT-4 Technical Report
- **BloombergGPT** (2023) — Large Language Model for Finance
- **GPT-NeoX-20B** (2022) — Open-Source Autoregressive Language Model
- **PaLM 2** (2023) — PaLM 2 Technical Report
- **LLaMA 2** (2023) — Open foundation and fine-tuned chat models
- **Claude 2** (2023) — Model Card and Evaluations for Claude Models

---

## Practical Guide for Models

### Pre-training Objectives

**Encoder-Only:**
- Masked Language Modeling (BERT family)
- Discriminator-based (ELECTRA)

**Decoder-Only:**
- Autoregressive language modeling (GPT family)
- Compute-optimal scaling (Chinchilla)

**Encoder-Decoder:**
- Text-to-text framework (T5)

---

### Key Papers

**Pre-training Data:**
- **The Pile** (2020) — 800GB diverse text dataset
- **RedPajama** (2023) — open reproduction of LLaMA training data
- **Scaling Laws** (2020) — scaling laws for neural language models
- **Data-centric AI** (2023) — survey on data importance

**Architecture:**
- **Attention mechanisms** — self-attention, multi-head attention
- **Positional encoding** — relative vs. absolute
- **Mixture of Experts** — GLaM, ST-MoE

---

## Practical Guide for Data

### Data Sources

- **BooksCorpus** — book text (BERT, RoBERTa)
- **Common Crawl** — web crawl data
- **Wikipedia** — encyclopedia text
- **Code** — programming datasets
- **Scientific papers** — arXiv, PubMed

### Data Quality

- **Filtering** — remove low-quality text
- **Deduplication** — eliminate duplicate content
- **Bias analysis** — detect data biases
- **Contamination check** — avoid benchmark leakage

---

## Practical Guide for NLP Tasks

### Task Categories

**Classification:**
- Zero-shot text classification
- Sentiment analysis
- Topic categorization

**Generation:**
- Summarization
- Translation
- Code generation
- Creative writing

**Reasoning:**
- Mathematical reasoning
- Logical inference
- Chain-of-thought prompting

**Knowledge:**
- Question answering
- Fact retrieval
- Knowledge completion

---

### Decision Flow: LLMs vs. Fine-tuned Models

**Choose LLMs when:**
- Task requires general knowledge
- Zero-shot/few-shot capability needed
- Limited training data available
- Rapid iteration required

**Choose Fine-tuned Models when:**
- Domain-specific knowledge required
- Large labeled dataset available
- Higher accuracy needed
- Cost constraints on inference

---

## Usage and Restrictions

### Model Licensing

**Apache 2.0 (Commercial use allowed):**
- BERT series
- ERNIE
- SciBERT

**MIT License:**
- RoBERTa

**Modified MIT:**
- GPT-2

**Non-commercial bespoke license:**
- OPT-175B
- LLaMA (research only)

**BigScience RAIL License:**
- BLOOM
- Restricted AI license with usage limitations

---

### Data Licensing

**Public domain:**
- Wikipedia
- Common Crawl (CC)

**Restricted:**
- BooksCorpus (copyright concerns)
- PubMed (terms and conditions)
- ShareGPT (privacy practices)

---

## Instruction Tuning

### FLAN Family

- **FLAN** (2021) — Finetuned Language Models Are Zero-Shot Learners
- **T0** (2021) — Multitask Prompted Training Enables Zero-Shot Task Generalization
- **Tk-INSTRUCT** (2022) — Super-NaturalInstructions on 1600+ NLP Tasks
- **FLAN-T5/PaLM** (2022) — Scaling Instruction-Finetuned Language Models
- **OPT-IML** (2023) — Scaling Language Model Instruction Meta Learning

---

## Reinforcement Learning from Human Feedback (RLHF)

### Key Papers

- **Deep RL from Human Preferences** (2017)
- **Learning to summarize from human feedback** (2020)
- **InstructGPT** (2022) — Training language models to follow instructions
- **Constitutional AI** (2022) — Harmlessness from AI feedback

---

### Open-Source Instruction-Tuned Models

- **Alpaca** — Stanford instruction-tuned LLaMA
- **Vicuna** — FastChat conversational model
- **Dolly** — Databricks commercially viable instruction-tuned LLM
- **GPT4All** — Nomic AI instruction-tuned model
- **OpenAssistant** — LAION open-source assistant
- **ChatGLM** — THUDM conversational model
- **MOSS** — OpenLMLab multi-turn conversation model

---

## Key Themes

- **Evolution tracking** — visual representation of LLM development from 2018-2023
- **License transparency** — comprehensive usage restrictions for responsible deployment
- **Decision framework** — practical guidance for model selection
- **Data-centric perspective** — emphasis on training data quality and licensing
- **Instruction tuning progression** — from FLAN to modern instruction-following models
- **RLHF adoption** — human feedback as alignment mechanism

---

## Citation

```bibtex
@article{yang2023harnessing,
  title={Harnessing the Power of LLMs in Practice: A Survey on ChatGPT and Beyond},
  author={Jingfeng Yang and Hongye Jin and Ruixiang Tang and Xiaotian Han and 
           Qizhang Feng and Haoming Jiang and Bing Yin and Xia Hu},
  year={2023},
  eprint={2304.13712},
  archivePrefix={arXiv},
  primaryClass={cs.CL}
}
```

---

## Related

- [[Large Language Models]] — model architectures
- [[Transformer Architecture]] — foundational architecture
- [[BERT]], [[GPT]] — encoder/decoder families
- [[Instruction Tuning]] — alignment methods
- [[Reinforcement Learning from Human Feedback]] — human feedback training
- [[Fine-tuning]] — adaptation strategies

---

## Sources

- GitHub: [Mooler0410/LLMsPracticalGuide](https://github.com/Mooler0410/LLMsPracticalGuide)
- arXiv: [2304.13712](https://arxiv.org/abs/2304.13712) — survey paper
