---
created: 2026-04-28
updated: 2026-04-28
tags: [llm, training]
sources: 0
---

# Fine-tuning

## Definition

Fine-tuning is the process of further training a pre-trained foundation model on a smaller, task-specific dataset to adapt it to a particular domain, style, or task. In the LLM era, fine-tuning methods span full-parameter updates, parameter-efficient approaches (LoRA, QLoRA), and instruction tuning. Fine-tuning sits between prompting (zero-cost adaptation) and training from scratch (highest cost).

## Key Proponents / Critics

- **Practitioners**: Enterprise teams customizing models for domain-specific tasks
- **Infrastructure providers**: [[huggingface-skills|Hugging Face]] (PEFT library), [[unsloth-docs|Unsloth]] (efficient fine-tuning), [[prime-intellect]] (hosted RL/fine-tuning)
- **Key methods**: LoRA (Hu et al.), QLoRA (Dettmers et al.), DoRA
- **Debate**: Fine-tuning vs. RAG vs. prompt engineering — which is the right adaptation strategy?

## Related Concepts

- [[lora]] — low-rank adaptation, the most popular parameter-efficient fine-tuning method
- [[lora|QLoRA]] — quantized LoRA for fine-tuning on consumer GPUs
- [[transfer-learning]] — fine-tuning is the primary form of transfer learning in NLP
- [[supervised-fine-tuning|Instruction Tuning]] — fine-tuning on instruction-following datasets
- [[on-policy-distillation-source|Distillation]] — training smaller models on teacher outputs, related to fine-tuning
- [[comprehensive-rag-ollama-langchain|RAG]] — retrieval-augmented generation as an alternative to fine-tuning for knowledge tasks
- [[train-foundation-model-ruiz|Foundation Model]] — the starting point for fine-tuning

## Sources

- [[unsloth-docs|Unsloth Documentation]] — efficient fine-tuning with 2x speed and 70% less VRAM
- [[how-to-scale-your-model]] — scaling laws implications for fine-tuning vs. pre-training
- [[awesome-llm-post-training|Awesome-LLM-Post-training: Awesome Reasoning LLM Tutorial/Survey/Guide]] — fine-tuning for reasoning
- [[small-language-models|Small Language Models (SLM): A Comprehensive Overview]] — fine-tuning for edge deployment

## Evolution

- **2018–2020**: BERT fine-tuning dominates NLP; full-parameter updates standard
- **2021–2022**: Parameter-efficient fine-tuning (LoRA, adapters, prefix tuning) reduces compute needs
- **2023**: Instruction tuning (FLAN, Alpaca) and chat fine-tuning become standard
- **2024–2025**: QLoRA enables fine-tuning on single consumer GPUs; synthetic data fine-tuning rises
- **2026**: Fine-tuning increasingly automated; agent-driven data generation and evaluation loops
