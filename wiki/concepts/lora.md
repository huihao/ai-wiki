---
created: 2026-04-28
updated: 2026-04-28
tags: [llm, peft, training]
sources: 0
---

# LoRA

## Definition

LoRA (Low-Rank Adaptation) is a parameter-efficient fine-tuning method that freezes pre-trained model weights and injects trainable low-rank decomposition matrices into each layer of the Transformer architecture. Instead of updating billions of parameters, LoRA trains only millions, dramatically reducing compute and memory requirements while achieving comparable performance to full fine-tuning.

## Key Proponents / Critics

- **Inventors**: Edward J. Hu, Yelong Shen, Phillip Wallis, Zeyuan Allen-Zhu, Yuanzhi Li, Shean Wang, Lu Wang, Weizhu Chen (Microsoft, 2021)
- **Key extensions**: QLoRA (quantized LoRA), DoRA (weight-decomposed LoRA), LoRA-FA
- **Adoption**: Hugging Face PEFT library, Unsloth, axolotl, Llama-Factory
- **Limitations**: Struggles with complex multi-task adaptation; rank selection is often heuristic

## Related Concepts

- [[supervised-fine-tuning|Fine-tuning]] — LoRA is the dominant parameter-efficient fine-tuning method
- [[lora|QLoRA]] — 4-bit quantized LoRA for consumer GPU fine-tuning
- [[transfer-learning]] — LoRA enables cheap transfer to new tasks
- [[model-scaling]] — LoRA makes large model adaptation accessible
- [[quantization]] — often combined with LoRA (QLoRA) for memory efficiency

## Sources

- [[unsloth-docs|Unsloth Documentation]] — implements optimized LoRA/QLoRA training
- [[context-kills-vram|Context Kills VRAM: How to Run LLMs on Consumer GPUs]] — discusses LoRA/QLoRA memory savings
- [[how-to-scale-your-model]] — scaling considerations for adapter methods

## Evolution

- **2021**: LoRA paper published; initially niche
- **2023**: Explodes in popularity with open-source LLM fine-tuning (Alpaca, Vicuna)
- **2024**: QLoRA becomes standard for consumer fine-tuning; DoRA and other variants proposed
- **2025–2026**: LoRA merging (SLERP, TIES, DARE) enables combining multiple adapters; agent-driven LoRA experimentation emerges
