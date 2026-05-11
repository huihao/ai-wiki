---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, model-family]
sources: 1
---

# Phi-3

## Summary

Phi-3 is Microsoft's family of small language models (SLMs) offering many LLM capabilities in smaller packages trained on less data. The family includes Phi-3-mini (3.8B parameters), Phi-3-small (7B), and Phi-3-medium (14B), designed for edge computing and cost-effective deployment.

## Key Attributes

- **Type**: Small language model family
- **Developer**: [[microsoft|Microsoft]]
- **Models**: Phi-3-mini (3.8B), Phi-3-small (7B), Phi-3-medium (14B)
- **Performance**: Outperforms models twice its size
- **Training**: High-quality curated data (TinyStories, CodeTextbook)
- **Deployment**: Azure AI, Hugging Face, Ollama, NVIDIA NIM
- **Use Case**: Edge computing, offline applications, cost-sensitive scenarios

## Model Variants

### Phi-3-mini (3.8B)
- Released April 2024
- Outperforms models with ~7B parameters
- Available on Azure AI Model Catalog, Hugging Face, Ollama, NVIDIA NIM
- Capable of language, coding, and math tasks

### Phi-3-small (7B)
- Coming soon to Azure AI Model Catalog
- Higher quality than mini, still cost-effective
- More capacity for complex tasks

### Phi-3-medium (14B)
- Coming soon to Azure AI Model Catalog
- Largest in family, highest quality
- Bridges gap between SLMs and full LLMs

## Related Entities

- [[microsoft|Microsoft]] — Developer and publisher
- [[ronen-eldan|Ronen Eldan]] — Inspired TinyStories approach
- [[sebastien-bubeck|Sebastien Bubeck]] — Led research efforts
- [[huggingface|Hugging Face]] — Platform for model distribution
- [[nvidia|NVIDIA]] — NIM microservice deployment

## Related Concepts

- [[small-language-models|Small Language Models]] — Model category
- [[synthetic-data|Synthetic Data]] — Training approach using LLM-generated content
- [[edge-computing|Edge Computing]] — Deployment target for offline/on-device use
- [[high-quality-training-data|High-Quality Training Data]] — Key innovation

## Sources

- [[tiny-but-mighty-phi-3|Tiny but mighty: The Phi-3 small language models with big potential]]

## Contradictions / Open Questions

- How does Phi-3 compare to other SLM families like Gemma, Mistral?
- What specific benchmark results demonstrate superiority over larger models?
- What domains does Phi-3 struggle with compared to LLMs?
- How well does fine-tuning work for specialized applications?